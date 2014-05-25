# This file explains different artifacts required for the getting and cleaning data project
## Following are the contents of the repository

* run_analysis file 
* code book
* tidydataset

### run_analysis

This performs the below steps , it loads the following files

* x_train, X_test : Features extracted from activities by different subjects in training and testing set
* y_train,y_test : contains the activity id for in training and testing set
* subject_train, subject_test: contains the subject id for in training and testing set
* features : containing name of the features
* activity_label : this contains a mapping between numeric activity id and their description

The datasets can be downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

It combines the activity and subject id information in both training and test data
The activity_label file is used to show the descriptive activity
Next, it mergers training and test data
Features related to mean , sd is separated out in a file
Aggregate fucntion is used to find out activity wise , subject wise mean of the features
A datasets is created with mean of the selected feature


### tidy dataset
There are six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) and 30 subjects , so the resulting dataset has 180 records

### codebook
The code book, describes the variables, the data, and any transformations or work that is performed to clean up the data called CodeBook.md



