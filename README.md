# GettingAndCleaningFinalProject
Final Project for Getting and Cleaning Data with R Course

This project contains an R script called run_analysis.R, which acts on a specific data set.
The expected data set is the UCI HAR Dataset which contains processed accelerometer and gyroscope data from a Samsung Galaxy device. The information for the data set is as follows:  
### Human Activity Recognition Using Smartphones Dataset  
Version 1.0  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  

## The script has the following assumptions about the dataset:
1. There is a folder in the working directory called "UCI HAR Dataset".
2. The "UCI HAR Dataset" folder contains the files "activity_labels.txt" and "features.txt".
3. The "UCI HAR Dataset" folder contains two sub folders, "test" and "train". Inside each of those is the files "X_xxxxx.txt", "y_xxxxx.txt" and "subject_xxxxx.txt" where the five lowercase x's are the name of the subfolder, either "test" or "train".

## The script executes the following actions:
1. Activity labels and feature names are loaded into data frames from the "activity_labels.txt" and "features.txt" files respectively.
2. The "train" data is loaded from "X_train.txt", the activity numbers for each row are loaded from "y_train.txt", and the subject numbers for each row are loaded from "subject_train.txt".
3. The three sets of data from the previous step are combined by columns using cbind() into a "train" data frame.
4. The previous two steps are repeated with the "test" data.
5. The train and test data frames are combined by rows using rbind() into a combined data frame.
6. The columns of the combined data frame from the previous step are labeled with descriptive labels for each column variable. The first two are labeled "Subject" and "Activity", and the rest of the columns take their names from the data frame read in from the "features.txt" file.
7. Use grep() to get a vector of indices of the columns that contain the word "mean". Do the same for columns containing the word "std" (abbreviation for standard deviation).
8. Subset the columns of the total data frame to include the first two (Subject, and Activity) and all those columns found in the two grep searches in step 7. This filtered data frame contains the Subject and Activity columns, and only those remaining columns with either "mean" or "std" in the column name.
9. Using the dplyr package and the %>% operator, string together the final operations on the dataset as follows.
   1. Pass in the filtered data frame.
   2. Group by Subject and Activity
   3. Summarize all columns with mean() function to get the mean of each column per Subject and Activity combination.
   4. Use mutate to add a new column with the appropriate descriptive activity label obtained from the "activity_labels.txt" file.
   5. Use the select function to reorder the columns so that the descriptive activity label is next to the activity number and in front of of all the data.
10. Finally, use the write.table() function to output a text file containing the final tidy data set.
