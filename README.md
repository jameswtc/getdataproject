Coursera: Getting and Cleaning Data Project
===========================================

This repository is for the project of the "Getting and Cleaning Data" course, as part of the Coursera "Data Science" specialization track programme.

This R script in this repository produces an independent dataset deriving from the database of "Human Activity Recognition Using Smartphone" experiments, obtained from the Center for Machine learning and Intelligent Systems, University of California, Irvine. The full description about the experiment is available on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The experiments measured 561 variables, using the Samsung Galaxy S smartphone for six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) from 30 volunteers, of the following:

1. The Triaxial Acceleration from the accelerometer (total acceleratio) and the estimated body acceleration, and 
2. The Triaxial Angular velocity from the gyroscope  

The resulting dataset produced by the R Script in this repository contains ONLY the average of the mean and the standard deviation of each measurement for each of the six activitivies of each subject. 

Data processing procedure
=========================
The R script does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Requirements
============
The script requires the R programme to run, either from the comman line interface or using the RStudio. It can be run in most modern computer with minimum specifications without any problems.

The script also requires the R package `data.table` to be installed before running the script. The package can be installed by executing the following command in R console:

```
install_packages("data.table)
```

The script reads the raw data from the working directory `data`. 

The original data can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. After downloading, unzip the zip file and copy/move everything under the  `UCI HAR Dataset` folder to the `data` folder (create the `data` folder if it does not already exist).

Running the script
==================

The data processing process can be run by running the `run_analysis.R` script using the following command:

```
source("run_analysis.R")
```

(Make sure that the working directory is set to the same location as `run_analysis.R`)

The script may take few minutes to complete depending on the computer.
