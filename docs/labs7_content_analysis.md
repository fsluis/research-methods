---
title: "INFOSHEET: CONTENT ANALYSIS USING R"
author: "KU DigiLabs"
date: "2025"
---



## Introduction

Content analysis is a systematic method for interpreting text, images, or media to identify patterns, themes, and meanings. It is widely applied in social sciences, humanities, marketing, and education. With R, students and researchers can perform both manual and automated content analysis at scale, combining reproducibility with interpretability. This infosheet introduces key steps for content analysis using R, from designing a study to analyzing and visualizing results.

---

## Study Design

Every content analysis begins with a research question. Examples include: How do news outlets frame climate change? What emotional appeals do brands use in sustainability marketing? Once your question is clear, define the type of material you will analyze, such as social media posts, transcripts, product reviews, or news articles.

For example:
- How is sustainability framed differently across global vs. local retailers?
- What emotional themes recur in online discussions of mental health?

Operationalize your question by identifying:
- The type of content to analyze (e.g., Reddit threads, YouTube video transcripts).
- The unit of analysis (e.g., post, comment, transcript section).
- The approach: are you classifying content, mapping themes, or tracking changes over time?

Choose between analyzing manifest content (surface-level features like word frequency) or latent content (underlying themes or discourse structures). Inductive approaches allow themes to emerge from the data, while deductive coding applies predefined categories. Beginners can often combine both: begin inductively on a small sample, then apply those codes deductively across a larger corpus.

For deductive approaches, create a codebook with the different codes (labels), their definitions, and an example for each code. Being deductive, a theoretical framework should be the starting point of your codebook. Coding can be done in R or using spreadsheets and then imported into R for analysis.

Even though the focus of this infosheet is on online content, content analysis also often complements surveys or experiments. For example, by analyzing open-ended survey responses or thematically coding interview-derived transcripts. 

---

### Data Collection

Text data can be collected from a wide range of sources. In R, common tools include `rvest` for web scraping, `rtweet` for accessing tweets, and `tidyRSS` for RSS feeds. Public APIs also provide access to articles, social media, and other user-generated content, though they often require registration and key-based authentication.

<!--Scraping websites requires attention to ethics and legality. Always consult a site’s `robots.txt` file and terms of service. Use respectful scraping practices with delays between requests. Where available, use APIs, which are designed for structured and permissible data access.-->

Students can also use existing corpora. These offer ready-to-use data for practicing text mining without needing to scrape. They include built-in datasets from R packages (e.g., `janeaustenr`, `quanteda.corpora`), academic repositories (e.g., 20 Newsgroups, Liars7), and platforms like Kaggle or the UCI Machine Learning Repository. Consult [this Github page](https://github.com/awesomedata/awesome-public-datasets) with an overview of public datasets, and [opendata.dk](https://www.opendata.dk/) for Danish data sets.

To organize your project, separate raw data, cleaned data, scripts, and outputs into folders. Use RMarkdown or Quarto to document your steps and ensure reproducibility. Save data with date tags if collecting over time, and maintain a README explaining your dataset and cleaning steps.

---

## Data Analysis

Content analysis in R can support both **deductive** and **inductive** approaches. These differ in how codes or patterns are defined and used:

### Deductive Analysis: Codebooks and Statistics

A deductive approach starts from a predefined coding scheme, often based on theory or prior research. Researchers apply codes manually or semi-automatically to label segments of text, then summarize and compare code frequencies across documents or categories. 

In this workflow, you typically:

1. Create a **codebook**—a list of codes with definitions and example text passages.
2. Apply the codes to text units (e.g., posts, paragraphs), either manually (in Excel or R) or by matching predefined keywords.
3. Summarize results using descriptive statistics, such as the number or proportion of documents coded with each theme.
4. Optionally, test relationships between codes and metadata (e.g., document type, source, author) using relational statistics (Stats3).
5. Test and report inter-rater reliability using Cohen’s Kappa to ensure agreement. A score above 0.80 generally indicates high consistency.

Use multiple coders and check for (in)consistencies in their coding. Explain how (in)consistencies were resolved and document how the coding (descriptive statistics and inter-rater reliability) changed because of this process.

In R, most of these steps can be done with simple data frames and correlations/regression models.
Deductive coding is often used in small-to-medium datasets, but can be scaled with dictionary-based methods in [*quanteda*](https://quanteda.io/) (e.g., using the dfm_lookup() function with a list of keywords assigned to themes).

### Inductive Analysis: Text Mining and Pattern Discovery

An inductive approach explores the dataset to discover patterns and themes directly from the text. Rather than starting with codes, you let topics, emotions, or clusters emerge from statistical or computational models.

This is where R excels—especially for large corpora.

Common inductive methods include:
- Tokenization and word frequency analysis to find dominant terms.
- TF-IDF to identify words distinctive to particular documents.
- Sentiment analysis using lexicons to measure tone.
- Topic modeling (e.g., LDA) to detect latent themes.
- Clustering or classification to group documents based on textual similarity.

These techniques treat text as data, transforming it into matrices of word frequencies or document features. Inductive analysis is especially useful for larger datasets or when you're unsure what patterns to expect. Interpretation happens after modeling: Once patterns are discovered, you review top terms or representative documents to label and explain them.

### Text Analysis in R

Two primary workflows exist for analyzing text in R: the `tidytext` approach and the `quanteda` framework. `tidytext` integrates with the tidyverse and is ideal for beginners familiar with `dplyr` and `ggplot2`. It uses tidy principles, where each token or word is a row in a data frame. This makes filtering, joining, and summarizing straightforward. It is especially useful for sentiment analysis, tf-idf, and keyword counting.

Preprocessing typically includes lowercasing, removing punctuation and numbers, and filtering out stopwords. For social media or informal text, additional steps may involve handling emojis, hashtags, and slang. Lemmatization and stemming reduce words to their root forms.

Sentiment analysis uses lexicons such as `bing`, `AFINN`, or `nrc`, which label words as positive, negative, or emotional categories. You can aggregate sentiment scores across documents, users, or time periods. Topic modeling, via `topicmodels` or `quanteda`, helps discover latent themes. The number of topics (k) can be adjusted and evaluated for interpretability or coherence. Visualization of topics often involves plotting top terms or using tools like `LDAvis`.

---

## Use Case: Analyzing Quality Discussions on Reddit

### Reference  
 Van der Sluis, F., Faure, J., & Homnual, S. P. (2024). An empirical exploration of the subjectivity problem of information qualities. Journal of the Association for Information Science and Technology, 75(7), 829–843. https://doi.org/10.1002/asi.24884

### Method  
The study sampled posts from 16 high-engagement Reddit threads across four domains: cooking, fashion, football, and politics. Posts were selected that made claims about information quality, resulting in a dataset of 676 explicit judgments.

Each post was manually coded using a structured coding scheme that included categories such as **correctness**, **comprehensiveness**, **usefulness**, and **expertise**. Codes were analyzed in R with support for thematic frequency analysis and category visualization (see Figure 1 in the reference). 

### Findings  
Reddit users frequently made judgments about the quality of information, grounding their claims in personal experience or community norms. For example:
- **Correctness** was debated by referencing established knowledge or verifiable outcomes (e.g., the result of a recipe or an official football rule).  
- **Expertise** judgments often focused on whether the source demonstrated authority, competence, or experience.

These judgments reflected not only content characteristics but also situated understandings of what is appropriate or valued in each context.

### Relevance  
This use case demonstrates how researchers can use manual coding with structured analyses in R to evaluate online discussions and user-generated content.

### Use Case: Emotion and Framing in Retail Texts

A student project examined emotional appeals in online product descriptions by Danish and international retailers. They scraped ~500 product pages using `rvest`, tokenized text using `tidytext`, and analyzed sentiment with the `nrc` lexicon. The study found that Danish brands emphasized social responsibility while international retailers used excitement and urgency. Combining lexicon-based scoring with keyword-in-context interpretation allowed for both quantitative insights and qualitative nuance.

---


## Use Case: Predicting Stock Market Trends Using Twitter Mood Analysis

### Reference
Bollen, J., Mao, H., & Zeng, X.-J. (2011). Twitter mood predicts the stock market. *Journal of Computational Science*, 2(1), 1–8. https://doi.org/10.1016/j.jocs.2010.12.007

### Method
The study analyzed approximately 9.7 million tweets posted between August and December 2008 to assess collective public mood and its potential correlation with the Dow Jones Industrial Average (DJIA). The researchers employed two mood-tracking tools:

1. **OpinionFinder**: Measured the general public sentiment as positive or negative.
2. **Google-Profile of Mood States (GPOMS)**: Assessed mood across six dimensions—Calm, Alert, Sure, Vital, Kind, and Happy.

Using these tools, the authors created daily time series data representing public mood states. They used various advances technologies, but their main goal was to show a correlation between mood states and stock market index.

### Findings
The study found that certain dimensions of public mood, particularly the **Calm** dimension from GPOMS, had a statistically significant predictive relationship with the DJIA. The model achieved an accuracy of 87.6% in predicting the daily up and down changes in DJIA closing values.

### Relevance
This use case illustrates the practical application of sentiment analysis in financial forecasting.

---

## Additional Resources

- Silge, J., & Robinson, D. (2017). *Text Mining with R*. Available: https://www.tidytextmining.com
- TidyTuesday Datasets: https://github.com/rfordatascience/tidytuesday
- AoIR Ethics Guidelines: https://aoir.org/reports/ethics3.pdf
- Awesome Public Datasets: A curated list of high-quality open datasets across various domains. Available: https://github.com/awesomedata/awesome-public-datasets
- Open Data DK: A portal providing access to Danish public datasets. Available: https://www.opendata.dk/

