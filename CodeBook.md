# Code Book for Averages of Data Collected from Samsung Galaxy S Accelerometers

The data set tidyaverages.txt is constructed from a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The data set was obtained using the file getdata-projectfiles-UCI HAR Dataset.zip and the R script run_analysis.R. Consult the accompanying README file for more details. For details concerning the collection of the original data is found in the README in the unzipped folder.

The original data set consists of 10299 observations of 561 variables. The final data set tidyaverages.txt contains only the measurements on the mean and standard deviation for each measurement, and the number of variables have been reduced to 66. The vectors containing the data about which subject is performing and which activity is being performed is also included in the final data set, making the final number variables 68. From this data the average of each variable for each activity and each subject is calculated, reducing the number of observations to 180 (= 30 subject * 6 activities).

### Variables

The names of the variables in the data set are as follows:

1.      subject
2.	activity
3.	tBodyAcc-mean()-X
4.	tBodyAcc-mean()-Y
5.	tBodyAcc-mean()-Z
6.	tBodyAcc-std()-X
7.	tBodyAcc-std()-Y
8.	tBodyAcc-std()-Z
9.	tGravityAcc-mean()-X
10.	tGravityAcc-mean()-Y
11.	tGravityAcc-mean()-Z
12.	tGravityAcc-std()-X
13.	tGravityAcc-std()-Y
14.	tGravityAcc-std()-Z
15.	tBodyAccJerk-mean()-X
16.	tBodyAccJerk-mean()-Y
17.	tBodyAccJerk-mean()-Z
18.	tBodyAccJerk-std()-X
19.	tBodyAccJerk-std()-Y
20.	tBodyAccJerk-std()-Z
21.	tBodyGyro-mean()-X
22.	tBodyGyro-mean()-Y
23.	tBodyGyro-mean()-Z
24.	tBodyGyro-std()-X
25.	tBodyGyro-std()-Y
26.	tBodyGyro-std()-Z
27.	tBodyGyroJerk-mean()-X
28.	tBodyGyroJerk-mean()-Y
29.	tBodyGyroJerk-mean()-Z
30.	tBodyGyroJerk-std()-X
31.	tBodyGyroJerk-std()-Y
32.	tBodyGyroJerk-std()-Z
33.	tBodyAccMag-mean()
34.	tBodyAccMag-std()
35.	tGravityAccMag-mean()
36.	tGravityAccMag-std()
37.	tBodyAccJerkMag-mean()
38.	tBodyAccJerkMag-std()
39.	tBodyGyroMag-mean()
40.	tBodyGyroMag-std()
41.	tBodyGyroJerkMag-mean()
42.	tBodyGyroJerkMag-std()
43.	fBodyAcc-mean()-X
44.	fBodyAcc-mean()-Y
45.	fBodyAcc-mean()-Z
46.	fBodyAcc-std()-X
47.	fBodyAcc-std()-Y
48.	fBodyAcc-std()-Z
49.	fBodyAccJerk-mean()-X
50.	fBodyAccJerk-mean()-Y
51.	fBodyAccJerk-mean()-Z
52.	fBodyAccJerk-std()-X
53.	fBodyAccJerk-std()-Y
54.	fBodyAccJerk-std()-Z
55.	fBodyGyro-mean()-X
56.	fBodyGyro-mean()-Y
57.	fBodyGyro-mean()-Z
58.	fBodyGyro-std()-X
59.	fBodyGyro-std()-Y
60.	fBodyGyro-std()-Z
61.	fBodyAccMag-mean()
62.	fBodyAccMag-std()
63.	fBodyBodyAccJerkMag-mean()
64.	fBodyBodyAccJerkMag-std()
65.	fBodyBodyGyroMag-mean()
66.	fBodyBodyGyroMag-std()
67.	fBodyBodyGyroJerkMag-mean()
68.	fBodyBodyGyroJerkMag-std()

### Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test