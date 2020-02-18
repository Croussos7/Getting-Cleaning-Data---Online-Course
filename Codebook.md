## CODEBOOK FOR EXPLANATION OF DATA, VARIABLES, TRANSFORMATIONS AND CLEANING

**DATA**

The dataset used was obtained from UC Irvine Machine Learning Repository and its full title is 'Human Activity Recognition Using Smartphones'. It can be found in this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

|**SIGNALS FOR EACH AXIAL** |**VARIABLES FOR EAXH SIGNAL**|
|-------                    |-------|
|tBodyAcc-XYZ             |mean(): Mean value|
|tGravityAcc-XYZ          |std(): Standard deviation|
|tBodyAccJerk-XYZ         |mad(): Median absolute deviation|
|tBodyGyro-XYZ            |max(): Largest value in array|
|tBodyGyroJerk-XYZ        |sma(): Signal magnitude area|
|tBodyAccMag              |energy(): Energy measure. Sum of the squares divided by the number of values.|
|tGravityAccMag           |iqr(): Interquartile range|
|tBodyAccJerkMag          |entropy(): Signal entropy|
|tBodyGyroMag             |arCoeff(): Autorregresion coefficients with Burg order equal to 4|
|tBodyGyroJerkMag         |correlation(): correlation coefficient between two signals|
|fBodyAcc-XYZ             |maxInds(): index of the frequency component with largest magnitude|
|fBodyAccJerk-XYZ         |meanFreq(): Weighted average of the frequency components to obtain a mean frequency|
|fBodyGyro-XYZ            |skewness(): skewness of the frequency domain signal|
|fBodyAccMag              |kurtosis(): kurtosis of the frequency domain signal|
|fBodyAccJerkMag          |bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.|
|fBodyGyroMag             |angle(): Angle between to vectors.|
|fBodyGyroJerkMag|           
                             
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

|**ADDITIONAL VARIABLES**|
|-------|
|gravityMean|
|tBodyAccMean|
|tBodyAccJerkMean|
|tBodyGyroMean|
|tBodyGyroJerkMean|




The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

 **VARIABLES**
 The new tidy dataset contains the following variables:
 
1.Subject : Person's indicated from 1-30

2.Activity : Indicating which one of the 6 activities was undertaken for the particular measurement

3.tBodyAcc-MEAN-X

4.tBodyAcc-MEAN-Y

5.tBodyAcc-MEAN-Z

6.tBodyAcc-STD-X

7.tBodyAcc-STD-Y

8.tBodyAcc-STD-Z

9.tGravityAcc-MEAN-X

10.tGravityAcc-MEAN-Y

11.tGravityAcc-MEAN-Z

12.tGravityAcc-STD-X

13.tGravityAcc-STD-Y

14.tGravityAcc-STD-Z

15.tBodyAccJerk-MEAN-X

16.tBodyAccJerk-MEAN-Y

17.tBodyAccJerk-MEAN-Z

18.tBodyAccJerk-STD-X

19.tBodyAccJerk-STD-Y

20tBodyAccJerk-STD-Z

21.tBodyGyro-MEAN-X

22.tBodyGyro-MEAN-Y

23.tBodyGyro-MEAN-Z

24.tBodyGyro-STD-X

25.tBodyGyro-STD-Y

26.tBodyGyro-STD-Z

27.tBodyGyroJerk-MEAN-X

28.tBodyGyroJerk-MEAN-Y

29.tBodyGyroJerk-MEAN-Z

30.tBodyGyroJerk-STD-X

31.tBodyGyroJerk-STD-Y

32.tBodyGyroJerk-STD-Z

33.tBodyAccMag-MEAN

34.tBodyAccMag-STD

35.tGravityAccMag-MEAN

36.tGravityAccMag-STD

37.tBodyAccJerkMag-MEAN

38.tBodyAccJerkMag-STD

39.tBodyGyroMag-MEAN

40.tBodyGyroMag-STD

41.tBodyGyroJerkMag-MEAN

42.tBodyGyroJerkMag-STD

43.fBodyAcc-MEAN-X

44.fBodyAcc-MEAN-Y

45.fBodyAcc-MEAN-Z

46.fBodyAcc-STD-X

47.fBodyAcc-STD-Y

48.fBodyAcc-STD-Z

49.fBodyAccJerk-MEAN-X

50.fBodyAccJerk-MEAN-Y

51.fBodyAccJerk-MEAN-Z

52.fBodyAccJerk-STD-X

53.fBodyAccJerk-STD-Y

54.fBodyAccJerk-STD-Z

55.fBodyGyro-MEAN-X

56.fBodyGyro-MEAN-Y

57.fBodyGyro-MEAN-Z

58.fBodyGyro-STD-X

59.fBodyGyro-STD-Y

60.fBodyGyro-STD-Z

61.fBodyAccMag-MEAN

62.fBodyAccMag-STD

63.fBodyBodyAccJerkMag-MEAN

64.fBodyBodyAccJerkMag-STD

65.fBodyBodyGyroMag-MEAN

66.fBodyBodyGyroMag-STD

67.fBodyBodyGyroJerkMag-MEAN

68.fBodyBodyGyroJerkMag-STD
                            
**TRANFORMATIONS**      
The following transformations were undertaken

1) Name transformations, capital letters and removal of brackets
2) Format transformations- Subject,Activity as factors, all other variables which are measuremnts are numbers
                            
                             
                            
                            
                            
        
                             
                           
               




