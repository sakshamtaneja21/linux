# Day 23 

# Data Analitics class
*   To draw a scatter chart we use ```plt.scatter()``` 
*   To draw a pie chart we use ```plt.pie()```
```py
plt.pie(runs,labels=player,explode=exp,shadow=True,autopct='%1.1%')
plt.grid(color='green')
plt.show()
```
*   CSV (Comma Seperated Values)
*   Pandas is a liberary used for data processing.
*   To read a csv file in pandas
*   Here data readed by pandas is called as dataframe.
*   Data Frame is a structure developed by pandas it converts any type of data to pandas data frame using read_csv.
```py
import pandas as pd
df = pd.read_csv('com.csv')
df1 = pd.read_csv('http://13.234.66.67/summer19/datasets/com.csv')
```
*   Now if I need to see the structure of use the function df.info()
```
df.info()
```
*   Now If I need to print all the data
```
print(df)
```
*   Now If I say I just need top 3 rows then use head function
```
df.head(3)
```
*   Now If I say I just need bottom 3 rows then use tail function
```
df.tail(3)
```
*   Now if we need a specific column or such you can specify  the column name in df
```py
df['Name']
```
*   For selecting rows and columns  we have a function called
```
df.iloc[0:,0]
```
*   To get max min avg mean value from a column
```py
df['Salary'].max()
df['Salary'].min()
df['Salary'].mean()
df['Salary'].avg()
```

## NumPy Numerical Python
*   Tensorflow is the advanced version of NumPy.
*   The data would be atleast in two dimensions and can be in 100's of Dimensions.
*   To install numpy we use
```   
pip install numpy
```
*   To use numpy we import it with a name to short the module name
```py
import numpy as np
```
*   We can create array in ```numpy``` by calling a function only.
```py
a = np.array([1,2,45,35,45])
```
*   We can print an array just by using the variable name or we can print a specific value also.
```py
print(a)
print(a[0])
[ 2  7  1 99  4]
2
```
*   We can also perform operations on arrays
```
a*2
a**2
a+b
```
*   We can create multidimensional arrays just by adding list brackets inside the list.
```
x = np.array([[2,5,8],[3,6,1]])
[[2 5 8]
 [3 6 1]]
```
*   Now we have a full table and now we can access it by using matrix ```row``` x ```column```
*   When we use ```x+7``` it basically adds ```7``` in every element of the array.
*   If I want a specific row just use the 1st row index in array.
```
x[0]
[2 5 8]
```
*   We can get the shape size or matrix dimensions by calling the shape() function with the matrix variable.
```
x.shape()
```
*   To get specific number of rows we use slicing tool
```
z[0:5]
```
# Diabetic Data
#from sklearn.datasets import load_diabetes
import pandas as pd

data = pd.read_csv('http://13.234.66.67/summer19/datasets/diabetest.csv')

# now printing schema of data
data.info()

# Describing the data
data.describe()

# printing original data top 5 columns
data.head(5)

# plot a particular column with count using seaborn
import seaborn as sb
sb.countplot(data['Pregnancies'])

sb.countplot(df['Glucose'])

data.hist(figsize=(15,20))

sb.pairplot(data)



# Extract Attribute from Data Frame
features = data.iloc[:,0:8].values

# Extract Label from Data Frame
label = data.iloc[:,8].values
label

label.shape

# DAY 15
# MACHINE LEARNING
-----
## Notes
  * Data is all about business these days
  * combination of science and data to generate and valuabe data to be used in Business is DATA SCIENCE
  * Python cannot process more then 10GB data at once
  * Machine learning is logical analysis of data to accurately do your work
  * AI is a kind of project management (e.g, autodriving of car)
  * Matlab is a mixture of numpy,pandas,seaborn,matplotlib
  * Collection of homogenous values is array
  * slashlinuxcode.blogspot.com use to study about numpy

## Data Science
 * In this domain we have:
  1. Bigdata -> domain to store and process , very large amount of data
  2. Machine Learning - > an sorted data is taken from bigdata to be used

## Machine Learning
  * A branch in which we teach something to ML and it keeps on learning using logical approach and datasets available to it
  * it will be a communication between user and machine in the language of maths
  * Libraries to be used mostly to deal with data and visualize it :
    1. Numpy
    2. Pandas
    3. SeaBorn
    4. Matplotlib

  * basic data structures used :
    1. list
    2. tuple
    3. for
    4. set

## NUMPY
  * Numerical Python or numpy
  * library to use numeric data
  * its advanced version is Tensor Flow
  * stores and process data in the form of array

## Data Processing and Visualization
  * its better to represent the data in graphical form rather then numerical values
  * Libraries popularly used for Visualization are:
    1. MPLD3
    2. matplotlib
    3. Seaborn
    4. gnuplot
    5. Dash

## MATPLOTLIB
  * its an open source project and we can be contribute in it
  * to delete a module which is imported use
  ```python
  del module-name
  ```

