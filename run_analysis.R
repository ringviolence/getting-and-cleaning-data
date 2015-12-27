setwd("~/Documents/Coursera/Data_Science/03_GettingAndCleaningData/CourseProject")

unzipped = unzip("getdata-projectfiles-UCI HAR Dataset.zip") #unzipping the downloaded file

#merging the data sets and the subject and activities vectors into one (Step 1)
train_X = read.table(unzipped[27]) #loading the X_train table
test_X = read.table(unzipped[15]) #loading the X_test table
mergeX = rbind(train_X, test_X) #merging the tables into one dataset

train_sub = read.table(unzipped[26])
test_sub = read.table(unzipped[14])
subject = rbind(train_sub, test_sub) #merged subject vector corresponding to mergeX

train_act = read.table(unzipped[28])
test_act = read.table(unzipped[16])
act_num = rbind(train_act, test_act) #merged activities vector corresponding to mergeX

#making vectors containing the numbers and names of the mean and std columns
feat = read.table(unzipped[2])
vec = vector(mode = "integer")
names = vector(mode = "character")
c = 1
for (i in 1:nrow(feat)) {
        if (any(grep("mean()", as.character(feat[i,2]), fixed = T))) {
                vec[c] = feat[i,1]
                names[c] = as.character(feat[i,2])
                c = c + 1
        }
        else if (any(grep("std()", as.character(feat[i,2]), fixed = T))) {
                vec[c] = feat[i,1]
                names[c] = as.character(feat[i,2])
                c = c + 1
        }
}

extract = mergeX[, vec] #create a table with only the mean and std columns (Step 2)

#creating descriptive activity names (Step 3)
act_names = read.table(unzipped[1])
activity = vector(mode = "character")
c = 1
for (i in 1:nrow(act_num)) {
        switch(EXPR = act_num[i,1],
               {activity[c] = as.character(act_names[1,2]); c = c + 1},
               {activity[c] = as.character(act_names[2,2]); c = c + 1},
               {activity[c] = as.character(act_names[3,2]); c = c + 1},
               {activity[c] = as.character(act_names[4,2]); c = c + 1},
               {activity[c] = as.character(act_names[5,2]); c = c + 1},
               {activity[c] = as.character(act_names[6,2]); c = c + 1})
}

tidydata = data.frame(subject, activity, extract) #creating one dataset
colnames(tidydata) = c("subject", "activity", names) #descriptive variable names (Step 4)

#creating a second, independent dataset with the average of each variable
#for each activity and each subject (Step 5)
library(reshape2)
tidy_melt = melt(tidydata, id.vars = c("subject", "activity"))
tidy_mean = dcast(tidy_melt, subject + activity ~ variable, mean) #calculating averages
write.table(tidy_mean, "tidyaverages.txt", row.name = FALSE) #creating a txt file with tidy data set