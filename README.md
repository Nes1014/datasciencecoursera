Section 1. 
THis sector Merges the training and the test sets to create one big data set.

After setting the source directory for the files, The data is put into tables

features.txt
activity_labels.txt
subject_train.txt
x_train.txt
y_train.txt
subject_test.txt
x_test.txt
y_test.txt

Column names are given and merged to create one data set.

Section 2. 
Extracts only the measurements on the mean and standard deviation for each measurement.

Then a logcal vector is created that contains TRUE values for the ID, mean and STDEV columns and FALSE values for any others. Subset this data to keep only the necessary columns.

Section 3. 
Use descriptive activity names to name the activities in the data set

Merges data subset with the activityType table to include the descriptive activity names

Section 4. 
Appropriately labels the data set with descriptive activity names.

Use gsub function for pattern replacement to clean up the data labels.

Section 5. 
Create a second tidy data set with the average of each variable for each activity and each subject.
