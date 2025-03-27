---
title: "INFOSHEET: EYE-TRACKING IN EXPERIMENTAL RESEARCH"
author: "KU DigiLabs"
date: "2025"
---

## Introduction
Eye-tracking is a method used to study visual attention, cognitive load, and decision-making by recording eye movements and gaze patterns. It is widely applied in psychology, cognitive science, human-computer interaction (HCI), UX research, and marketing. By analyzing fixations, saccades, and pupil dilation, researchers gain insights into how people process visual information and interact with their environment. The eye-mind hypothesis (Just & Carpenter, 1976) suggests that gaze position reflects cognitive processing in real time, making eye-tracking a powerful tool for studying perception and behavior.

Eye-tracking is particularly useful in interactive studies, allowing researchers to examine how users navigate sources, process text, and measure their overall focus and level of engagements. Whether used for evaluating understanding how people read or studying attention in advertising, eye-tracking provides objective, real-time data on visual behavior.

## Study Design
Eye-tracking experiments can follow various paradigms depending on the research goals. Common paradigms include:
- Fixation-based tasks: Participants focus on specific targets or points. For example, an experiment might ask viewers to hold gaze on a symbol to measure steady fixation ability. These are useful for studying sustained attention or reflexive orienting (Lima et al, 2023).
- Visual search: Subjects search for a target among distractors (e.g. finding an icon on a cluttered screen). Eye movements here reveal search strategies, such as scanning patterns and target-detection saccades.
- Reading: Participants read text passages. Metrics like fixation durations on words and regressions (backward eye movements) are analyzed to infer cognitive processing. In reading tasks, longer and/or more fixations and more regressions often indicate greater processing difficulty (Clifton et al., 2007).
- Free exploration: Viewers freely browse an image or video without a specified goal. This paradigm reveals what naturally attracts attention (e.g. which elements of a webpage draw the eye) and can be useful in design evaluation or scene perception research.
- Decision-making tasks: Participants view options (products, choices in an interface, etc.) and make a decision. Gaze data can uncover patterns like comparisons between alternatives – for instance, alternating fixations between two choices – and gaze transition patterns that precede decisions. Metrics like gaze transition counts and entropy (randomness of gaze patterns) are used; higher gaze entropy (more random scanning) has been associated with greater cognitive load or uncertainty (Glaholt & Reingold, 2011).

Choose stimuli that align with your research paradigm. For example, fluency studies may use paragraphs of text presented in different font sizes, while decision-making experiments might vary the number of options available.
Eye-tracking experiments often use within-subject or repeated measures designs, where each participant is exposed to multiple stimuli. This approach helps gather more data and control for individual differences in eye behavior. However, keep stimulus presentation at a reasonable duration and include breaks in longer sessions to prevent fatigue.
Be careful that, with your choice of stimuli, you control your variables of interest (independent variables, IV) and try account for possible confounds.

Ethical considerations include obtaining informed consent, ensuring participant privacy, and explaining the collection and use of biometric data. Gaze data can reveal unconscious cognitive processes, making transparency in data handling important. Ethical guidelines suggest anonymizing data and storing it securely while allowing participants to withdraw at any stage.

For an in-depth tutorial on study setup, see Kasneci et al. (2024).

## Data Collection
At KU Digilabs, we use Tobii eye-trackers, which come in several configurations: screens with integrated high-resolution trackers, external add-on trackers, and wearable eye-trackers. The best choice depends on your research goals. Reading studies benefit from high-resolution trackers for precise fixation data, general gaze tracking allows for more flexibility, and wearable trackers are ideal for studying interactions in physical environments.

Environmental control is important for obtaining reliable eye-tracking data. Try to keep lighting moderate and consistent.
Tobii systems generally accommodate glasses, though highly reflective lenses may require adjustments. Proper seating, positioning, and maintaining an appropriate distance from the eye tracker enhance accuracy.
Calibration is a necessary step before data collection. Tobii systems use a standard 5- or 9-point calibration where participants follow moving targets to map gaze positions. 

Before starting the study, check that all participants have normal or corrected vision and register individual differences that might affect tracking quality, such as glasses or contact lenses. If you're using different software for the experimental stimuli (e.g., Gorilla.sc) as for the eye-tracking recordings (i.e., Tobii Pro Lab), then keep tabs on both systems' session ids and their mapping. 

## Data Analysis
The primary measures in eye-tracking include:
- Fixation duration: How long a participant fixates on a point.
- Saccades: Rapid movements between fixations.
- Scan paths: Sequences of fixations and saccades across a stimulus.
- Time to first fixation: How quickly attention is directed to a target area.
- Pupil dilation: A physiological index of cognitive effort (van der Wel & van Steenbergen, 2018).
- Blink rate: An indicator of attentional engagement.

Analyzing eye-tracking data requires preprocessing to clean and structure the raw gaze recordings. Before statistical analysis, remove or interpolate blink-related gaps in the data to ensure continuity. Apply fixation and saccade classification algorithms to distinguish between periods of visual attention and rapid eye movements. Smoothing filters help reduce tracking noise while preserving meaningful gaze behavior. If studying specific elements within a stimulus, define Areas of Interest (AOIs) to segment and compare gaze patterns across different regions.

Common statistical methods for eye-tracking studies depend on the research question. Descriptive statistics summarize fixation durations, saccade lengths, and gaze transitions, providing an overview of visual attention patterns. Inferential statistics, such as t-tests and ANOVA, are useful for comparing gaze metrics across conditions. For within-subject designs, repeated-measures ANOVA accounts for individual variability, improving statistical power. If analyzing questionnaire data alongside eye-tracking measures, correlation analysis examines relationships between cognitive variables and gaze behavior. 

Visualizing gaze data enhances interpretability. Heatmaps show where participants focused the most, while scan path diagrams illustrate the sequence of gaze shifts. These visualizations help identify patterns in user attention, reading behavior, or decision-making strategies. ROI analysis quantifies fixation durations and dwell time in different screen areas, making it useful for evaluating UI/UX designs, advertising effectiveness, and visual search efficiency.

Ethical considerations are essential in eye-tracking research. Participants must provide informed consent, understanding how their gaze data will be used and stored. Since gaze recordings contain biometric information, data should be anonymized and securely stored. When analyzing sensitive information, such as emotional responses inferred from pupil dilation, ensure ethical guidelines are followed to protect participant privacy.

## Use Cases

### Use Case 1: Eye-Tracking in Reading Comprehension
Van der Sluis and van den Broek (2022) conducted an eye-tracking study to explore whether readers’ gaze behavior could reveal their subjective experience of comprehensibility and interest while reading news articles.

**Reference**
van der Sluis, F., & van den Broek, E. L. (2022). Feedback beyond accuracy: Using eye-tracking to detect comprehensibility and interest during reading. *Journal of the Association for Information Science and Technology, 74*(1), 3–16. https://doi.org/10.1002/asi.24657

**Method**

Thirty participants read 18 Guardian articles of varying complexity, while their eye movements were recorded using a Tobii SMI RED60 tracker. Each article was followed by subjective ratings of comprehensibility and interest. The resulting eye-tracking data included measures such as fixation duration, saccade amplitude and duration, regressions, pupil size, and coefficient K (focal vs. ambient attention).

**Results**

Linear regression models showed that eye-tracking data could explain 49.9% of the variance in comprehensibility ratings and 30.4% in interest ratings. Comprehensibility was associated with faster and more consistent reading patterns, while interest was reflected in a combination of faster processing and more focused attention. Despite some overlap between the predictors of both constructs, the study found unique gaze features related to each.

**Relevance**

This study demonstrates that eye-tracking can uncover subtle indicators of both cognitive effort (comprehensibility) and motivational engagement (interest).

### Use Case 2: Eye-Tracking in Magazine Design



**Reference**

Šola, H. M., Qureshi, F. H., & Khawaja, S. (2025). AI and eye tracking reveal design elements’ impact on e-magazine reader engagement. Education Sciences, 15(2), 203. https://doi.org/10.3390/educsci15020203


## Additional Resources
- Just, M. A., & Carpenter, P. A. (1976). Eye fixations and cognitive processes. Cognitive Psychology, 8(4), 441–480. https://doi.org/10.1016/0010-0285(76)90015-3 
- Holmqvist, K., Nyström, M., Andersson, R., Dewhurst, R., Jarodzka, H., & van de Weijer, J. (2011). Eye Tracking: A Comprehensive Guide to Methods and Measures. Oxford University Press.
- MacKenzie, I. S. (2024). Human-Computer Interaction: An Empirical Research Perspective (2nd ed.). Morgan Kaufmann.
- van der Wel, P., & van Steenbergen, H. (2018). Pupil dilation as an index of effort in cognitive control tasks: A review. Psychonomic Bulletin & Review, 25(6), 2005–2015. https://doi.org/10.3758/s13423-018-1432-y
- Kasneci, E., Gao, H., Özdel, S., Maquiling, V., Thaqi, E., Lau, C., Rong, Y., Kasneci, G., & Bozkir, E. (2024). Introduction to eye tracking: A hands-on tutorial for students and practitioners. arXiv preprint. https://arxiv.org/abs/2404.15435
- Lima, D. S., & Ventura, D. F. (2023). A review of experimental task design in psychophysical eye tracking research. Frontiers in Human Neuroscience, 17, 1112769. https://doi.org/10.3389/fnhum.2023.1112769​
- Clifton, C., Staub, A., & Rayner, K. (2007). Eye movements in reading words and sentences. In R. P. G. van Gompel, M. H. Fischer, W. S. Murray, & R. L. Hill (Eds.), Eye movements: A window on mind and brain (pp. 341–372). Oxford: Elsevier. https://doi.org/10.1016/B978-008044980-7/50017-3
- Glaholt, M. G., & Reingold, E. M. (2011). Eye movement monitoring as a process tracing methodology in decision making research. Journal of Neuroscience, Psychology, and Economics, 4(2), 125–146. https://doi.org/10.1037/a0020692
- Tobii & EyeLink Software Documentation – Guides for setting up and analyzing eye-tracking experiments https://drive.google.com/file/d/1n3s-nl049pP28CUY9F3YnFO_ssdPwUAT/view?usp=sharing.

