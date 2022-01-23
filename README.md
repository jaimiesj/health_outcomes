# Heavy Alcohol Consumption Amongst Student Population Using Machine Learning Model

## Selected topic
Statistics of Heavy Alcohol Consumption Amongst Student Population (between ages 15 and 22) and the Contributing Factors

## Files
data_test1: First model ran with one provisional database using linear regression.
project_model: Final dataset chosen will be running a logistic regression or a random forest.

## Reason why topic selected
This topic was selected because we needed a dataset that we could use to make possible predictions to an outcome using machine learning models. Meanwhile, the dataset selected is also considered simple and easy to read and majorly contains numerical values. However, this dataset was chosen because of its size and ability to generate potential results which allows our model to predict outcomes on alcohol consumption amongst student population.

## Description of data source
This dataset was culled from the UCI machine learning website which shows 2 different schools in portugal and shows students drinking consumption. This group will use different machine learning algorithms to make predictions pertaining to whether a student may be prone to alcoholism in the future.

## Questions to answer with data 
Using the sum of the Workday Alcohol Consumption (Dalc) and Weekend Alcohol Consumption (Walc), we will generate a Alcohol Consumption column, where if values fall below a certain number (to be determined), they will be deemed low risk alcohol consumers while if they fall above that number, they will be deemed high risk alcohol consumer, based on several factors, such as sex, age, parent education, parent job, number of class failures, etc

## Outline of the project
### Data Exploration
- Rename columns to provide clarity
- Create a new column that combines the Walc and Dalc (work day and weekend alcohol consumption) to then create a binary column that assigns heavy drinkers and not heavy drinks 
- Remove certain columns
### Data analysis
- Use "get_dummies" to encode numeric data
- After splitting encoded features and targets into train and test sets, used StandardScaler to scale data
- Use RandomForestClassifier model; generated a confusion matrix, accuracy score and classification report

## Presentation
https://docs.google.com/presentation/d/1hqgUfOrMOn1eLWV_YMKmGAy1pQPLOVfiNKPChs24wYY/edit#slide=id.gd1b2d3b176_0_14

## Visualization
https://public.tableau.com/app/profile/jaimie2837/viz/StudentAlcoholConsumptionVisuals/Story1?publish=yes



