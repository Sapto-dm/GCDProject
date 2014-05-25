# r script created , to complete the cleaning and getting data assignment

# Task 1: Merging of the training and testing data

#Setting working directory
setwd("F:/Tech/Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

#loading the required files
X_train <- read.table("train/X_train.txt", quote="\"")
X_test <- read.table("test/X_test.txt", quote="\"")
y_train <- read.table("train/y_train.txt", quote="\"")
y_test <- read.table("test/y_test.txt", quote="\"")
subject_train <- read.table("train/subject_train.txt", quote="\"")
subject_test <- read.table("test/subject_test.txt", quote="\"")
features <- read.table("features.txt", quote="\"")
activity_labels <- read.table("activity_labels.txt", quote="\"")

#combining the features , activity , subject id for both training and testing set
X_train<-cbind(X_train,y_train,subject_train)
X_test<-cbind(X_test,y_test,subject_test)

# Combining tarining and testing data in one dataframe
xcomplete<-rbind(X_train,X_test)

# Giving the features proper name and merging activity id with activity names
names(xcomplete)<-features$V2
names(xcomplete)[562]<-'id'
names(xcomplete)[563]<-'subject'

# Task 3,4: adding activity level
xcompact<-merge(xcomplete,activity_labels,by.x='id',by.y='V1')
names(xcompact)[564]<-'activity'

# Task 2: Extracting columns related to mean and std

datameans<-xcompact[grep("-mean()",names(xcompact))]
datasd<-xcompact[grep("-std()",names(xcompact))]
datafinal<-cbind(datameand,datasd,xcompact$activity,xcompact$subject)

#removing speical character from column names
names(datafinal)<-gsub("\\(\\)",'',names(datafinal))
names(datafinal)<-gsub("-",'.',names(datafinal))



# Task 5: tidy data set with the average of each variable for each activity and each subject
tidydata<-aggregate(.~ subject+activity, datafinal, mean)
# wrting to tidydata file
write.table(tidydata.'tidydata.txt')