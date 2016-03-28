##--------------------------------------------------------------------------------------------------------------------------------------------------------------------------##
## Author: Sudhir Kamat. Submission for 'Getting and Cleaning Data Course Project' on Coursera. Date: 03/26/2016.
## This script has been prepared for R Version 3.2.4

## Uncomment next line, and set the working Directory to the location of the Data files, else this script assumes the Data to be in folder "UCI HAR Dataset" in the working directory.
setwd("C:/Users/sudhir.kamat/Documents/0SK/CourseraR/00DataScience/03 Data-Cleaning/Project/getdata-projectfiles-UCI HAR Dataset")

## Ensure that the required Packages are installed and loaded.
#library(dplyr) 
library(qdap) 

## Read the two data files ------------------------------------
df1  <- read.table("UCI HAR Dataset/test/x_test.txt")    ##2947 obs.  561 var.
df1y <- read.table("UCI HAR Dataset/test/y_test.txt")    ##2947 obs.  561 var.   --The Activities of TEST group
df2  <- read.table("UCI HAR Dataset/train/x_train.txt")     ##7352 obs. 561 var.
df2y <- read.table("UCI HAR Dataset/train/y_train.txt")     ##7352 obs. 561 var. --The Activities of TRAIN group

## Merge the two tables ----------------------------------
df3  <- rbind(df1, df2)

## Find the columns (mean and standard deviation columns) that need to be retained -----------------
dff <- read.table("UCI HAR Dataset/features.txt")
xNames<- as.character(dff[,2])
xsplit <- strsplit(xNames, "\\(")
leftNames <- sapply(xsplit, function(x){x[1]})
toMatch <- c("mean", "std")
colInd <- grep(paste(toMatch,collapse="|"), x = leftNames, ignore.case = T)  ##indices of columns having strings "mean" OR "std"

## Fetch the Column Names of the selected Columns
colNms <- as.character(dff[colInd,2])

## Replace the Column Names with descriptive names. NOTE: This uses the qdap Library.
abbrs <- c("tBodyAcc", "tGravityAcc", "std", "tBodyGyro", "Mag", "fBodyAcc", "fBodyGyro", "fBodyBodyAcc", "fBodyBodyGyro", "()")
longForms <- c("Time-based Body Acceleration", "Time-based Gravity Acceleration", "Standard deviation", "Time-based Body Angular Velocity", "Magnitude", "Frequency-based Body Acceleration", "Frequency-based Body Angular Velocity", "Total Frequency-based Body Acceleration", "Total Frequency-based Body Angular Velocity", "")
colNms <-mgsub(abbrs,longForms, colNms)

##select only the columns pertaining to Mean and STD
df4 <- df3[,colInd]

##Assign the descriptive column names to the selected columns
colnames(df4) <- colNms

## Read the Activity Labels.
actList <- read.table("UCI HAR Dataset/activity_labels.txt")
##Replace Activity numbers with Labels 
df1y[df1y[1]==1, 1]  <- as.character(actList[1,2]) ## Repeat this for all six activities ## For the first dataset ##
df1y[df1y[1]==2, 1]  <- as.character(actList[2,2])
df1y[df1y[1]==3, 1]  <- as.character(actList[3,2])
df1y[df1y[1]==4, 1]  <- as.character(actList[4,2])
df1y[df1y[1]==5, 1]  <- as.character(actList[5,2])
df1y[df1y[1]==6, 1]  <- as.character(actList[6,2])

df2y[df2y[1]==1, 1]  <- as.character(actList[1,2]) ## Repeat this for all six activities ## For the second dataset ##
df2y[df2y[1]==2, 1]  <- as.character(actList[2,2])
df2y[df2y[1]==3, 1]  <- as.character(actList[3,2])
df2y[df2y[1]==4, 1]  <- as.character(actList[4,2])
df2y[df2y[1]==5, 1]  <- as.character(actList[5,2])
df2y[df2y[1]==6, 1]  <- as.character(actList[6,2])

## Merge the two activity-datasets into a single set
activity <- rbind(df1y, df2y) 

## Read in the Subjects data and merge them into a single set
s1 <- read.table("UCI HAR Dataset/test/subject_test.txt")
s2 <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject <- rbind(s1[1], s2[1])

##Now, bind the subject and activity columns to the main dataset
df5 <- cbind(subject, df4)
df6 <- cbind(activity, df5)

## Use the "aggregate" function to compute average of each variable for each activity and each subject
Mdf <- aggregate(df6[,3:81], list(df6[,1], df6[,2]), mean, simplify = TRUE)

## Apply the correct column-names for the first two columns
colnames(Mdf)[1:2]<-c("Activities", "Subjects")

## Write the final tidy Data Frame
write.table(Mdf, file = "smartphone data averages.txt", qmethod = "double")
