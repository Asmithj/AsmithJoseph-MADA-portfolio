# Mavoglurant PK Analysis
In this document, you will find:
	Project Overview – Defines the study's purpose and key predictors.
	Data Description – Explains the dataset and key variables.
	Data Source – Cites the origin of the dataset for transparency.
	Exploratory Data Analysis (EDA) – Summarizes data exploration methods and key insights.
	Model Fitting & Evaluation – Details the models used and their performance, making results easy to interpret.
	Key Findings & Next Steps – Highlights conclusions and suggests future improvements.
	Code Structure – Lists files and their purpose, making the project easy to navigate.
	How to Use – Provides a step-by-step guide to running the analysis.
	Documentation & Notes – Ensures clarity and reproducibility for future users.








Project Overview
This project focuses on the pharmacokinetic (PK) analysis of Mavoglurant using data from a clinical study. The goal is to explore relationships between total drug exposure (Y) and key predictors, such as dose (DOSE), age (AGE), sex (SEX), race (RACE), weight (WT), and height (HT).

# Data Description
The dataset used in this analysis consists of 2678 observations and contains the following key variables:

Main Outcome Variable
Y: Total drug exposure (computed as the sum of DV for each individual).
Predictor Variables
DOSE: Drug dosage administered.
AGE: Age of the participant (in years).
SEX: Sex of the participant (1 = Male, 2 = Female).
RACE: Race of the participant (categorical variable).
WT: Weight of the participant (in kg).
HT: Height of the participant (in cm).



# Data Source:
Mavoglurant_A2121_nmpk.csv from BayesPBPK Tutorial Repository

Raw Data Source: https://raw.githubusercontent.com/metrumresearchgroup/BayesPBPK-tutorial/main/data/Mavoglurant_A2121_nmpk.csv



Exploratory Data Analysis (EDA)
We conducted an exploratory data analysis (EDA) to assess the relationships between total drug exposure (Y) and key predictors. Summary tables provided insights into dataset structure, while scatterplots and boxplots visualized trends between Y, DOSE, AGE, and SEX. Distribution plots helped check normality and detect potential anomalies, and correlation analysis revealed weak relationships between Y and most predictors, suggesting the need for further modeling.

Model Fitting & Evaluation
We fitted multiple statistical models to analyze Y and SEX using the tidymodels framework.

Linear Regression Models (Y as Outcome):

A simple linear regression (Y ~ DOSE) showed that DOSE had no significant effect on Y.
A multiple linear regression (Y ~ DOSE + AGE + SEX + RACE + WT + HT) slightly improved prediction, but R² remained low, suggesting weak predictor relationships.
Logistic Regression Models (SEX as Outcome):

A simple logistic regression (SEX ~ DOSE) found DOSE not useful in predicting SEX.
A multiple logistic regression (SEX ~ All Predictors) significantly improved prediction, with HT emerging as a key predictor.
K-Nearest Neighbors (KNN) Models:

KNN regression (Y ~ All Predictors) performed poorly (R² ≈ 0), indicating that Y is difficult to predict with available features.
KNN classification (SEX ~ All Predictors) performed exceptionally well (ROC-AUC = 0.98, Accuracy = 95%), suggesting that SEX is strongly associated with certain predictors like HT.
Key Findings & Next Steps
DOSE is not a strong predictor of total drug exposure (Y), and other variables have limited explanatory power.
Height (HT) appears to be a key factor in distinguishing SEX, as indicated by logistic and KNN classification models.
KNN performed well for classification but poorly for regression, suggesting that Y may require a different modeling approach.
Future work could involve feature engineering, non-linear models, or alternative machine learning techniques to improve predictive performance.



# Code Structure
data_cleaning.R: Prepares and cleans the dataset (e.g., removes TIME = 0 observations, converts categorical variables).
eda.R: Performs Exploratory Data Analysis (EDA), including summary tables, scatterplots, boxplots, and correlation analysis.
modeling.R (if applicable): Fits statistical or pharmacokinetic models to analyze dose-response relationships.
report.qmd: Quarto document summarizing findings with visualizations and results.


# How to Use
Load the dataset (Mavoglurant_A2121_nmpk.csv) and run data_cleaning.R to prepare the data.
Run eda.R to explore data patterns and visualize relationships.
If modeling is included, execute modeling.R for further analysis.
The final results and visualizations are compiled in report.qmd, which can be rendered to HTML/PDF for easy interpretation.


# Documentation & Notes
The dataset and code are documented with comments explaining each step.
The Quarto document (report.qmd) provides a structured analysis summary.
This README file serves as a guide to understanding the project structure and variables.
Providing clear documentation ensures that future users (or your future self) can easily understand and reproduce the analysis. 




















