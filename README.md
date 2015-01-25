# GetCleanDataProject

There is only a single script "run_analysis.R".  It assumes that the data files are found in a folder named "UCI HAR Dataset" in the R working directory.  

The input files are:
  * ./test/X_test.txt          This contains the IDs of the test subjects.
  * ./test/y_test.txt          This contains the activity codes for the test data.
  * ./test/subject_test.txt    This contains the measurements for the variables for the test subjects.
  * ./train/y_train.txt        This contains the IDs of the training subjects.
  * ./train/y_train.txt        This contains the activity codes for the training data.
  * ./train/subject_train.txt  This contains the measurements for the variables for the training subjects.
  * features.txt               This contains the variable names of measurements taken.

The script outputs a file to the working directory named "AvgGrp.txt".  The training and test data are merged, and an extracted dataset is created from the merged set by selecting the variables that are measurements on the mean and standard deviation for each measurement. The selected measurements include the measurements of the angles between mean variables and other variables.  Then the selected variables are grouped by activity and subjects, and the averages of the variables are computed for each group.  The averages of each group are output to "AvgGrp.txt"  The first line of the output file contains the column names for the dataset.
