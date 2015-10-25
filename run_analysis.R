## Original work by Brendan O'Neill
## This data originally comes from paper: Human Activity Recognition Using Smartphones Data Set 
## With authors: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.

## First we install the reshaping packages we'll use later + add it to the library
install.packages("reshape2")
library(reshape2)

## Script to extract data from website
## This will download the data, record the date,
## Unzip and move to the directory where the data is
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./Tidy Data/raw.zip",method="curl")
dateDownloaded<-date()
dateDownloaded ## tracks date file was downloaded
setwd("Tidy Data") 
unzip("raw.zip") ## unzip data
setwd("UCI HAR Dataset") ## go to folder with data

## We extract the labels for the data set; naming the columns of the activities
features = read.table("features.txt")
activity_labels = read.table("activity_labels.txt", col.names=c("activityID","ActivityName"))

## Next we extract the test data and label the relevant columns combining the test data at the end
xTest = read.table("test/X_test.txt")
yTest = read.table("test/y_test.txt")
subjectTest = read.table("test/subject_test.txt")
## Naming test data columns
colnames(xTest)<-features[,2]
colnames(yTest)<-"activityID"
colnames(subjectTest)<-"subjectID"
## Merging test data
testData<-cbind(yTest,subjectTest,xTest)

## Do the same to the train data
## Reading the data:
xTrain = read.table("train/X_train.txt")
yTrain = read.table("train/y_train.txt")
subjectTrain = read.table("train/subject_train.txt")
## Naming train data columns
colnames(xTrain)<-features[,2]
colnames(yTrain)<-"activityID"
colnames(subjectTrain)<-"subjectID"
## Merging train data
trainData<-cbind(yTrain,subjectTrain,xTrain)

## Merging the train and test data
allData<-rbind(trainData,testData)

## We now want to extract only the mean and stadard deviation
## these are identified with text "mean" or "std" in the title
## The grep function will find these and return their column locations
## we also want to keep the first and second columns with the subject ID and activity ID
Means_std_dev_data <- allData[,c(1,2,grep("mean",names(allData)),grep("std",names(allData)))]

## Now we merge the data to include the descriptive names of the activities
mergedData<-merge(activity_labels,Means_std_dev_data,by.x="activityID",by.y="activityID")

## we "melt" the data, putting all the variables into just a few columns
meltedData<-melt(mergedData,id=c("activityID","ActivityName","subjectID"))

## Finally we tidy the data up by averaging over the given activities
tidyData<-dcast(meltedData,activityID + ActivityName + subjectID ~ variable,mean)

## To export the data we write it to a table
write.table(tidyData,file="Tidy Data.txt")