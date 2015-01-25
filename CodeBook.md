This codebook documents the variables in the dataset produced for the project assignment for the "Getting and Cleaning Data" course.  The dataset consists of the group averages of the measurements taken on the mean and standard deviation for each measurement, where the measurements have been grouped by activity and subject. The original measurements are collected from accelerometers used in an experiment on the Samsung Galaxy S smartphone.  A full description of the experiment and original dataset is available at this website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

There are 6 activities and 30 subjects. A group consists of an activity and a subject, giving 180 groups.  Each row in the dataset represents the average measurements for a group.  The dataset has 180 rows and 75 columns.  Each row contains the group averages of the 73 features selected from the 561 features from the Samsung dataset.The first column is Activity, the second is Subject, and the following 73 columns are the measurements for the features.  The columns are described as follows:

1. Activity

   This column contains the activity labels.
   Values are:
   * WALKING
   * WALKING_UPSTAIRS
   * WALKING_DOWNSTAIRS
   * SITTING
   * STANDING
   * LAYING

2. Subject

  This field contains the ID of the subject who took part in the experiment.  Values range from 1 to 30 for a total of 30 subjects.


The following list consists of the names of the group averages for the selected 73 features from the original Samsung dataset.  The averages are bounded within [-1,1].  For a full explanation on each feature, please refer to the "features.txt" and "features_info.txt" documentation files for the Samsung dataset. For example, the explanation of the feature "Avg.tBodyAcc.mean.X" can be found in the original documentation for the corresponding feature "tBodyAcc.mean.X".
 
   * Avg.tBodyAcc.mean.X 
   * Avg.tBodyAcc.mean.Y 
   * Avg.tBodyAcc.mean.Z 
   * Avg.tBodyAcc.std.X 
   * Avg.tBodyAcc.std.Y 
   * Avg.tBodyAcc.std.Z 
   * Avg.tGravityAcc.mean.X 
   * Avg.tGravityAcc.mean.Y 
   * Avg.tGravityAcc.mean.Z 
   * Avg.tGravityAcc.std.X 
   * Avg.tGravityAcc.std.Y 
   * Avg.tGravityAcc.std.Z 
   * Avg.tBodyAccJerk.mean.X 
   * Avg.tBodyAccJerk.mean.Y 
   * Avg.tBodyAccJerk.mean.Z 
   * Avg.tBodyAccJerk.std.X 
   * Avg.tBodyAccJerk.std.Y 
   * Avg.tBodyAccJerk.std.Z 
   * Avg.tBodyGyro.mean.X 
   * Avg.tBodyGyro.mean.Y 
   * Avg.tBodyGyro.mean.Z 
   * Avg.tBodyGyro.std.X 
   * Avg.tBodyGyro.std.Y 
   * Avg.tBodyGyro.std.Z 
   * Avg.tBodyGyroJerk.mean.X 
   * Avg.tBodyGyroJerk.mean.Y 
   * Avg.tBodyGyroJerk.mean.Z 
   * Avg.tBodyGyroJerk.std.X 
   * Avg.tBodyGyroJerk.std.Y 
   * Avg.tBodyGyroJerk.std.Z 
   * Avg.tBodyAccMag.mean 
   * Avg.tBodyAccMag.std 
   * Avg.tGravityAccMag.mean 
   * Avg.tGravityAccMag.std 
   * Avg.tBodyAccJerkMag.mean 
   * Avg.tBodyAccJerkMag.std 
   * Avg.tBodyGyroMag.mean 
   * Avg.tBodyGyroMag.std 
   * Avg.tBodyGyroJerkMag.mean 
   * Avg.tBodyGyroJerkMag.std 
   * Avg.fBodyAcc.mean.X 
   * Avg.fBodyAcc.mean.Y 
   * Avg.fBodyAcc.mean.Z 
   * Avg.fBodyAcc.std.X 
   * Avg.fBodyAcc.std.Y 
   * Avg.fBodyAcc.std.Z 
   * Avg.fBodyAccJerk.mean.X
   * Avg.fBodyAccJerk.mean.Y 
   * Avg.fBodyAccJerk.mean.Z 
   * Avg.fBodyAccJerk.std.X 
   * Avg.fBodyAccJerk.std.Y 
   * Avg.fBodyAccJerk.std.Z 
   * Avg.fBodyGyro.mean.X 
   * Avg.fBodyGyro.mean.Y 
   * Avg.fBodyGyro.mean.Z 
   * Avg.fBodyGyro.std.X 
   * Avg.fBodyGyro.std.Y 
   * Avg.fBodyGyro.std.Z 
   * Avg.fBodyAccMag.mean 
   * Avg.fBodyAccMag.std 
   * Avg.fBodyBodyAccJerkMag.mean 
   * Avg.fBodyBodyAccJerkMag.std 
   * Avg.fBodyBodyGyroMag.mean 
   * Avg.fBodyBodyGyroMag.std 
   * Avg.fBodyBodyGyroJerkMag.mean 
   * Avg.fBodyBodyGyroJerkMag.std 
   * Avg.angle.tBodyAccMean.gravity 
   * Avg.angle.tBodyAccJerkMean.gravityMean 
   * Avg.angle.tBodyGyroMean.gravityMean 
   * Avg.angle.tBodyGyroJerkMean.gravityMean 
   * Avg.angle.X.gravityMean 
   * Avg.angle.Y.gravityMean 
   * Avg.angle.Z.gravityMean





