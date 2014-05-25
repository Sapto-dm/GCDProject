# This file explains the different variables that are present in the tidydata.txt file
# There are six activities  and 30 subjects , so the resulting dataset has 180 records
# We start with the variable descriptions

## subject: 
has a value between 1 - 30 , uniquely identifies the subject. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

##Activity
activities can have the following six values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 
#subject and activity forms primary key for the records
#There are a total of 79 other attributes

#preprocessing that was already applied
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.
This file was generated from the below files

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.



- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'X_train.txt': Training set.

- 'y_train.txt': Training labels.

- 'X_test.txt': Test set.

- 'y_test.txt': Test labels.

-'subject_train.txt' : subject labels for train

-'subject-test.txt' : subject labels for test

Features are normalized and bounded within [-1,1]. 
The acceleration signals are expressed in standard gravity units 'g' The angular velocity vector measured have units as radians/second.

#The prefix in the name of the variable indicates whether it is a 't' time domain or a 'f' frequency domain attribute
#The string value in the name 'acc' indicates it is a measure from accelerometer , a string value 'gyro' indicates it is reading from gyroscope
#The string value in the name 'mag' indicates magnitude of these three-dimensional signals were calculated using the Euclidean norm

#Transformation applied

* The names , were changed the spaces were replaced by '.' and '()' was removed
* The mean value , for each activity and subject id combination is kept 

The complete list of variables of each feature vector is available in 'featurestidy.txt'









