courseraProjectCourse3
======================
This script has been written to answer the coursera class called "Getting and Cleaning Data".

It reads the Samsung files given by the course as long as they are in the working repository and writes a new dataset called "tidyDataset.txt" that respects the requirements of the project.

First, the script will read all the usefull datasets and store them in varables:
-test: X_test.txt
-train: X_train.txt

-test_labels: y_test.txt
-train_labels: y_train.txt

-features: features.txt
-activity: activity_labels.txt

-test_subjects: subject_test.txt
-train_subjects: subject_train.txt

The, it applies the following operations to the dataset:

  1  Merges the training and the test sets to create one data set.
  2  Extracts only the measurements on the mean and standard deviation for each measurement. 
  3  Uses descriptive activity names to name the activities in the data set
  4  Appropriately labels the data set with descriptive activity names. 
  5  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

