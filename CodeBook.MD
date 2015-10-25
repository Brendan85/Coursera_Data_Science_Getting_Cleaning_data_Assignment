# Code Book

## Goal of function
  * Here we will summarise and tidy the data from an experiment regarding accelerometers use in Smart Phones

## About the experiment
  * The experiment is here:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  * The raw data is here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  * Authorod buy: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.

## How the code works
  * The code pulls in the data provided you're in the file where the data was downloaded to
  * It pulls the test and trail data with it's corresponding row and column names
  * The code names the columns and rows correctly then merges the two data sets together
  * Once together we then pull out only the mean and standard deviation of the variables
  * With the desired variables, we now match the variables with their correct names e.g. "WALKING"
  * Using the melt function we summarise the data in a better way so we can average out the variables
  * Use the dcast function average out our variables: mean and standard deviation for each subject doing each activity
  * Finally we write the data to the file


## Variables in Tidy data
 * The variables we are interested in is summarised in a few way. 
 * The subjects of the experiment are summarised by subjectID 1-30
 * The activity is summarised by activityID: 1-6: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 * Finally the measured variables are as follows and form the majority of our rows. These are the average value for each of these, given we had a number of measurements

  * tBodyAcc-mean()-X
  * tBodyAcc-mean()-Y
  * tBodyAcc-mean()-Z
  * tBodyAcc-std()-X
  * tBodyAcc-std()-Y
  * tBodyAcc-std()-Z
  * tGravityAcc-mean()-X
  * tGravityAcc-mean()-Y
  * tGravityAcc-mean()-Z
  * tGravityAcc-std()-X
  * tGravityAcc-std()-Y
  * tGravityAcc-std()-Z
  * tBodyAccJerk-mean()-X
  * tBodyAccJerk-mean()-Y
  * tBodyAccJerk-mean()-Z
  * tBodyAccJerk-std()-X
  * tBodyAccJerk-std()-Y
  * tBodyAccJerk-std()-Z
  * tBodyGyro-mean()-X
  * tBodyGyro-mean()-Y
  * tBodyGyro-mean()-Z
  * tBodyGyro-std()-X
  * tBodyGyro-std()-Y
  * tBodyGyro-std()-Z
  * tBodyGyroJerk-mean()-X
  * tBodyGyroJerk-mean()-Y
  * tBodyGyroJerk-mean()-Z
  * tBodyGyroJerk-std()-X
  * tBodyGyroJerk-std()-Y
  * tBodyGyroJerk-std()-Z
  * tBodyAccMag-mean()
  * tBodyAccMag-std()
  * tGravityAccMag-mean()
  * tGravityAccMag-std()
  * tBodyAccJerkMag-mean()
  * tBodyAccJerkMag-std()
  * tBodyGyroMag-mean()
  * tBodyGyroMag-std()
  * tBodyGyroJerkMag-mean()
  * tBodyGyroJerkMag-std()
  * fBodyAcc-mean()-X
  * fBodyAcc-mean()-Y
  * fBodyAcc-mean()-Z
  * fBodyAcc-std()-X
  * fBodyAcc-std()-Y
  * fBodyAcc-std()-Z
  * fBodyAcc-meanFreq()-X
  * fBodyAcc-meanFreq()-Y
  * fBodyAcc-meanFreq()-Z
  * fBodyAccJerk-mean()-X
  * fBodyAccJerk-mean()-Y
  * fBodyAccJerk-mean()-Z
  * fBodyAccJerk-std()-X
  * fBodyAccJerk-std()-Y
  * fBodyAccJerk-std()-Z
  * fBodyAccJerk-meanFreq()-X
  * fBodyAccJerk-meanFreq()-Y
  * fBodyAccJerk-meanFreq()-Z
  * fBodyGyro-mean()-X
  * fBodyGyro-mean()-Y
  * fBodyGyro-mean()-Z
  * fBodyGyro-std()-X
  * fBodyGyro-std()-Y
  * fBodyGyro-std()-Z
  * fBodyGyro-meanFreq()-X
  * fBodyGyro-meanFreq()-Y
  * fBodyGyro-meanFreq()-Z
  * fBodyAccMag-mean()
  * fBodyAccMag-std()
  * fBodyAccMag-meanFreq()
  * fBodyBodyAccJerkMag-mean()
  * fBodyBodyAccJerkMag-std()
  * fBodyBodyAccJerkMag-meanFreq()
  * fBodyBodyGyroMag-mean()
  * fBodyBodyGyroMag-std()
  * fBodyBodyGyroMag-meanFreq()
  * fBodyBodyGyroJerkMag-mean()
  * fBodyBodyGyroJerkMag-std()
  * fBodyBodyGyroJerkMag-meanFreq()


## Citation
  * Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.


