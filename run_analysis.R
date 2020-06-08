run_analysis <- function(){
    #Assume dataset folder is in working directory per assignment instructions
    data_set_folder_path <- paste(getwd(), "UCI HAR Dataset", sep = "/")
    
    #Load the activity labels and feature names
    activity_labels <- read.table(paste(data_set_folder_path, "activity_labels.txt", sep = "/"))
    features <- read.table(paste(data_set_folder_path, "features.txt", sep = "/"), colClasses = "character")
    
    #Set train data path and load data, activity and subject data sets
    train_path <- paste(data_set_folder_path, "train", sep = "/")
    train_data <- read.table(paste(train_path, "X_train.txt", sep = "/"))
    train_activity <- read.table(paste(train_path, "y_train.txt", sep = "/"))
    train_subject <- read.table(paste(train_path, "subject_train.txt", sep = "/"))
    train_data <- cbind(train_subject, train_activity, train_data)
    
    #Set test data path and load data, activity and subject data sets
    test_path <- paste(data_set_folder_path, "test", sep = "/")
    test_data <- read.table(paste(test_path, "X_test.txt", sep = "/"))
    test_activity <- read.table(paste(test_path, "y_test.txt", sep = "/"))
    test_subject <- read.table(paste(test_path, "subject_test.txt", sep = "/"))
    test_data <- cbind(test_subject, test_activity, test_data)
    
    #Combine the train and test data
    total_data <- rbind(train_data, test_data)
    
    #Set the column names with the list of features to make descriptive column variable names
    colnames(total_data) <- c("Subject", "Activity", features[,2])
    
    #Find column names with "mean" or "std" in the name to get mean and standard deviation data
    #Due to duplicate column names, the "select" function from dplyr cannot be used
    mean_cols <- grep("mean", colnames(total_data))
    std_cols <- grep("std", colnames(total_data))
    
    #Get columns 1 and 2 (subject and activity) and all those found with grep above
    filtered_data <- total_data[,c(1, 2, mean_cols, std_cols)]
    
    #Create the final data set with dplyr operations
    #1: Group by subject and activity
    #2: Create summary values for all other columns which are the mean for that group (Subject, Activity)
    #3: Use mutate to create a column of activity labels in addition to the numeric column for readability
    #4: Reselect columns to reorder the added column to be next to the activity
    final_data <- filtered_data %>%
        group_by(Subject, Activity) %>%
        summarize_all(mean) %>%
        mutate(Activity_Labels = activity_labels[Activity, 2]) %>%
        select(Subject, Activity, Activity_Labels, everything())
    
    write.table(final_data, file = "TidyData.txt", row.names = FALSE)
}