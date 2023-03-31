import numpy as np      #to make numpy arrays listing and so on
import sklearn
from sklearn.model_selection import train_test_split
import pandas as pd              #data frame and analysing
from sklearn.metrics import accuracy_score #spliting the data to training & predict data &checking the perfomanc
from sklearn.linear_model import LogisticRegression
import numpy as np      #to make numpy arrays listing and so on
import sklearn
from sklearn.model_selection import train_test_split
import pandas as pd     #data frame and analysing
from sklearn.metrics import accuracy_score #spliting the data to training & predict data &checking the perfomanc
from sklearn.linear_model import LogisticRegression   



#loading the dataset to pandas data frame
heart_data = pd.read_csv('/heart_disease_data.csv')

# printing 1st 5 rows of the dataset
heart_data.head()

# printnig last 5 rows of dataset
heart_data.tail()

#how many data in the dataset by cheking the no. of rows and columns
heart_data.shape

# getting some info about the data 
heart_data.info()

# checking if the dataset has missing values
heart_data.isnull().sum()

#statistical measures about the data
heart_data.describe()

#checking the ditribution of target variable
heart_data['target'].value_counts()

x = heart_data.drop(columns='target', axis =1)
y = heart_data['target']


print(x)
print(y)

x_train , x_test, y_train, y_test = train_test_split(x,y, test_size=0.2, stratify=y, random_state=2)

print(x.shape, x_train.shape, x_test.shape)

model = LogisticRegression()

#training the Logistic regretion model with trainung data
model.fit(x_train, y_train)

# accuracy on training data
x_train_prediction = model.predict(x_train)
training_data_accuracy = accuracy_score(x_train_prediction, y_train)

print('Accuracy on training data: ', training_data_accuracy) 

# accuracy on test data
x_test_prediction = model.predict(x_test)
test_data_accuracy = accuracy_score(x_test_prediction, y_test)

print('Accuracy on test data: ', test_data_accuracy)

input_data =(57	,0	,0	,140	,241	,0	,1	,123,	1	,0.2	,1	,0	,3)

# change the input data to numpy array to do some processing
input_data_as_numpy_array = np.asarray(input_data)

#reshaping the numpy array as we are predicting for only on instance
input_data_reshaped = input_data_as_numpy_array.reshape(1, -1)

prediction = model.predict(input_data_reshaped)
print(prediction)

if(prediction[0]==0):
  print('the person does not have a heart disease')
else:
  print('the person has heart disease')
