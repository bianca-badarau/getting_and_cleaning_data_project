## run_analysis.R script

The script performs the following steps:

1.  Loads plyr and dplyr libraries, from which the script calls several functions in subsequent steps
2.  Checks whether the zip file with initial data is available in working directory. If not, the zip file is downloaded and unzipped.
3.  Reads all data needed for the final set into R: train and test data files, feature file, subject identifiers and activity labels.
4.  Peforms a few search&replace cleaning actions on the feature names
5.  Merges the train and test sets
6.  Creates a new data frame containing only variables that represent means or standard deviations, using a subsetting combined with grep(). meanFreq() is not included in the resulting 66 variables.
7.  Adds the loaded feature names as column names to the resulting data frame
8.  Adds the subject identifiers and activities as 2 separate columns - "Subject" and "Activity" - using mutate().
9.  Groups the data based on subject identifier and activity using group_by().
10. Summarizes the variable measurements as means calculated per each subject and each activity, using summarise_each().
11. Writes the tidy data set to a .txt file.   