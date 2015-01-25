library( dplyr )

# get the test data
testDf <- read.table(".//UCI HAR Dataset//test//X_test.txt")
testActivityCodes <- read.table( ".//UCI HAR Dataset//test//y_test.txt", stringsAsFactors=FALSE )
testSubjects <- read.table( ".//UCI HAR Dataset//test//subject_test.txt", stringsAsFactors=FALSE )
testData <- cbind( testActivityCodes, testSubjects,  testDf )

# get the training data
trainDf <- read.table(".//UCI HAR Dataset//train//X_train.txt")
trainActivityCodes <- read.table( ".//UCI HAR Dataset//train//y_train.txt", stringsAsFactors=FALSE )
trainSubjects <- read.table( ".//UCI HAR Dataset//train//subject_train.txt", stringsAsFactors=FALSE )
trainData <- cbind( trainActivityCodes, trainSubjects, trainDf )

# merge the test and training data into one set
mergedData <- rbind( trainData, testData )

# set the column names for the merged dataset
featureNames<- read.table(".//UCI HAR Dataset//features.txt", stringsAsFactors=FALSE)
mData <- tbl_df( mergedData )
colnames( mData ) = make.names( c( "Activity", "Subject",  featureNames$V2 ), unique=TRUE )

# pick out the feature names of measurements on mean and std deviation
# for each measurement
i <- names(mData)[ grep("Mean|mean\\.|[Ss]td\\.", names(mData)) ]
ii <- match( i, names(mData) )

# extract desired features
exData <- select( mData, 1:2, ii )

# get the activity names and label the activities 
activityNames<-c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
exData<-mutate( exData, Activity=activityNames[ Activity ] )

# group the extracted dataset by Activity and Subject
exGrpData <- group_by( exData, Activity, Subject )
summExGrpData <- summarise_each( exGrpData, funs(mean) )

# assign appropriate names to the variables by prepending "Avg."
colnames1 <- sub( "[\\.]+$", "", names(summExGrpData))
colnames2 <- sub( "[\\.]{2,}", "\\.", colnames1)
colnames3 <- c( colnames(summExGrpData)[1:2], paste( "Avg.", colnames2[3:75], sep="" ) )
colnames( summExGrpData) = make.names( colnames3, unique=TRUE )

# write to destination file "GrpAvg.txt"
write.table( summExGrpData, file="GrpAvg.txt", row.name=FALSE, quote=FALSE )
