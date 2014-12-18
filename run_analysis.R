library(data.table)

######################
## Get and load the raw data into memory
######################

# First load the raw data of test subjects
x_test <- data.table(read.table("data/test/X_test.txt"))
y_test <- data.table(read.table("data/test/y_test.txt"))
subject_test <- data.table(read.table("data/test/subject_test.txt"))

# Combine all data into a single table
test_data <- cbind(subject_test, y_test, x_test)

# Then, load the raw data of train subjects
x_train <- data.table(read.table("data/train/X_train.txt"))
y_train <- data.table(read.table("data/train/y_train.txt"))
subject_train <- data.table(read.table("data/train/subject_train.txt"))

# As before, combine all data into single table
train_data <- cbind(subject_train, y_train, x_train)

# Adding both test and train data into a large master table which includes
# everything from the raw files.
master_data <- rbind(test_data, train_data)

######################
## Now we have the master table for all raw data. It's now time to include also
## relevant information to the master table, and rename the column meaningfully
######################

# Get the activity labels  
activity <- data.table(read.table("data/activity_labels.txt"))
setnames(activity, 1:2, c("activityId", "activity"))

# Rename the first 2 columns of the master data, which are the subject 
# and activityId respectively
setnames(master_data, 1:2, c("subject", "activityId"))

# Use merge() to join the table, which will append the activity label in new row
# to the corresponding activityId in each row. This will form the complete set of
# raw data.
setkey(master_data, activityId); setkey(activity, activityId)
complete <- merge(master_data, activity)

######################
## The column names of all 561 measurements in raw data (automatically named 
## V1:V561 in the 'complete' data table) are supplied in the features.txt file.
## Now, it is time to extract only interested columns, which are the mean and
## standard deviation of each measurements.
######################

# Load all 561 features into the memory
features <- data.table(read.table("data/features.txt"))

# Extract only mean and standard deviation of each measurement
required_features <- grep("-(mean|std)\\(\\)", features$V2)
required_features_names <- features$V2[grep("-(mean|std)\\(\\)", features$V2)]

# Format for the column name. Here simply reuse the name but by replacing 
# dash ('-') with underscore ('_') and removing the brackets ('()')
required_features_names <- gsub("-", "_", required_features_names)
required_features_names <- gsub("\\(\\)", "", required_features_names)

# Column 1 and 2 are subject and activityID respectively in the 'complete'
# data table. Hence push 2 columns to the back
required_features <- required_features + 2

# Now a clean data set is produced, with only measurements of interest are
# included by subsetting the 'complete' data table. Lastly, rename the column
# with formatted column name on 'clean' data table. Free unused objects.
clean <- complete[, c(2, ncol(complete), required_features), with = FALSE]
setnames(clean, 3:ncol(clean), required_features_names)

######################
## Finally, manipulate the 'clean' data table by averaging the measurements
## of mean and standard deviation for each subject and the respective activity
######################
tidy_set <- clean[, lapply(.SD, mean), by = list(subject, activity), .SDcols=required_features_names]
tidy_set <- tidy_set[order(subject, activity)]

# Rename the columns to give more self-descriptive, by pre-pending 
# 'avg_' to each measurements to denote the averages (means) of all repeated
# measurements
new_column_names <- gsub("^", "avg_", required_features_names)
setnames(tidy_set, required_features_names, new_column_names)

# Lastly, output the tidy_set data table to a text file
write.table(tidy_set, file = "tidy_set.txt", row.name = FALSE)
