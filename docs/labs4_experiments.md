---
title: "INFOSHEET: EXPERIMENTAL STUDIES IN LAB SETTINGS"
author: "KU DigiLabs"
date: "2025"
---

# INFOSHEET: EXPERIMENTS

## Introduction
Experimental research is a quantitative method designed to establish causal relationships by systematically manipulating one or more independent variables while controlling extraneous factors. Experiments are widely used in HCI, psychology, and behavioral sciences, where researchers investigate the effects of interventions on human behavior.

Experiments differ from observational or correlational studies in that they allow researchers to control variables, randomly assign participants, and measure cause-effect relationships rather than just associations. By carefully designing the experimental conditions, researchers can minimize confounding variables and maximize internal validity, ensuring that observed effects are due to the experimental manipulation rather than extraneous influences.

## Study Design
n any experiment, research begins with a research question (RQ), which is then translated into a hypothesis: a testable statement predicting the relationship between an independent variable (IV) and a dependent variable (DV). According to MacKenzie (2013, Ch. 6), hypotheses should be specific, falsifiable, and grounded in prior research to ensure meaningful experimental outcomes.

Once the hypothesis is formulated, the experimental design must be structured to test it effectively. This involves selecting an appropriate between-subjects or within-subjects design, ensuring random assignment to conditions, and minimizing confounding variables that could distort results. Additionally, a well-designed experiment requires stimulus creation: the materials, tasks, or conditions that participants engage with, designed to manipulate the IV while keeping all other factors constant.

In within-subjects designs, where each participant experiences multiple conditions, order effects can bias results. To prevent this, counterbalancing techniques such as Latin Square designs ensure that each condition appears in different positions across participants, reducing learning or fatigue effects. For example, in our keyboard study, participants completed two different counterbalanced tasks, ensuring that the order of tasks did not influence the results. Between-subjects designs, on the other hand, avoid order effects by exposing participants to only one condition, though they require larger sample sizes to achieve comparable statistical power.

A key challenge in experimental research is avoiding demand characteristics, where participants guess the study's purpose and adjust their behavior accordingly. To mitigate this, researchers often use cover stories, framing the study in a way that does not reveal the true objective. After the experiment, participants can be asked what they thought the purpose of the study was, helping researchers assess whether the cover story was effective.
These considerations (demand characteristics, order/learning effects) benefit the internal validity and reliability of your findings. 

At KU DigiLabs, students can conduct experiments using Gorilla.sc, a platform for designing online and lab-based experiments with randomization and within-subjects designs.
In order to get started there, ask your instructors to create a project for you and assign 'participant tokens' to it.

## Participant Sampling and Data Collection
The selection and number of participants directly affect the validity and generalizability of results. 
Bryman (2012, Ch. 3) highlights random sampling as ideal approach for esuring a representative participant pool. However, in many experimental settings, random sampling is often impractical due to constraints on participant availability. Instead, researchers frequently rely on convenience sampling, recruiting participants from accessible populations such as university students or online platforms.

Data collection methods depend on the nature of the experiment. Behavioral measures, such as task completion time, error rates, and response accuracy, provide objective performance data that can be analyzed statistically. In addition, self-reported measures help assess participant perceptions, cognitive load, or subjective experience, as well as relevant traits (e.g., trait curiosity, cognitive abilities). Be sure to use existing, validated questionnaires in experiments.

For deeper insights into physiological responses, researchers may also employ biometric data collection methods, such as eye-tracking, EEG, or skin conductance analysis, which capture real-time cognitive and emotional engagement.

Even though Gorilla.sc supports online experiments, we recommend you run your experiment *offline*, in our lab facilities. Online experiments add a lot of noise to the data, as each participants will be in a different, uncontrolled environment with dito distractions. 
Also, set a time limit for participants to complete your experiment, so they will be removed in case they quit before finishing the study.

## Data Analysis
Data analysis in experimental research depends on the study design and type of data collected. For between-subjects designs, t-tests compare two groups, while ANOVA tests for differences across multiple conditions. Two-way ANOVA examines interactions between independent variables. For within-subjects designs, repeated measures ANOVA accounts for individual variability across conditions, improving statistical power (see Stats2).

<!-- todo: export data from Gorilla -->
 
Before running inferential tests, first explore the data using descriptive statistics (means, standard deviations) and visualizations (histograms, boxplots, scatterplots) to check for patterns, outliers, and normality. Correlation analysis helps identify relationships between variables and detect multicollinearity in regression models (see Stats1).

Comprehensive models, including regression (Stats3) and ANOVA (Stats2), can examine multiple predictors together. 
They can include order effects and individual traits as covariates, 
allowing to check for their influence on the results and to present a summary of your findings.
Be furthermore sure to also use Cronbach’s Alpha to check the internal consistency of questionnaires.

## Example Study: Investigating Unconscious Semantic Priming

### Study Overview

Anthony Marcel's seminal 1983 study explored how subliminal (masked) semantic priming influences word recognition using the lexical decision task (Rastle, 2007). This research provided early evidence that unconsciously presented words can prime semantically related targets, affecting subsequent processing without conscious awareness.

### Methodology

Marcel employed a masked priming paradigm where participants performed lexical decision tasks: Judging whether a string of letters is a word or a non-word. The experimental setup included:

- Prime Presentation: A prime word (e.g., "doctor") was briefly displayed and immediately followed by a masking stimulus (e.g., a random letter string), rendering the prime unconscious to the participant.

- Target Presentation: After the mask, a target word appeared, which was either semantically related (e.g., "nurse") or unrelated (e.g., "butter") to the prime.

- Task: Participants decided as quickly and accurately as possible whether the target was a real word.

The stimulus onset asynchrony (SOA)—the time between the onset of the prime and the target—was manipulated to assess the temporal dynamics of priming effects.

### Key Findings

Marcel's experiments revealed that:

- Faster Response Times: Participants responded more quickly to targets that were semantically related to the masked primes compared to unrelated targets.

- Unconscious Processing: Despite being unaware of the prime's presence, the semantic relationship influenced processing speed, indicating that semantic activation can occur without conscious awareness.

- Temporal Dynamics: The priming effect was sensitive to the SOA, with certain intervals showing more pronounced effects, shedding light on the timing of unconscious semantic processing.

### Relevance

Marcel’s demonstrated that semantic activation can occur without conscious awareness. This challenges traditional theories of consciousness and cognition, showing that information can be processed at a deeper level than previously assumed. The masked priming paradigm introduced by Marcel has become a standard method for studying automatic processing, influencing research in language processing, subliminal perception, and attention. 

### References:

Marcel, A. J. (1983). Conscious and Unconscious Perception: Experiments on Visual Masking and Word Recognition. *Cognitive Psychology, 15*(2), 197–237. [DOI: 10.1016/0010-0285(83)90009-9](https://doi.org/10.1016/0010-0285(83)90009-9)

Rastle, K. (2007). Visual word recognition. Oxford University Press. [DOI: 10.1093/oxfordhb/9780198568971.013.0005](doi:10.1093/oxfordhb/9780198568971.013.0005)

## Example Study: The Influence of Textual Complexity on Interest

Van der Sluis et al. (2014) investigated how textual complexity influences interest. The study builds on appraisal theories of interest, which suggest that interest occurs when information is both novel and complex yet still understandable.

### Methodology

Participants were presented with news articles that varied in textual complexity, categorized into low, medium, and high complexity levels. The complexity was determined using a computational model based on psycholinguistic theories of processing difficulty. Participants rated each article for interest, perceived complexity, and comprehensibility after reading. The study employed a within-subjects design, meaning each participant read multiple articles. The order of presentation was randomized to prevent order effects. 

### Key Findings

- This study was the first to confirm Berlyne’s collative variables for semantically rich, textual stimuli, showing that complexity can enhance interest.
- It confirmed the moderating effect of comprehensibility, showing the existence of a `sweet spot' for interest.
- Computational models can be used to identify and optimize this balance between challenge and engagement in textual materials.

### Relevance
This study demonstrates how stimulus creation, randomization, and hypothesis testing can be used to investigate cognitive engagement. It integrates a controlled experiment, within-subjects design, and self-report questionnaires into a Structural Equation Model (SEM) for comprehensive analysis.

### Reference:
Van der Sluis, F., van den Broek, E. L., Glassey, R. J., van Dijk, E. M. A. G., & de Jong, F. M. G. (2014). When complexity becomes interesting: Influencing interest using textual complexity in news articles. Journal of the Association for Information Science and Technology.

## Additional Resources
- Bryman, A. (2012). *Social Research Methods* (4th ed.). Oxford University Press. (Chapters 3, 10, 11 – Experimental Research Design)
- MacKenzie, I. S. (2013). *Designing HCI Experiments*. Elsevier. (Chapter 5 – Experimental Research in HCI)
- Gorilla.sc – Experimental design platform (DigiLabs subscription).
- JASP / RStudio / SPSS – Statistical software for data analysis.
