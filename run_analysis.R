# load required libraries
library(plyr)
library(dplyr)

# check if project folder exist, otherwise download and unzip
# the folder

if (!file.exists("./UCI HAR Dataset")) {
    zip_url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(zip_url, destfile = "project_data.zip")
    unzip("project_data.zip")
}

# read train data, test data, features, subjects and activities

train_data <- read.table("./UCI HAR Dataset/train/X_train.txt", sep = "")
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt", sep = "")
features <- read.table("./UCI HAR Dataset/features.txt", 
            colClasses = c(rep("NULL", 1), rep("character", 1)))[,1]
subj_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")[,1]
activ_train <- read.table("./UCI HAR Dataset/train/y_train.txt")[,1]
subj_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")[,1]
activ_test <- read.table("./UCI HAR Dataset/test/y_test.txt")[,1]

# small changes to the feature names

searches <- c("-", "\\(\\)", "BodyBody")
replaces <- c("_", "", "Body")
for (i in 1:length(searches)) {
    features <- gsub(searches[i], replaces[i], features)
}

# merge train and test data and extract means and standard deviations

merged_data <- rbind(train_data, test_data)
names(merged_data) <- features
means_stds <- merged_data[,grep("mean(_.*)?$|std", names(merged_data))]

# add subjects and activities

all_subj <- as.character(c(subj_train, subj_test))
all_activ <- as.factor(c(activ_train, activ_test))
mapped_activ <- revalue(all_activ, 
                    c("1"="WALKING", "2"="WALKING_UPSTAIRS",
                    "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING",
                    "5" = "STANDING", "6" = "LAYING"))

all_data <- mutate(means_stds, Subject = all_subj, Activity = mapped_activ)

# create tidy data

clean_data <- all_data %>% 
    group_by(Subject, Activity) %>%
    summarise_each(funs(mean))
    
write.table(clean_data, file = "Project_tidy_data.txt", 
            sep = "\t", row.names = FALSE)




