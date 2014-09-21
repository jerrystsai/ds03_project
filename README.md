README
--------------------
The file **run_analysis.R**:

- Loads and processes these data:
    - /train/subject_train.txt
    - /train/X_train.txt
    - /train/y_train.txt
    - /test/subject_test.txt
    - /test/X_test.txt
    - /test/y_test.txt
    - features.txt
    - activity_labels.txt
- Extracts only the measurements in the data (X matrix) that correspond to a mean or a standard deviation
- Appropriately labels the data set with descriptive variable names
- Merges the training and test sets to create one data set
- Uses descriptive activity names to name the activities in the data set
- From the resulting data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject
- Writes this data set to a text file, tidy_ds.txt
