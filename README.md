# Heavy Alcohol Consumption Amongst Student Population Using Machine Learning Model
## Selected topic
Statistics of Heavy Alcohol Consumption Amongst Student Population (between ages 15 and 22) and the Contributing Factors
## Files
[src/data.ipynb](src/data.ipynb) contains code that retrieve data, cleans, encodes the data and the data in its new form is then stored. 
```python
data_url = 'https://raw.githubusercontent.com/tahmeed14/classification-models-for-alcoholism/master/alcoholism_classification/Student%20Alcohol%20Consumption%20Merged.csv'
raw_df = pd.read_csv(data_url)
raw_df.head()
```
Column names were replaced with more meaningful identifiers
```python
replacements = {
    'Dalc': 'weekday drinking', 'Walc': 'weekend drinking', 'famrel': 'family relationship',
    'goout': 'social activities', 'romantic': 'significant other', 'freetime': 'free time',  
} 
selected_df = selected_df.rename(columns=replacements)
```
Some columns were encoded with numbers
```python
encoded_df = encoded_df.replace(['at_home', 'health', 'teacher', 'services', 'other'], [0, 1, 2, 3, 4])
encoded_df = encoded_df.replace(['course', 'home', 'other', 'reputation'], [0, 1, 2, 3])
```
The cleaned and preprocessed data was stored in a relational database and a copy was stored in a flat file in a csv format

```python
# flat file storage
encoded_df.to_csv('../res/data/encoded.csv', index=False)

# database storage SQLite
cur.executemany('INSERT INTO profile VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', profile_values.to_numpy())
cur.executemany('INSERT INTO activities VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', activities_values.to_numpy())
```

<!-- data_test1: First model ran with one provisional database using linear regression.
project_model: Final dataset chosen will be running a Decision Tree, Random Forest and Neural Network.-->

[src/learn.ipynb](src/learn.ipynb) Final model containing Decision Tree, Random Forest and Neural Network
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
# Machine Learning Models
## Random Forest
### Binary Classifier
![Screenshot 2022-01-23 163251](https://user-images.githubusercontent.com/25463509/150698768-baf04ce8-9f8e-4480-ac32-ba9b168614e4.png)


## Accuracy
This models accuracy was over 81%
### Multiple Classifiers

![Screenshot 2022-01-23 164225](https://user-images.githubusercontent.com/25463509/150699055-29769904-4df4-45b2-b6f7-26adb58d8b39.png)

### Accuracy
This model did not do so well as it was around 50% in accuracy, however this one did not inclde as many features and the binary classifier.
## Decision Tree
### Binary Classifiers
![Screenshot 2022-01-23 164400](https://user-images.githubusercontent.com/25463509/150699089-dcfd8c20-1ce3-4101-8e10-d5aaedd45eb5.png)


### Multiple classifiers
![Screenshot 2022-01-23 163555](https://user-images.githubusercontent.com/25463509/150698872-6701d4eb-aee0-49bd-b9f6-9b53acead606.png)

### Accuracy
This model also did not do to well as the accuracy was around 50%
## Neural Network
![Screenshot 2022-01-23 162919](https://user-images.githubusercontent.com/25463509/150698702-47b71385-1879-4ee3-8b90-fc5c80b169b7.png)

### Accuracy

![Screenshot 2022-01-23 165819](https://user-images.githubusercontent.com/25463509/150699472-01e553ae-a462-44db-b14f-ca41425b2018.png)


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
Final Presentation https://public.tableau.com/app/profile/jaimie2837/viz/HeavyDrinkervsPredictiveModels/Story2?publish=yes
https://public.tableau.com/app/profile/jaimie2837/viz/StudentAlcoholConsumptionVisuals/Story1?publish=yes
https://public.tableau.com/app/profile/yomi.sosanya/viz/YouthAlcoholism/PopulationbySchool?publish=yes

### Contributors
* [Abideen Alabede](https://github.com/olakunlealabede)
* [Ashton Anderson](https://github.com/ash09er5)
* [Jaimie Jerome](https://github.com/jaimiesj)
* [Yomi Sosanya](https://github.com/perchingeagle)
