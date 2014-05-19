 The script called "run_analysis.R" will produce a dataset called "tidyDataset.txt" as long as the original Smasung data are in the working direcotry.
 
  I DATA DESCRIPTION
 
The tidyDataset is a  36 by 79 matrix of numerics. Each cell corresponds to the mean of the variable that gives its name to the column for the experiences that belong to the group that gives its name to the row.

Its columns are named:
 
 [1] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [3] "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
 [5] "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
 [7] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"           
 [9] "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[11] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[13] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[15] "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
[17] "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[19] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"             
[21] "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[23] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[25] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[27] "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
[29] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[31] "tBodyAccMag-mean()"              "tBodyAccMag-std()"              
[33] "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[35] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
[37] "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
[39] "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
[41] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[43] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"               
[45] "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[47] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
[49] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
[51] "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[53] "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[55] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"      
[57] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[59] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[61] "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
[63] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
[65] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[67] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"             
[69] "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[71] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
[73] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[75] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
[77] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[79] "fBodyBodyGyroJerkMag-meanFreq()"

Its rows are named:
[1] "WALKING"            "WALKING_UPSTAIRS"   "WALKING_DOWNSTAIRS"
 [4] "SITTING"            "STANDING"           "LAYING"            
 [7] "Subject  1"         "Subject  2"         "Subject  3"        
[10] "Subject  4"         "Subject  5"         "Subject  6"        
[13] "Subject  7"         "Subject  8"         "Subject  9"        
[16] "Subject  10"        "Subject  11"        "Subject  12"       
[19] "Subject  13"        "Subject  14"        "Subject  15"       
[22] "Subject  16"        "Subject  17"        "Subject  18"       
[25] "Subject  19"        "Subject  20"        "Subject  21"       
[28] "Subject  22"        "Subject  23"        "Subject  24"       
[31] "Subject  25"        "Subject  26"        "Subject  27"       
[34] "Subject  28"        "Subject  29"        "Subject  30"  


  II DATA TRANSFORMATION FROM THE ORIGINAL DATASET

1 RowBind the test and train data set
2 Name the columns after the names from the features dataset
3 Exclude the columns that does not contain "mean" or "std" in their name
4 Add an "Activity"" column from the test_labels and train_labels datasets
5 Add a "Subject" column from the test_subjects and train_subjects datasets
6 Create a new dataset where you calculate the mean for each variable for each activity and each subject.
