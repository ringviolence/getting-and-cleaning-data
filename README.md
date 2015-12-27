# Getting and Cleaning Data: Course Project

### Introduction

This repository hosts the R code and documentation files for the main project in Data Science's track course "Getting and Cleaning data", available in coursera.

The dataset being used is: [Human Activity Recognition Using Smartphones] which can be downloaded from here (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Files

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` contains all the code to perform the analyses described in the 5 steps of the assignment.

The output of the 5th step is called `tidyaverages.txt`, and uploaded in the course project's form.

### About the script and the tidy dataset

The script file run_analysis.R is the main part of this assignment. The script unzips the folder containing the raw data, merges the training and test sets to one set, identifies the variables containing the measurements on the mean and standard deviation for each measurements and extracts only these columns from the merged data set. These measurements are then coupled with their respective subject and activity, and the variables in the complete data set are given appropriate names. The activities in the data set are also given descriptive activity names. Then a second, independent data set is created by calculating the average of each variable for each activity and each subject.

Prerequisites for this script: 

+ Downloaded zipfile called "getdata-projectfiles-UCI HAR Dataset" in working directory.
+ Installed the 'reshape2' R package

### About the Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.