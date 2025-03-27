---
title: "INFOSHEET: Emotion Recognition in Lab Studies"
author: "KU DigiLabs"
date: "2025"
---

# Emotion Recognition in Lab Studies

## Introduction
Emotion recognition in laboratory research involves detecting and interpreting participants' emotional states through observable signals like facial expressions and physiological responses. This approach plays a growing role in fields such as psychology, human-computer interaction (HCI), affective computing, and communication research. In controlled lab environments, researchers can collect data on participants' reactions to stimuli such as images, video clips, tasks, or social interactions, using tools like facial analysis software and biosignal sensors.

Theoretically, emotion is often approached through two main models: *discrete emotions* and *dimensional models*. Discrete theories identify a set of basic emotions that can be expressed and recognized universally, such as joy, anger, fear, sadness, and disgust. Dimensional models, such as Russell's circumplex model, conceptualize emotions along continuous scales of valence (pleasant to unpleasant) and arousal (calm to excited). In practice, emotion recognition studies often rely on the valence–arousal model to quantify and compare affective responses.

In lab-based setups, researchers collect a combination of data: self-reported emotions, facial expressions, and physiological responses. Through collecting and contrasting multiple sources of emotion data, they can *triangulate* their findings, producing reliable and interpretable results.

## Study Design
A successful emotion recognition study begins with a clear research question and a corresponding theoretical framework. Students must decide whether they aim to investigate specific discrete emotions (e.g., fear vs. disgust) or work within a dimensional model of affect. This decision will influence the choice of stimuli, measurement tools, and analysis techniques.

An important early design choice is whether participants will experience *passive* or *active* stimuli. Passive designs involve participants observing emotional content, such as videos, images, or music, without responding. Active designs involve participation, such as performing tasks or making decisions under emotionally charged conditions. Passive designs offer more control and are recommended for early-stage or student projects.

Design your study such that you measure participants' baseline in the beginning.
Before presenting any emotional stimuli, researchers should record a period of neutral or resting data (e.g., two minutes of calm breathing) to establish each participant’s physiological baseline. This enables meaningful comparison of later responses. A commonly used baseline is an aquatic video (Piferi, 2000).

Another key consideration is task structure. Stimuli should be presented in a way that avoids participant fatigue or emotional habituation. Use randomized or counterbalanced orders where possible, especially when comparing emotional conditions. Include brief breaks between stimulus blocks to maintain participant engagement and ensure consistent data quality.

Include self-report measures in your study design as well. Participants should be asked to rate their emotions after each trial using standardized tools such as the Self-Assessment Manikin (SAM) for valence and arousal (Bradley, 1994), or short-form Positive and Negative Affect Schedule (PANAS) for general affect (Watson, 1988). These ratings complement physiological and facial data and help validate the emotional impact of your stimuli.


## Data Sampling and Collection
For small-scale student projects, it is appropriate to use convenience sampling. For example, by recruiting classmates or friends. Be transparent about your sampling method and acknowledge its limitations when reporting your results.
Also, keep it simple. At KU DigiLabs, students have access to the Plux biosignals toolkit. This kit includes two easy-to-use phyiosiological sensors: EDA (electrodermal activity for skin conductance measures) and BVP (Blood Volume Pulse for heart rate (ECG) measures). 
These can be connected to the OpenSignals software for synchronized, multi-channel recording.

Facial expression analysis can be carried out using webcam recordings and software tools such as FaceReader (commercial) or OpenFace (open-source). The goal is to detect subtle changes in facial muscle activity that correspond to emotion expressions. Video quality, lighting, and participant positioning are critical for accurate detection. Instruct participants to face the camera directly, keep still during recording, and avoid occlusions like hair or glasses.

Physiological data offers complementary insights. EDA reflects general emotional arousal via skin conductance. ECG and heart rate data provide insight into sympathetic nervous system activity and stress responses.

To synchronize these data streams with stimulus presentation, students should use either software triggers (e.g., from PsychoPy or E-Prime) or hardware triggers (e.g., light or sound markers visible in video and biosignal recordings). Always pilot the synchronization setup to ensure all data streams are aligned.

For an overview of different signals and tips about their measurement, consult Van den Broek (2009).

## Data Analysis
At KU DigiLabs, we use OpenSignals for data recording and export. OpenSignals exports time-stamped data files for each participant-session. The exported files contain sensor readings, for example, EDA (Electrodermal Activity) or BVP/ECG (Blood Volume Pulse/Electrocardiogram) values with timestamps. After recording, this data can be exported and imported into R for further analysis. In R, students can compute descriptive statistics, visualize time-series responses, or perform relational analyses (e.g., correlating peak EDA values with self-reported arousal).

The following instructions are needed per signal:
- EDA can be analuyzed using the 'Electrodermal Activity (EDA) Events Add-on'. The add-on allows for the automatic detection and analysis of EDA events. It provides features such as EDR latency, amplitude, rise time, and recovery time. With this add-on, you can see how participants' arousal changed after stimulus onset, for example showing an emotional video.
- For ECG, it is common to detect R-peaks to compute heart rate and derive heart rate variability (HRV). Typically HRV is associated with emotional valence.   
<!-- Todo: Do we have the ECG addon from Plux? -->
- Facial data from FaceReader or OpenFace typically comes as time series of emotion probabilities or facial action units. Segment this data by stimulus onset and compute averages or peak values for each trial. 

Once data is collected, you should compensate for individual variability through baseline correction. 
For example, a baseline value can be measured as the average EDA during a minute of restful watching of an aquatic video at the start. A trial-based EDA value might then be expressed as “peak increase from baseline” within a 10-second window after stimulus onset. 

Align these with self-report ratings and physiological data to create a complete dataset per trial.
Once features are extracted, create a structured dataset where each row represents a trial, and columns such as participant ID, stimulus condition, valence/arousal ratings, EDA peak, HR, EMG activation, and facial emotion scores. 

Statistical analysis can include:
- Repeated-measures ANOVAs to compare emotion responses across conditions
- Correlation analysis between physiological signals and self-reports
- Mixed-effects models to account for individual differences and trial-level variation

Avoid over-testing and report both p-values and effect sizes. Visualizations (e.g., line graphs, bar plots, heatmaps) can make results more interpretable and should accompany any statistical output.

## Additional Resources
- van den Broek, E., Janssen, J. H., Westerink, J. H. D. M., & Healey, J. A. (2009). Prerequisites for affective signal processing (ASP). In P. Encarnacao, & A. Veloso (Eds.), International conference on bio-inspired systems and signal processing, biosignals 2009 (pp. 426-433). INSTICC PRESS. 
- OpenSignals: Plux’s software for biosignal acquisition and synchronization. [https://biosignalsplux.com/software](https://biosignalsplux.com/software)
- OpenFace: Open-source toolkit for facial expression analysis. [https://github.com/TadasBaltrusaitis/OpenFace)
- BioSPPy & pyEDA: Python libraries for biosignal preprocessing and feature extraction. [https://github.com/PIA-Group/BioSPPy](https://github.com/PIA-Group/BioSPPy)
- Bradley, M. M., & Lang, P. J. (1994). Measuring emotion: The Self-Assessment Manikin and the Semantic Differential. Journal of Behavior Therapy and Experimental Psychiatry, 25(1), 49–59. https://doi.org/10.1016/0005-7916(94)90063-9
- Watson, D., Clark, L. A., & Tellegen, A. (1988). Development and validation of brief measures of positive and negative affect: The PANAS scales. Journal of Personality and Social Psychology, 54(6), 1063–1070. https://doi.org/10.1037/0022-3514.54.6.1063
- Piferi, R. L., Kline, K. A., Younger, J., & Lawler, K. A. (2000). An alternative approach for achieving cardiovascular baseline: Viewing an aquatic video. International Journal of Psychophysiology, 37(2), 207–217. https://doi.org/10.1016/S0167-8760(00)00102-1

## Example Study 1: Film Clip Validation for Emotion Induction

### Reference
Hewig, J., Hagemann, D., Seifert, J., Gollwitzer, M., Naumann, E., & Bartussek, D. (2005). A revised film set for the induction of basic emotions. *Cognition and Emotion, 19*(7), 1095–1110. https://doi.org/10.1080/02699930541000084

### Method
Thirty-eight university students participated in a group-based viewing session, where they were shown 20 short film clips (including neutral, and clips designed to elicit anger, fear, sadness, disgust, or amusement). After each clip, participants filled in a 21-item self-report inventory measuring emotional responses on both monopolar (e.g., “rage”, “fear”) and bipolar (e.g., valence, intensity) scales. Film clips were silent to avoid confounding effects of sound.

The primary goal was to evaluate the ability of each film to induce its intended emotion, and to develop a set of validated clips with comparable neutral stimuli drawn from feature films.

### Findings
- Cluster analysis confirmed that clips grouped clearly into six categories: five discrete emotions and one neutral group.
- Most clips elicited their target emotion significantly more than any non-target emotion (e.g., Pink Flamingos elicited strong “disgust”; When Harry Met Sally elicited “amusement”).
- The four neutral clips were perceived as low-intensity and emotionally neutral, although they elicited higher boredom than emotional clips.
- Some overlap between sadness and anger or empathy was noted, but generally, each clip was distinct enough for controlled emotion induction.

### Relevance

This study provides a validated set of film clips for emotion induction with clear self-report evidence of affective impact. It also shows how to setup an emotional evaluation of film clips, including self-report measures and physiological responses.

---

## Example Study 2: Continuous Annotation of Emotions with Physiological Signals

This study aimed to create a comprehensive dataset that includes continuous self-annotations of emotional experiences alongside synchronized physiological signals.

### Reference:

Sharma, K., Castellini, C., van den Broek, E. L., Albu-Schaeffer, A., & Schwenker, F. (2018). A dataset of continuous affect annotations and physiological signals for emotion analysis. Nature Scientific Data 6, 196 (2019). https://doi.org/10.1038/s41597-019-0209-0

### Methodology:

In this study, 30 participants (equally split by gender) were asked to watch a series of emotion-eliciting video clips. While viewing, they used a joystick interface to continuously report their emotional experience along the valence and arousal dimensions. This allowed researchers to capture real-time affective responses rather than retrospective summaries. Simultaneously, the researchers collected a rich set of physiological signals from each participant sampled at 1000 Hz:
  - Electrocardiogram (ECG)
  - Blood Volume Pulse (BVP)
  - Electromyography (EMG) from three muscle sites
  - Galvanic Skin Response (GSR)
  - Respiration
  - Skin temperature

### Findings:

The dataset provides a rich resource for emotion analysis, capturing both self-reported emotional experiences and corresponding physiological responses. The validity of emotion induction was supported by the alignment between participants' annotations and physiological data.

### Relevance:

This study offers a valuable dataset for researchers interested in developing and validating emotion recognition models. It shows how a different evaluation method, by self-annotation, combined with high-quality physiological recordings, enables the exploration of the dynamic nature of emotional experiences and their physiological correlates.

