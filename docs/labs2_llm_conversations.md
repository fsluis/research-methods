---
title: "INFODOC: HUMAN-LLM CONVERSATIONS"
author: "Frans van der Sluis"
date: "2026"
---

# INFODOC: HUMAN-LLM CONVERSATIONS

## Introduction
Human-LLM conversation studies examine how people interact with a large language model across multiple turns. In these studies, the AI is not treated only as a backend that generates one answer, but as an interlocutor that asks questions, offers explanations, takes a stance, or guides a task over time.

This makes human-LLM conversations relevant for research on information seeking, verification, tutoring, decision support, argumentation, opinion change, and help-seeking. Methodologically, they are especially useful because the conversational partner can be standardized across participants while still allowing the interaction to unfold in a relatively natural way.

When we talk about conversation analysis in this context, we mean approaches that study interaction turn by turn: how the conversation is opened, how each turn responds to the previous one, how misunderstandings are repaired, how the system invites agreement or disagreement, and how the interaction develops sequentially. Human-LLM conversations are often mostly text-based, but they can still be studied in this fine-grained way.

Unlike controlled experiments that isolate a small number of variables, conversational studies allow participants to pursue a task through interaction. However, compared with human-human conversations, human-LLM studies offer stronger control over the interlocutor, because the same interface, system prompt, and task instructions can be reused across conditions.

---

# Study Design
Human-LLM studies usually involve one participant and one AI system engaged in a task-oriented or open-ended conversation. The simplest design is a single chatbot condition, but most studies compare two or more prompt conditions while holding the task constant.

Typical manipulations include:
- The system prompt or AI instructions
- The chatbot's role, for example neutral facilitator, tutor, devil's advocate, or product advisor
- Whether the chatbot provides citations, asks follow-up questions, or challenges the participant's view
- The opening prompt or vignette
- The topic domain, for example health, policy, consumer choice, or academic search

For most student projects, keep the design simple. A good default is one task, two chatbot conditions, and one short post-task questionnaire. For example, participants can be asked to discuss a controversial topic with either a neutral chatbot or a challenging chatbot, or to complete the same information-seeking task with either a citation-providing chatbot or a non-citing chatbot. If relevant, you can also add think-aloud or a short post-hoc interview as additional measurements. Think-aloud changes the interaction and may make the conversation less natural, whereas post-hoc interviews are useful if you want reflective accounts of trust, strategy, confusion, or verification behavior after the task.

Before the main task, consider a brief pre-study questionnaire with measures such as:
- Prior familiarity with ChatGPT or other LLMs
- Language background
- Topic familiarity
- Initial stance, confidence, or trust, depending on the topic

You should also define in advance when the conversation ends. Common stopping rules are:
- A fixed number of turns
- A fixed time limit
- Completion of a task, such as drafting a summary, making a recommendation, or reaching a position statement

At KU DigiLabs, the Gorilla subscription can be used to implement these studies in a controlled way. Gorilla's official AI documentation currently describes AI integrations with OpenAI and Gemini, a task-level system prompt, an AI Chat Box for participant interaction, and Trigger - AI components for automated follow-up prompts and processing.

## Gorilla Setup
At KU DigiLabs, Gorilla is useful because it allows you to run controlled human-LLM studies with randomized prompt conditions, a fixed interface, and stored chat transcripts. For example, one condition can use a neutral instruction set and another a challenging one, while the rest of the task remains identical across participants.

For the actual setup, use Gorilla's official documentation here:
- Gorilla AI Integrations: https://support.gorilla.sc/support/tools/task-builder-2/ai-integrations
- Gorilla Components Guide: https://support.gorilla.sc/support/tools/task-builder-2/components-guide
- Gorilla Task Builder 2 How-To Guide: https://support.gorilla.sc/support/tools/task-builder-2/how-to

At KU DigiLabs, AI-enabled Gorilla projects need to be created by the subscription admins, Frans van der Sluis or Stavris Solo, so credits (tokens) can be assigned to the project. If your Gorilla setup uses the ChatGPT API, contact Stavris for the API key.

For research use, preserve the raw transcript, condition labels, and prompt metadata for later analysis. Also note that Gorilla previews and live runs consume credits from the connected provider account, so usage should be checked before launch.

---

# Participant Sampling and Data Collection
Participant recruitment should align with the research question. For small student projects, convenience sampling is acceptable, but the sample limitations should be reported clearly.

Because Gorilla already stores the conversation data, the main task is not manual data collection but making sure the study is configured clearly. In practice, this means checking that the export will let you identify:
- Participant ID
- Condition or prompt version
- Transcript
- Relevant survey responses such as trust, usefulness, frustration, or learning

If the study compares prompt conditions, you should also keep a separate record of the exact system prompt, AI instructions, and opening prompt used in each condition.

Researchers must also handle ethics carefully. Participants should know they are interacting with an AI system rather than a person. Avoid collecting unnecessary personal or sensitive information in the chat. If the study concerns high-stakes topics such as health, politics, or academic integrity, the task instructions should make clear that the chatbot may be incomplete, biased, or wrong.

# Data Analysis
Human-LLM studies usually produce ready-made text logs, which reduces transcription work. The first step is therefore to clean and organize the transcripts, pseudonymize participant identifiers, and merge the logs with condition labels and questionnaire responses.

These transcripts can be analyzed in several ways.

Sequential analysis or Conversation Analysis can focus on:
- How the chatbot opens and frames the conversation
- How the participant takes up or resists the chatbot's framing
- Turn-taking patterns
- Clarification requests
- Repair sequences
- How the chatbot invites agreement, disagreement, or elaboration

For conversation-analytic work on turn-taking and how interviewers allocate next speakers and project disagreement, see Nielsen (2023).

Thematic analysis can focus on:
- Recurring topics
- Perceived usefulness
- Trust and distrust
- Frustration, confusion, or over-reliance
- Verification behavior

Quantitative summaries can also be useful. For example, you can count:
- Number of turns
- Average participant turn length
- Number of clarification questions
- Number of citations or references provided
- Number of explicit challenges, agreements, refusals, or hedges

These measures can then be compared across conditions using the statistics infodocs. For instance, you might test whether a challenging chatbot produces more clarification requests or lower trust ratings than a neutral chatbot.

In Gorilla, `Trigger - AI` can also be used to process responses during the task, for example by generating a short summary or structured label and saving it to the Store. This can be useful for prototyping, but for research analysis the primary transcript should still be preserved and inspected directly.

---

# Additional Resources
- Gorilla AI Integrations: https://support.gorilla.sc/support/tools/task-builder-2/ai-integrations
- Gorilla Components Guide: https://support.gorilla.sc/support/tools/task-builder-2/components-guide
- Gorilla Task Builder 2 How-To Guide: https://support.gorilla.sc/support/tools/task-builder-2/how-to
- Bryman, A. (2012). Social research methods (4th ed.). Oxford University Press.
- Azzopardi, L., Dubiel, M., Halvey, M., & Dalton, J. (2024). A conceptual framework for conversational search and recommendation: Conceptualizing agent-human interactions during the conversational search process. arXiv. https://arxiv.org/abs/2404.08630
- Nielsen, S. B. (2023). Orchestration of perspectives in televised climate change debates. Discourse & Society, 34(2), 175-191. https://doi.org/10.1177/09579265221117015

## Example Study 1: Verification Challenges with LLMs

This study is a strong example of a human-LLM information-seeking task in which participants use LLMs in a relatively natural way rather than responding to isolated prompts.

### Method
Visani Scozzi, Makri, and Madhyastha (2026) observed 16 academic researchers across disciplines as they used LLMs of their choice for a research information-seeking task. The study combined a naturalistic think-aloud protocol with a semi-structured interview, making it especially relevant for lab designs that want both transcript data and reflective post-task data.

### Findings
- Participants used a range of verification strategies rather than simply accepting outputs
- Verification became difficult when the system did not clearly indicate sources or generated plausible but unreliable references
- Current LLM design made it harder for users to assess truthfulness and source faithfulness

### Relevance
This is a useful model for studies on trust, source checking, citation behavior, and academic use of LLMs. It can be adapted into a lab task by fixing the chatbot, task prompt, and source display condition across participants.

### Reference
Visani Scozzi, M., Makri, S., & Madhyastha, P. (2026). "Although Powerful, it's not Infallible": Investigating academic researchers' verification challenges with LLMs. In *Proceedings of the 2026 Conference on Human Information Interaction and Retrieval (CHIIR '26)*. ACM. https://doi.org/10.1145/3786304.3787865

## Example Study 2: Generative Echo Chamber

This study shows how human-LLM conversation can be turned into a controlled experiment by comparing conversational search conditions.

### Method
Sharma, Liao, and Xiao (2024) conducted two experiments on LLM-powered conversational search. The first compared conversational search against conventional web search. The second compared LLM systems that either reinforced or challenged the user's viewpoint.

### Findings
- Participants engaged in more biased or confirmatory querying when using LLM-powered conversational search
- Opinion-reinforcing LLMs exacerbated this effect
- The study highlights how conversational systems can shape what information users seek and how they interpret controversial issues

### Relevance
This is a strong template for studies that manipulate chatbot stance, framing, or response style. It is especially relevant for human-LLM labs on controversial topics, decision-making, and information diversity.

### Reference
Sharma, N., Liao, Q. V., & Xiao, Z. (2024). Generative echo chamber? Effects of LLM-powered search systems on diverse information seeking. In *Proceedings of the CHI Conference on Human Factors in Computing Systems (CHI '24)*. ACM. https://doi.org/10.1145/3613904.3642459
