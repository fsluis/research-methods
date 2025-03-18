---
title: "INFOSHEET: QUESTIONNAIRES"
author: "Frans van der Sluis and Mara Gunther"
date: "2025"
output: 
  html_document:
    css: labs_styles.css
---

# INFOSHEET: QUESTIONNAIRES

## Introduction
Surveys and questionnaires are widely used quantitative research methods for collecting structured data from a sample of participants. They typically involve asking a sample of people a set of prepared questions in order to gather data about their opinions and behavior. While the terms are often used interchangeably, a questionnaire refers specifically to the set of written questions, while a survey encompasses the broader process of data collection, including sampling and analysis.

Compared to qualitative methods like interviews or focus groups, questionnaires provide a structured and efficient way to collect data from large samples while ensuring anonymity. They are ideal for statistical analysis, allowing researchers to identify patterns, trends, and relationships in responses. However, they do not allow for ad-hoc follow-up questions or clarification. This makes questionnaires less suitable for exploring complex behaviors and motivations.

---

## Using Questionnaires

While creating your questionnaire, be aware of best practices in creating questionnaires:

- Define Constructs Clearly. <br>Think in terms of the constructs you want to measure and how best to assess them. A construct is an abstract concept or characteristic such as attitudes, beliefs, emotions, knowledge, or behaviors. Since constructs cannot be directly observed, they should be measured through multiple related questions. See also ‘measurement validity’ and ‘construct validity’ in Bryman (Chapter 3).
- Use Multiple Items per Construct. <br>To improve measurement accuracy, include at least three or more questions per construct. This ensures that you capture different dimensions of the concept and enhance construct validity.
- Consider Validated Questionnaires. <br>Whenever possible, build on existing questionnaires validated through other studies, as they have been tested for reliability and validity. If no suitable questionnaire exists, follow the best practices in question design outlined in Bryman (Chapter 11).
- Include Both Closed and Open Questions. <br>Closed-ended questions (e.g., Likert scales, semantic differentials, multiple-choice) allow for quantitative analysis and statistical comparisons. Open-ended questions provide richer qualitative insights, capturing nuances that structured responses may overlook.
- Combine Positive & Negative Wording. <br>Frame some questions positively (e.g., “are you happy?”), others negatively (e.g., “are you sad?”).
- Formulate Research Questions in Advance. <br>Define the relationships you expect to find between constructs before designing the questionnaire. This helps ensure that your questionnaire structure aligns with your research goals and supports meaningful relational analyses.
- Consider pre-testing your questionnaire.<br> Pre-testing surveys can help identify issues with response interpretation before full deployment.

Consult Bryman for more information on best practices.



At KU DigiLabs, there are several tools available for designing and distributing questionnaires:

| Platform        | Features                                                                                                                                                            |
|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **SurveyXact**  | Institutional access, supports questionnaires, data collection and analysis, but limited support for survey logic.                                                  |
| **Gorilla**     | Dedicated questionnaire feature as well as advanced features for randomization, vignettes, and within-subjects designs, making it useful for advanced survey logic. |
                                                         |
| **Open-Source** | [SurveyJS](https://surveyjs.io/): Advanced but requires programming.                                                                                                |

<!---            | **Qualtrics** | Not subscribed, but widely used in research.-->                                                               

---
## Participant Sampling and Data Collection 
A survey generally needs a high number of participants to be useful. Alternatively, questionnaires can also be used in a within-subjects design where each participant answers the same questions but for different stimuli. An example of this is given in the case paper (see below), which used vignettes as stimuli each followed questions (i.e., repeated measurements). In this way, one can collect a large amount of data from a smaller number of participants. Consider both the feasibility of attracting a high number of participants and the possibility of a within-subjects design for your project.

When determining sample size and composition, it is essential to balance representativeness and feasibility (Bryman, 2012, Ch. 8). Probability sampling methods—such as simple random sampling or stratified sampling—ensure generalizability, while non-probability sampling techniques (e.g., convenience or quota sampling) can be practical but introduce limitations in external validity. In the case of within-subjects designs, careful counterbalancing is necessary to control for order effects and participant fatigue, ensuring reliable measurements (Bryman, 2012, Ch. 17).

For more information, consult the respective chapters in Bryman on sampling (ch. 8) and questionnaires (ch. 10).

---

## Data Analysis
The collected data from your respondents can then be exported directly from your survey software for further data analysis in RStudio, JASP or SPSS. Here, you will first need to clean and tidy your data before diving into the analysis. Surveys are usually used for both descriptive and relational purposes. Use descriptive statistics to describe your sample’s characteristics or visualize how people think about certain topics (see Stats1 exercises). Use relational statistics to describe how constructs measured correlate each other, often asking questions about how much X explains Y (see Stats3 exercises).

In addition to the statistics we practised during our stats sessions, there are few other relevant statistics to consider:
- Cronbach’s Alpha measures internal reliability, assessing how consistently a set of items (questions) measure the same construct. It ranges from 0 to 1, with higher values indicating better reliability. Pay special attention to the "alpha if item dropped" statistic, which helps identify weak items.
- Factor Analysis helps uncover or confirm the structure of your questionnaire: Exploratory Factor Analysis (EFA) identifies how items naturally group into factors, revealing whether they align with intended constructs. Confirmatory Factor Analysis (CFA) tests whether a predefined factor structure fits the data, validating whether your item groupings are theoretically sound.
- Combine items (questions) into a single scale by taking the mean over the items. Use the resulting scales to test your hypotheses.


---

## Example Use Case: The Intention-Search-Behavior Gap

This study examines how consumers’ ethical intentions translate into actual search behavior when purchasing products. Many consumers express a desire to make socially responsible choices, yet their final purchases often do not reflect these values. To understand this gap, the study surveyed 286 participants about a recent online purchase, tracking their search behavior across ethical considerations such as sustainability, labor rights, and corporate responsibility.

### Reference
Azzopardi, L., & van der Sluis, F. (2024). Seeking Socially Responsible Consumers: Exploring the Intention-“Search”-Behaviour Gap. *Proceedings of the 2024 ACM SIGIR Conference on Human Information Interaction and Retrieval (CHIIR ’24), Sheffield, UK*.  
🔗 [DOI: 10.1145/3627508.3638324](https://doi.org/10.1145/3627508.3638324)

### Methodology

Using a mixed-methods approach, the study combined structured survey questions with open-ended responses. Participants described a recent purchase, rated the importance of various ethical aspects, and indicated whether they actively searched for such information. Five ethical aspects were randomly assigned per participant. Data analysis included descriptive statistics, exploratory factor analysis (EFA), and regression models to examine how ethical inclinations (measured via the EMCB scale) related to search behavior. Thematic coding was applied to qualitative responses to identify common barriers to ethical searching.

### Key Findings

The study revealed a progressive decline from ethical intention to actual search behavior. Even ethically minded consumers did not always search for responsible aspects, often citing lack of awareness, difficulty finding information, or effort outweighing perceived benefits. Factor analysis identified three consumer groups: ethically engaged consumers, indifferent consumers, and mixed-motivation consumers who considered ethics inconsistently.

---

## **Additional Resources**
- **Bryman, A.** (2012). *Social Research Methods* (4th ed.). Oxford University Press. (Chapters **10, 11**) – Covers survey design and question formulation.  
- **Gorilla.sc** – An online experimental platform for survey-based research, offering **randomization, vignettes, and within-subjects designs**. Learn more: [https://gorilla.sc](https://gorilla.sc)  
- **SurveyXact** – Institutional access for designing and distributing basic surveys. See: [SurveyXact](https://wayf.survey-xact.dk) and their [video guides](https://rambollxact.com/videoguides).

