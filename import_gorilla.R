year = '2024'

# Load necessary libraries
library(tidyverse)  # includes dplyr, tidyr, readr, etc.
library(stringr)
library(openxlsx)
#setwd("~/work/Methods")

# Step 1. Read in the task CSV files (all four files)
# Adjust the path and file names as necessary.
all_files <- list.files(path = glue::glue('gorilla_data_{year}/'),
                         pattern = "data_exp_31463-v6_task", 
                         full.names = TRUE)
# Read each file into a list of data frames and combine them:

# Get file information and filter for files > 2MB (2*1024*1024 bytes)
task_files <- all_files[file.info(all_files)$size > 2 * 1024 * 1024]
task_list <- lapply(task_files, read_csv)
task_df <- bind_rows(task_list)


# ----------------------------
# Step 2. Filter for relevant keyboard tasks
# ----------------------------
# Keep only rows where 'Task Name' is "KeyboardA" or "KeyboardB"
key_presses_df = task_df %>% 
  filter(`Task Name` %in% c("KeyboardA", "KeyboardB")) %>%
  mutate(
    # Determine keyboard type based on the string content
    Keyboard = if_else(str_detect(`Screen Name`, "qwerty"), "QWERTY",
                       if_else(str_detect(`Screen Name`, "opti"), "OPTI", NA_character_)),
    # Extract the trial order number from 'Screen Name'
    TrialOrder = as.integer(str_extract(`Screen Name`, "\\d+"))
  )


# ----------------------------
# Step 4. Aggregate letter-level reaction times into trial-level measures
# ----------------------------
# Each trial (i.e. one sentence typed) has 43 letter-level reaction time rows.
# We group by ParticipantID, Screen Name (and the extracted variables) and sum the reaction times.
aggregated_df <- key_presses_df %>%
  group_by(`Participant Private ID`, `Screen Name`, Keyboard, TrialOrder, `randomiser-8lzr`) %>%
  summarize(total_reaction_time = sum(`Reaction Time`, na.rm = TRUE), .groups = "drop")



# ----------------------------
# Step 5. Compute Words Per Minute (WPM) and rename condition
# ----------------------------
# Using the formula: WPM = 516000 / total_reaction_time
aggregated_df <- aggregated_df %>%
  mutate(
    WPM = (43/5) / ((total_reaction_time/1000)/60), #516000 / total_reaction_time,
    Condition = `randomiser-8lzr`  # Rename for clarity
  ) 

# Step 5. Read in the questionnaire data.
quest_df <- read_csv("gorilla_data_2024/data_exp_31463-v6_questionnaire-fopf.csv")

# Step 6. Merge the questionnaire data with the long-format task data.
# This will duplicate the questionnaire data for every trial row.
final_df <- left_join(aggregated_df, quest_df, by = "Participant Private ID")

final_df_clean <- final_df %>%
  rename(
    group = Condition,
    ParticipantID = `Participant Private ID`,
    Sex = sex,
    Age = age,
    English_as_first_language = `language`,
    Done_Before = DoneBefore,
    Device = device,
    Hours_of_Computer_Use_Per_Day = ComputerUseHours,
    Use_Mobile_phone = UseSmartPhone,
    Send_text_on_phone = sendText,
    Messages_per_day = numberMessages,
    Reaction_Time = total_reaction_time
  ) %>%
  select(
    ParticipantID, group, Keyboard, TrialOrder, Reaction_Time, WPM, Sex, Age, English_as_first_language, Done_Before, Device,
    Hours_of_Computer_Use_Per_Day, Use_Mobile_phone, Send_text_on_phone,
    Messages_per_day
  )

# Preview the cleaned data frame
print(head(final_df_clean))


# Step 7. Save the cleaned data to a new CSV file.
write_csv(final_df_clean, glue::glue('keyboard_data_R_{year}.csv'))


# EXPORT TO EXCEL / SPSS WIDE FORMAT

wide_trial = final_df_clean %>%
  select(ParticipantID, Keyboard, TrialOrder, WPM)  %>%
  filter(!is.na(Keyboard)) %>%
  pivot_wider(names_from = c(Keyboard, TrialOrder), 
              values_from = WPM,
              names_sep = "_") 

participant_info <- final_df_clean %>%
  select(ParticipantID, group, Sex, Age, English_as_first_language, Done_Before, Device,
         Hours_of_Computer_Use_Per_Day, Use_Mobile_phone, Send_text_on_phone, Messages_per_day) %>%
  distinct()



# Step C: Join the participant info with the wide-format trial data.
wide_df <- left_join(wide_trial, participant_info, by = "ParticipantID")


# Preview the wide-format data frame
print(head(wide_df))

# Step D: Save the wide-format data to an Excel file

write.xlsx(wide_df, glue::glue('keyboard_experiment_spss_{year}.xlsx'))
write.xlsx(participant_info, glue::glue('questionnaire_data_R_{year}.xlsx'))
