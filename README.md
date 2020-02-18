# Getting & Cleaning-Data - Online-Course

## Analysis files used

The dataset used was obtained from UC Irvine Machine Learning Repository and its full title is 'Human Activity Recognition Using Smartphones'. It can be found in this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The analysis files found in this zip file are :
  1. ***features.txt*** : description of the differerent feautures of which data are collected through the accelerometers from the Samsung                           Galaxy S smartphone(561 variables)
  2. ***activity_labels.txt*** : description of the differerent acitivities undertaken for the collection of data (6 activities)
  3. ***train/X_train.txt*** : training set of measurements (71.4% of total observations - 7352 obesrvations)
  4. ***test/X_test.txt*** : testing set of measurements (28.6% of total observations - 2947 observations)
  5. ***train/subject_train.txt*** : persons' identification number, for each measurement taken through the different activities for the training set (numbers from 1-30 ,7352 obesrvations )
  6. ***test/subject_test.txt*** :  persons' identification number,for each measurement taken through the different activities for the testing set (numbers from 1-30, 2947 observations)
  7. ***train/y_train.txt*** : Activity identification for each measurement taken in the training set (1-6, 7352 obesrvations )
  8. ***test/y_test.txt*** : Activity identification for each measurement taken (1-6, 2947 observations)

## Explaining the steps of the script code

_Step 1_

Downloading the zip file, in a 'data' directory, unzipping the contents and loading the datasets concenring the testing and training sets and assigning them to their own objects through read.table command.

_Step 2_

Loading the feautures file and assigning it into its own object through read.table command. Exploring the structure of the object and formating the variables to the structure needed. Extract the feautres requested through the regular expression functions and assign it into an 'index' object

_Step 3_

Subset the training and testing datasets based on the feautures needed from the 'index' object and bind in each respective dataset its _Activities_ and its _Subjects_. Accordingly row bind the two datasets to create a new merged dataset.

_Step 4_

Create a new object FeatureNames containing only the names of the selected measurements and perform regular expression function to clear the names. Accordingly name the variables on the new tidy dataset as Subject, Activity and the names from the FeautureNames for each measurement

_Step 5_

Load the activity_labels file assign it to its own object and perform basic format transformations. Accordingly name properly the activities in the tidy dataset based on their numbers. The dataset now is completely tidy.

_Step 6_

Transform _Subject_ and _Activity_ into factors. Accordingly create a new dataset metling the data into Activity and Subject. Proceed with using dcast to calculate the mean of each meausurement for each activity of each subject (person). Assign it into a new object and write a new txt file based on the new object.
