#
# name: run_analysis.R
# author: Jerry Tsai
# last updated: 2014-09-21
# For DS03: Getting and Cleaning Data, Project
#

#
# Initialize
#

library(plyr)

#
# Load and pre-process data
#

setwd("/Users/JerryTsai/userjst/individ/knowledg/cur/jhu.sph/ds03_getdata/project/UCI HAR Dataset")

## Define filenames
train_subjects_file <- "./train/subject_train.txt"
train_X_file <- "./train/X_train.txt"
train_y_file <- "./train/y_train.txt"

test_subjects_file <- "./test/subject_test.txt"
test_X_file <- "./test/X_test.txt"
test_y_file <- "./test/y_test.txt"

## Read in data
train.X <- read.table(train_X_file, sep="")
train.y <- read.table(train_y_file, sep="")
train.subject <- read.table(train_subjects_file, sep="")

test.X <- read.table(test_X_file, sep="")
test.y <- read.table(test_y_file, sep="")
test.subject <- read.table(test_subjects_file, sep="")

## Read in feature names
features_file <- "./features.txt"
features <- read.table(features_file, sep="")
names(features) <- c("id", "feature.name")

## Assign feature names to X variables
feature.names <- features$feature.name
names(train.X) <- feature.names
names(test.X) <- feature.names

#
# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement.
#
# Subset X data to only those variables that are means or standard deviations.
#
# Note that this does NOT include the meanFreq() variables, which are
#   described as "weighted average[s] of the frequency components to 
#   obtain a mean frequency" as each signal that had a "meanFreq" also
#   had a "mean".
# Nor did this include variables with "gravityMean" in their names, which 
#   are angles.

train.X.mean.std <- train.X[, c(
    grep("mean[(][)]", feature.names, ignore.case=TRUE),  
    grep("std[(][)]", feature.names, ignore.case=TRUE)), ]

test.X.mean.std <- test.X[, c(
    grep("mean[(][)]", feature.names, ignore.case=TRUE),  
    grep("std[(][)]", feature.names, ignore.case=TRUE)), ]

## Check work
## dim(test.X.mean.std)
## str(test.X.mean.std)

#
# 4. Appropriately label the data set with descriptive variable names
#

feature.names.mean.std <- names(train.X.mean.std)
descriptive.feature.names.mean.std <- 
    character(length=length(feature.names.mean.std))

for (i in seq_along(feature.names.mean.std)) {
    temp.text <- feature.names.mean.std[i]
    temp.text <- gsub("BodyBody", "Body", temp.text)
    temp.text <- gsub("BodyAccJerk", ".body.linear.acceleration", temp.text)
    temp.text <- gsub("BodyGyroJerk", ".body.angular.velocity", temp.text)
    temp.text <- gsub("BodyAcc", ".body.acceleration", temp.text)
    temp.text <- gsub("BodyGyro", ".body.angular.acceleration", temp.text)
    temp.text <- gsub("GravityAcc", ".gravity.acceleration", temp.text)
    temp.text <- gsub("Mag", ".magnitude", temp.text)
    temp.text <- gsub("()", "", temp.text, fixed=TRUE)
    temp.text <- gsub("-", ".", temp.text, fixed=TRUE)
    temp.text <- gsub("^t", "time", temp.text)
    temp.text <- gsub("^f", "freq", temp.text)
    descriptive.feature.names.mean.std[i] <- temp.text
}

## Label X variables with descriptive names
names(train.X.mean.std) <- descriptive.feature.names.mean.std
names(test.X.mean.std) <- descriptive.feature.names.mean.std

## Label subject variable(s) with descriptive names
names(train.subject) <- c("subject.id")
names(test.subject) <- c("subject.id")

## Name target variable
names(train.y) <- c("activity.id")
names(test.y) <- c("activity.id")

## Read in activity labels
activity_labels_file <- "./activity_labels.txt"
activity.labels <- read.table(activity_labels_file, sep="")
names(activity.labels) <- c("activity.id", "activity.name")

#
# 1. Merge the training and the test sets to create one data set
#
#
train.set <- cbind(source="train", train.y, train.subject, train.X.mean.std)
test.set <- cbind(source="test", test.y, test.subject, test.X.mean.std)

analysis.set <- rbind(train.set, test.set)

# 3. Use descriptive activity names to name the activities 
#    in the data set
#

descriptive.analysis.set <- 
    arrange(join(activity.labels, analysis.set), source, 
            subject.id, activity.name)

## Check work
## table(descriptive.analysis.set$activity.id, 
##       descriptive.analysis.set$activity.name)


#
# 5. From the data set in step 4, creates a second, independent tidy 
#    data set with the average of each variable for each activity and 
#    each subject.
#

wide.tidy.ds <- ddply(descriptive.analysis.set, 
                      .(activity.name, subject.id), numcolwise(mean))

## Create appropriate names for the measurements, which are means
tidy.ds.names <- names(wide.tidy.ds)
tidy.ds.names.appropriate <- character(length=length(tidy.ds.names))

for (i in 1:length(tidy.ds.names)) {
    if (i > 3) {
        tidy.ds.names.appropriate[i] <- paste("mean.", tidy.ds.names[i], sep="")
    }
    else tidy.ds.names.appropriate[i] <- tidy.ds.names[i]
}

names(wide.tidy.ds) <- tidy.ds.names.appropriate

#
# Create text file from tidy data set
#
# Please upload the tidy data set created in step 5 of the 
#   instructions. Please upload your data set as a txt file created 
#   with write.table() using row.name=FALSE (do not cut and paste a 
#   dataset directly into the text box, as this may cause errors 
#   saving your submission)

write.table(wide.tidy.ds, file="./tidy_ds.txt", row.names=FALSE)

