year = '2024'

# Load necessary libraries
library(tidyverse)  # includes dplyr, tidyr, readr, etc.
library(stringr)
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
    Trial_order = as.integer(str_extract(`Screen Name`, "\\d+"))
  )


# ----------------------------
# Step 4. Aggregate letter-level reaction times into trial-level measures
# ----------------------------
# Each trial (i.e. one sentence typed) has 43 letter-level reaction time rows.
# We group by ParticipantID, Screen Name (and the extracted variables) and sum the reaction times.
aggregated_df <- key_presses_df %>%
  group_by(`Participant Private ID`, `Screen Name`, Keyboard, Trial_order, `randomiser-8lzr`) %>%
  summarize(total_reaction_time = sum(`Reaction Time`, na.rm = TRUE), .groups = "drop")



# ----------------------------
# Step 5. Compute Words Per Minute (WPM) and rename condition
# ----------------------------
# Using the formula: WPM = 516000 / total_Reaction_time
aggregated_df <- aggregated_df %>%
  mutate(
    WPM = (43/5) / ((total_reaction_time/1000)/60), #516000 / total_Reaction_time,
    Condition = `randomiser-8lzr`  # Rename for clarity
  ) 

# Step 5. Read in the questionnaire data.
quest_df <- read_csv("gorilla_data_2024/data_exp_31463-v6_questionnaire-fopf.csv")

library(dplyr)

# There's some old string-answers in this variable
quest_df <- quest_df %>%
  mutate(ComputerUseHours = case_when(
    ComputerUseHours == "A few"         ~ "2",    # approximate value for "A few"
    ComputerUseHours == "between 4-8"     ~ "6",    # average of 4 and 8
    ComputerUseHours == "1-4"             ~ "2.5",  # midpoint of 1 and 4
    ComputerUseHours == "5-6"             ~ "5.5",  # midpoint of 5 and 6
    TRUE                                               ~ ComputerUseHours  # leave other values unchanged
  )) %>%
  mutate(ComputerUseHours = as.numeric(ComputerUseHours))

quest_df <- quest_df %>%
  mutate(numberMessages = case_when(
    numberMessages == "100-150"         ~ "125",
    numberMessages == "20-40"     ~ "30",
    numberMessages == "~100"     ~ "100",
    numberMessages == "A lot"     ~ "100",
    numberMessages == "approx. 100"     ~ "100",
    numberMessages == "-"             ~ NA,
    TRUE                                               ~ numberMessages  # leave other values unchanged
  )) %>%
  mutate(numberMessages = as.numeric(numberMessages))


# Step 6. Merge the questionnaire data with the long-format task data.
# This will duplicate the questionnaire data for every trial row.
final_df <- left_join(aggregated_df, quest_df, by = "Participant Private ID")

final_df_clean <- final_df %>%
  rename(
    Group = Condition,
    ParticipantID = `Participant Private ID`,
    Sex = sex,
    Age = age,
    English_as_first_language = `language`,
    Done_before = DoneBefore,
    Device = device,
    Hours_of_computer_use_per_day = ComputerUseHours,
    Use_mobile_phone = UseSmartPhone,
    Send_text_on_phone = sendText,
    Messages_per_day = numberMessages,
    Reaction_time = total_reaction_time
  ) %>%
  select(
    ParticipantID, Group, Keyboard, Trial_order, Reaction_time, WPM, Sex, Age, English_as_first_language, Done_before, Device,
    Hours_of_computer_use_per_day, Use_mobile_phone, Send_text_on_phone,
    Messages_per_day
  ) %>%
  filter(!is.na(Keyboard))

# Preview the cleaned data frame
print(head(final_df_clean))

library(tidyr)
library(dplyr)

keyboard_data_wide <- final_df_clean %>%
  filter(!is.na(Keyboard)) %>%
  pivot_wider(
    # Use all columns except the ones you want to pivot as id_cols.
    id_cols = c(ParticipantID, Group, Trial_order, Sex, Age, English_as_first_language,
                Done_before, Device, Hours_of_computer_use_per_day, Use_mobile_phone,
                Send_text_on_phone, Messages_per_day),
    names_from = Keyboard,
    values_from = c(WPM, Reaction_time),
    names_glue = "{Keyboard}_{.value}"
  )

# Preview the wide-format data frame
head(keyboard_data_wide)


# Step 7. Save the cleaned data to a new CSV file.
write_csv(final_df_clean, glue::glue('keyboard_data_R_{year}.csv'))


# EXPORT TO EXCEL / SPSS WIDE FORMAT

wide_trial = final_df_clean %>%
  select(ParticipantID, Keyboard, Trial_order, WPM)  %>%
  filter(!is.na(Keyboard)) %>%
  pivot_wider(names_from = c(Keyboard, Trial_order), 
              values_from = WPM,
              names_sep = "_") 

participant_info <- final_df_clean %>%
  select(ParticipantID, Group, Sex, Age, English_as_first_language, Done_before, Device,
         Hours_of_computer_use_per_day, Use_mobile_phone, Send_text_on_phone, Messages_per_day) %>%
  distinct()



# Step C: Join the participant info with the wide-format trial data.
wide_df <- left_join(wide_trial, participant_info, by = "ParticipantID")


# Preview the wide-format data frame
print(head(wide_df))

# Step D: Save the wide-format data to an Excel file

library(openxlsx)
write.xlsx(wide_df, glue::glue('keyboard_experiment_spss_{year}.xlsx'))
write.xlsx(participant_info, glue::glue('questionnaire_data_R_{year}.xlsx'))
