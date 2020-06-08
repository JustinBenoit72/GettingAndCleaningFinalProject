# UCI HAR Dataset Analysis Codebook
The data for this data set come from accelerometer and gyroscope data of a Samsung Galaxy S II. The names of columns are taken from the original data set. In order to explain the format of the names, the following excerpt from the readme file of the original data set is included.  

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  

In the original dataset, different characteristics of the groups of data points were measured. While the original data set contained multiple different characteristics, for the purposes of this analysis, the only characteristics kept were mean and standard deviation. In other words, one measurement with the word "mean" in the variable name was originally the mean of a number of raw values in the original dataset.  

In this analysis, the columns of Subject and Activity were added. Subject is a number 1-30 to indicate the 30 different subjects. Activity is a number 1-6 to indicate the 6 different activities during which data were collected. Activity_Labels is a column with a descriptive name of the activity of each data point. All data were grouped by subject and activity, and then each variable was averaged by group.

For example, in the output dataset, the column of "tBodyAcc-mean()-X" represents the mean of all of the mean values of time domain body accelerometer data in the X axis for each specific activity of each subject. For another example, the column of "fBodyGyroJerkMag-std()" represents the mean of all of the standard deviation values of the magnitude of the frequency domain body gyroscope jerk for each specific activity of each subject.

### List of Variables in Output Dataset
Subject  
Activity  
Activity_Labels  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyAccMag-mean()  
tGravityAccMag-mean()  
tBodyAccJerkMag-mean()  
tBodyGyroMag-mean()  
tBodyGyroJerkMag-mean()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyAccMag-mean()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroJerkMag-mean()  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-std()  
tGravityAccMag-std()  
tBodyAccJerkMag-std()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-std()  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-std()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-std()
