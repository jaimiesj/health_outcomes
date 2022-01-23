# Heavy Alcohol Consumption Amongst Student Population Using Machine Learning Model

## Selected topic
Statistics of Heavy Alcohol Consumption Amongst Student Population (between ages 15 and 22) and the Contributing Factors

## Files
data_test1: First model ran with one provisional database using linear regression.

project_model: Final dataset chosen will be running a Decision Tree, Random Forest and Neural Network.
# Data
![Screenshot 2022-01-23 155841](https://user-images.githubusercontent.com/25463509/150697740-7aeaa65d-b556-4d7e-a821-a26f279a86ef.png)

## Cleaning and encoding
New column drinker added which will be a result after the model is done classifying who is a heavy drinker and who is not
![Screenshot 2022-01-23 161330](https://user-images.githubusercontent.com/25463509/150698199-ce59b94b-c348-4f49-8931-1d0f95a71483.png)


# Data Vizualizations

## Relationship between age and alcohol consumption on the weekends

![Screenshot 2022-01-23 154310](https://user-images.githubusercontent.com/25463509/150697290-e8d2010b-4fb7-464c-a21c-b06ce5c18fe6.png)

## Relationship between age and alcohol consumption during the week broken down by the different health groups 1(Low"Unhealthy")-5(High"Healthy")

![Screenshot 2022-01-23 154602](https://user-images.githubusercontent.com/25463509/150697452-fe24422e-770c-44af-8f0e-06736f5ffd00.png)

## Relationship between going out and consumption during the week

![Screenshot 2022-01-16 034906](https://user-images.githubusercontent.com/25463509/150698263-935d0611-6d9c-4d9b-b221-e9995e992f93.png)


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



