### FINAL PROJECT-GETTING & CLEANING DATA- COURSERA

#Create directory,download file,unzip file

if(!file.exists("./data")){dir.create("./data")}

url1<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download<-download.file(url1,destfile = "./data/UCI.zip")
unzip("data/UCI.zip")

# Load the all the files into different objects

trainDataset<- read.table("UCI HAR Dataset/train/X_train.txt")
trainActivities<- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects<- read.table("UCI HAR Dataset/train/subject_train.txt")

testDataset<- read.table("UCI HAR Dataset/test/X_test.txt")
testActivities<- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects<- read.table("UCI HAR Dataset/test/subject_test.txt")

#Load Feautures and transform to correct format

Features <- read.table("UCI HAR Dataset/features.txt")
str(Features)
Features$V2 <- as.character(Features$V2)

# Extract only the data on mean and standard deviation
Features$V2 <-gsub('meanFreq', 'MeanFreq', Features$V2)
index<- grep(".*mean()|.*std().*", Features$V2)

# Subset testDataset and trainDataset according to the feautures requested

train<-trainDataset[,index]
test<- testDataset[,index]

#Bind everything together

train <- cbind(trainSubjects, trainActivities, train)
test <- cbind(testSubjects, testActivities, test)
tidyData<- rbind(train, test)

#Properly name the variables
FeautureNames<- Features[index,2]
FeautureNames <- gsub('mean', 'MEAN', FeautureNames)
FeautureNames <- gsub('std', 'STD', FeautureNames)
FeautureNames <- gsub('[()]', '', FeautureNames)
names(tidyData) <- c("Subject", "Activity",FeautureNames)

#Load Activity Labels and transform to correct format

ActivityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
str(ActivityLabels)
ActivityLabels$V2 <- as.character(ActivityLabels$V2)

#Properly name each activity

tidyData$Activity[tidyData$Activity==1]<- ActivityLabels$V2[1]
tidyData$Activity[tidyData$Activity==2]<-ActivityLabels$V2[2]
tidyData$Activity[tidyData$Activity==3]<-ActivityLabels$V2[3]
tidyData$Activity[tidyData$Activity==4]<-ActivityLabels$V2[4]
tidyData$Activity[tidyData$Activity==5]<-ActivityLabels$V2[5]
tidyData$Activity[tidyData$Activity==6]<-ActivityLabels$V2[6]

#Make activities & subjects factors

tidyData$Subject <- as.factor(tidyData$Subject)
tidyData$Activity<-as.factor(tidyData$Activity)

#Create new Dataset

library(reshape)
library(reshape2)

MeltedDataset <- melt(tidyData, id = c("Subject", "Activity"))
NewDataset<- dcast(MeltedDataset, Subject + Activity ~ variable, mean)

write.table(NewDataset, "independent_tidy_data_set.txt", row.names = FALSE)
