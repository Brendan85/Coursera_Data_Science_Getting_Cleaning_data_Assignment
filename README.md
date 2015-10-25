# Read Me for run_analysis.R code

## What data is being analysed
  [] Data from an experiment from the accelerometer in samsung smartphones
  [] Experiment is here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  [] Data is here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  
How does the code work?
  The code pulls in the data provided you're in the file where the data was downloaded to
  It pulls the test and trail data with it's corresponding row and column names
  The code names the columns and rows correctly then merges the two data sets together
  Once together we then pull out only the mean and standard deviation of the variables
  With the desired variables, we now match the variables with their correct names e.g. "WALKING"
  Using the melt function we summarise the data in a better way so we can average out the variables
  Use the dcast function average out our variables: mean and standard deviation for each subject doing each activity
  Finally we write the data to the file
  
Note
  I included the code that will download files and manage acquiring the data on it's own

Thanks!
