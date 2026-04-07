---
title: "INFODOC: CONVERSATIONAL LABS"
author: "Frans van der Sluis"
date: "2026"
---

# **INFODOC: CONVERSATIONAL LABS**

## **Introduction**
Conversational studies in lab settings examine how interaction unfolds over time. When we talk about conversation analysis in this context, we mean approaches that study interaction turn by turn: who speaks next, how participants respond to prior turns, how misunderstandings are repaired, how agreement or disagreement is invited, and how the interaction develops sequentially.

This perspective can be applied both to human-human conversations, which are often multimodal and include talk, gesture, gaze, facial expression, and prosody, and to human-LLM conversations, which are often mostly text-based but still unfold sequentially.

Unlike controlled experiments, which seek to isolate variables and establish causality, conversational studies do not exert the same level of control. The setting is semi-structured, but the interaction is still allowed to unfold. This is true both when two or more people talk to each other and when one participant interacts with an LLM under a defined prompt condition.

---

# Study Design
Conversational studies at KU DigiLabs can be organized in several formats, depending on whether the interlocutor is another person or an LLM.

## Human-human formats (multimodal)
Human-human conversational studies typically include 2 participants (dyadic conversations) or six to ten participants (focus groups). Smaller groups may be preferable when discussing emotionally sensitive topics, while larger groups can be effective for broader discussions where participant engagement varies.

When designing focus groups, discussions should follow a semi-structured question set (typically 5-10 key questions) that progresses from general to specific topics. Moderators should aim for a balanced approach, as excessive intervention may disrupt natural interactions, while too little may lead to unproductive discussions. Moderation should be minimal but adaptive, allowing discussions to flow freely while refocusing when necessary (Bryman, 2012, p. 508).

In dyadic conversations, two participants engage in discussion based on a topic or set of instructions provided by the researcher. Dyads may be selected for complementary or opposing viewpoints. For example, pairing individuals with different stances on an issue or colleagues in distinct roles. The setting should be private and distraction-free, and participants should feel comfortable with their discussion partner. Unlike focus groups, the researcher does not actively moderate but instead provides structured prompts or scenarios. Props, prompts, and follow-up questions can help steer engagement and explore topics in depth.

## Human-LLM format (mostly text)
Human-LLM studies usually involve one participant and one AI system engaged in a task-oriented or open-ended conversation. The researcher defines the task, opening prompt, and chatbot instruction set in advance. Conditions can vary the chatbot's persona, questioning style, level of disagreement, degree of empathy, or domain role. Because the same instruction set can be reused across participants, this format is useful when comparing how different prompts shape the unfolding conversation.

For methodological control, it is better to use a fixed system prompt (background instructions to the LLM) and a stable logging setup than the public consumer interface alone. API-based or platform-based setups improve reproducibility because the model, system prompt, and conversation logs can be documented more precisely.

Successful focus groups, dyadic conversations, and human-LLM sessions all require careful planning. As Bryman (2012, pp. 504-514) highlights, moderators should remain impartial, avoid influencing responses, and facilitate balanced participation while allowing discussions to flow naturally. Preparing props, vignettes, or prompts can help guide the discussion, and strategic interventions may be necessary to manage dominant speakers or bring quieter participants into the conversation (Bryman, 2012, p. 508). In human-LLM studies, informed consent should also make clear that participants are interacting with an AI system rather than a person. Researchers should avoid collecting sensitive personal data in the chat and should define in advance how logs are stored, anonymized, and deleted.

Consult Bryman chapter 21 for more information on planning conversational studies, including informed consent, anonymization and ground rules of confidentiality, monitoring for possible distress, and providing closure.

For further reading:
Bryman, A. (2012). Social research methods (4th ed.). Oxford University Press.
- Chapter 21: Focus groups.
- Chapter 11: Asking questions (inc. vignettes).
- Chapter 6: Ethics and politics in social research.

---

# Participant Sampling and Data Collection 
Participant recruitment should align with the research question, ensuring that selected individuals have relevant knowledge, demographic characteristics, or lived experiences. Bryman (2012, pp. 505–510) outlines various sampling strategies, including purposive sampling (selecting participants based on criteria), stratified sampling (ensuring subgroup representation), and convenience sampling. The choice between homogeneous groups (to encourage open discussion) and heterogeneous groups (to stimulate debate and contrasting perspectives) depends on the study’s objectives. Researchers must also decide between natural groups (pre-existing social ties) and randomly selected participants, each with its own advantages and challenges (Bryman, 2012, p. 510).
To ensure open participation, power imbalances should be avoided. For example, mixing employees with managers may inhibit honest responses. A brief screening survey can help balance participant composition, and sending confirmation and reminder messages can reduce no-show rates.

At KU DigiLabs, you can reserve one of the rooms to conduct human-human conversational studies. For optimal audio quality, we recommend borrowing a Zoom recorder or another high-end omnidirectional microphone to ensure high-fidelity recordings. Additionally, using one or multiple video cameras will allow you to capture nonverbal cues, such as facial expressions and body language, providing deeper insights into participant interactions.

For human-LLM studies, prior familiarity with chatbots, language background, and topic knowledge may affect the interaction and should be documented with a short pre-study survey. In comparative designs, keep the task constant and randomize only the chatbot instruction set. For each session, save the full transcript, timestamps, model name/version (if available), system prompt, task prompt, and any post-conversation ratings. If a voice-based AI system is used, audio should also be recorded.

At KU DigiLabs, we currently have a ChatGPT API subscription with tokens available for teaching purposes. This makes it possible to run controlled text-based chatbot studies and save the exact prompts used. Gorilla.sc chatbot integration will likely become available soon at DigiLabs, pending final license confirmation, which gives you an easy-to-setup environment for studying human-LLM conversations.

# Data analysis
After human-human sessions, recordings must be transcribed for analysis. Verbatim transcription is generally preferred, though filler words (e.g., "um," "you know") may be omitted unless speech patterns are relevant. Assigning pseudonyms or participant codes (e.g., P1, P2) ensures anonymity, and non-verbal cues such as [laughter] or [pause] provide additional context (Bryman, 2012, pp. 504-505). Automated transcription tools, such as WhisperTranscribe available at KU DigiLabs, can speed up the process, though manual correction is necessary due to potential errors in speaker differentiation and overlapping speech.

Human-LLM sessions usually produce ready-made text logs, which reduces transcription work. However, researchers should still clean the data, pseudonymize participant identifiers, and document omitted system messages or interface events. If the study uses a voice-based assistant, transcription and multimodal annotation are still relevant.

Analyzing conversational data involves coding transcripts to identify patterns and themes. Bryman (2012, pp. 576-578) outlines thematic analysis as a common approach, where statements are categorized based on meaning. For example, discussions about online learning may be coded into themes like social isolation (e.g., "lack of interaction") and convenience (e.g., "flexibility"). These codes are then grouped into broader themes to structure findings. To ensure coding reliability, multiple researchers should review and refine codes (inter-coder agreement), a process facilitated by software such as NVivo (Bryman, 2012, p. 578). However, simpler methods, such as organizing quotes in spreadsheets, can also be effective.

Conversational data can also be analyzed sequentially using Conversation Analysis (CA), which focuses on how each turn responds to prior talk and shapes the next turn. CA is especially relevant when studying turn-taking, repair, formulations, invitations to agree or disagree, and how moderators or chatbots steer interaction. Beck Nielsen (2023, 2025), for example, shows how interviewers can allocate turns and formulate prior claims in ways that shape disagreement.

Triangulation strengthens qualitative research by combining multiple data sources (Bryman, 2012, p. 586). In conversational labs, spoken content (transcripts) can be cross-validated with:
- Video analysis, which allows researchers to observe non-verbal cues such as facial expressions, gestures, and body language. These behaviors can reveal underlying sentiments that might not be explicitly stated in conversation. At KU DigiLabs, researchers can use Observer XT to code and analyze these non-verbal interactions systematically.
- Prosodic speech analysis examines how participants speak. Changes in pitch, tone, speed, and stress can indicate emotional states that are difficult to detect from transcripts alone. For instance, an increase in pitch might suggest excitement or nervousness, while a slow and hesitant response could indicate uncertainty or reluctance. At KU DigiLabs, we use tools like WASP to analyze speech parameters.

Human-LLM studies are often less multimodal because they are mostly text-based. In these cases, analysis often focuses on turn sequence, response type, hedging, clarification, refusals, topic drift, and user ratings of the conversation. If voice-based or avatar-based systems are used, the same multimodal tools can be applied there as well.

While conversational studies are primarily qualitative, **descriptive statistics** (Stats1) can be used to count how often specific themes or behaviors occur. For example, if "trust in information" appears in 75% of transcripts, this suggests a recurring concern. Similarly, researchers can track the number of interruptions, speech duration, or expressions of hesitation to quantify engagement levels.
**Relational statistics** (Stats2 and Stats3) allow researchers to correlate different data sources. By analyzing whether certain themes in transcripts align with specific body language patterns or vocal stress markers, researchers can test hypotheses about participant confidence, uncertainty, or emotional responses. For instance, if discussions about misinformation consistently coincide with higher vocal pitch and increased speech rate, it might indicate anxiety or cognitive strain. In human-LLM studies, similar comparisons can be made across prompt conditions, for example whether a "devil's advocate" chatbot produces more clarification requests, resistance, or perceived frustration than a neutral facilitator.

## Example: Interactional Integration of Talk and Note-Taking

Although this is not a lab study, it is a strong example of how sampled, observed interaction can be analyzed sequentially and multimodally.

Research Design:
- Beck Nielsen (2021) analyzes video-recorded, naturally occurring monitoring visits in Denmark using Conversation Analysis.
- The study examines how professionals integrate note-taking into ongoing interaction with foster parents and leaders of residential institutions.
- The focus is on how talk and note-taking are coordinated moment by moment rather than treated as separate activities.

Findings:
- Note-taking is not just an individual documentation task but an interactional practice that participants orient to during the conversation.
- Participants adjust talk, timing, and attention in relation to when notes are being written.
- This shows how conversational analysis can include both speech and concurrent embodied or practical activities.

Relevance for lab studies:
- It is a useful model for analyzing recorded interaction in a fine-grained way rather than relying only on post-hoc thematic coding.
- It fits especially well with human-human conversational studies that use video, because it shows how multimodal details matter for interpretation.
- It also helps clarify what conversation analysis looks like in practice: turn-by-turn analysis of how participants coordinate actions over time.

Reference:
Nielsen, S. B. (2021). Interactional integration of talk and note-taking. Psychology of Language and Communication, 25(1), 145-167. https://doi.org/10.2478/plc-2021-0007

## Example: The Intractable Conflict Lab
At Columbia University’s Intractable Conflict Lab, researchers study real-time interactions between individuals engaged in polarizing moral conflicts.

Research Design:
- Participants are matched based on opposing views on controversial topics such as affirmative action or reproductive rights.
- Each pair engages in a 20-minute conversation aimed at reaching a joint position statement.
- Discussions are video- and audio-recorded for later analysis.
- Participants then review their own conversation, providing feedback on emotional intensity and perceived changes in understanding.

Findings:
- Some discussions escalate into entrenched positions, while others remain open and constructive.
- More constructive conversations exhibit higher cognitive complexity, where participants acknowledge and integrate multiple perspectives.
- Emotional regulation plays a key role in whether conflicts remain tractable or spiral into intractability.
- Structural elements, such as pre-discussion framing and cognitive priming, can influence whether participants engage in black-and-white thinking or nuanced reasoning (Kugler & Coleman, 2020).

Potential adaptation:
- The same basic design can be adapted to human-LLM studies by assigning the chatbot different instruction sets (e.g., neutral facilitator vs. adversarial challenger) and comparing how participants reason across conditions.

References:

Coleman, P. T. (2011). The Five Percent: Finding Solutions to Seemingly Impossible Conflicts (Chapter 3). PublicAffairs. ISBN: 9781586489229.

Kugler, K. G., & Coleman, P. T. (2020). Get Complicated: The Effects of Complexity on Conversations over Potentially Intractable Moral Conflicts. Negotiation and Conflict Management Research, 13(3), 211–230. https://doi.org/10.1111/ncmr.12192

Nielsen, S. B. (2021). Interactional integration of talk and note-taking. Psychology of Language and Communication, 25(1), 145-167. https://doi.org/10.2478/plc-2021-0007
