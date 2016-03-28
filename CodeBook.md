---
title: "Getting and Cleaning Data Course Project CodeBook"
author: "Sudhir Kamat"
date: "March 27, 2016"
output: html_document
---


## Introduction

This project is a part of the "Getting and Cleaning Data Course" offered on Coursera, and involves data that was collected from the accelerometers from the Samsung Galaxy S smartphone.


## Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Raw Data Variables

The original study performed measurements using the following attributes: 

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


## Description of Variables 

The raw data for this project was saved in two sets: A Training set, and a Test set. Both the sets consisted of the measured signals from the instrument's accelerometer and gyroscope, as well as the features selected from that data. Only the some of the features were used for this project's analysis and preparing of the tidy data output. 

The only features used were the mean and standard deviation for each measurement. Theses features are the Variables for the tidy data prepared by the analysis:

"Activities" - The activities being performed by each subject while the measurement was taken.

"Subjects"  - The subjects who wore the instrument during the experiment.

"Time-based Body Acceleration-mean-X"  - Average of Time-based Body Acceleration along the X axis

"Time-based Body Acceleration-mean-Y"  - Average of Time-based Body Acceleration along the Y axis

"Time-based Body Acceleration-mean-Z"  - Average of Time-based Body Acceleration along the Z axis

"Time-based Body Acceleration-Standard deviation-X" - Standard deviation of Time-based Body Acceleration along the X axis

"Time-based Body Acceleration-Standard deviation-Y" - Standard deviation of Time-based Body Acceleration along the Y axis

"Time-based Body Acceleration-Standard deviation-Z" - Standard deviation of Time-based Body Acceleration along the Z axis 

"Time-based Gravity Acceleration-mean-X"    - Average of Time-based Gravity Acceleration along the X axis

"Time-based Gravity Acceleration-mean-Y"    - Average of Time-based Gravity Acceleration along the Y axis

"Time-based Gravity Acceleration-mean-Z"    - Average of Time-based Gravity Acceleration along the Z axis

"Time-based Gravity Acceleration-Standard deviation-X"  - Standard deviation of Time-based Gravity Acceleration along the X axis

"Time-based Gravity Acceleration-Standard deviation-Y"  - Standard deviation of Time-based Gravity Acceleration along the Y axis

"Time-based Gravity Acceleration-Standard deviation-Z"  - Standard deviation of Time-based Gravity Acceleration along the Z axis

"Time-based Body AccelerationJerk-mean-X"    - Average of Time-based Gravity Acceleration Jerk along the X axis

"Time-based Body AccelerationJerk-mean-Y"    - Average of Time-based Gravity Acceleration Jerk along the Y axis

"Time-based Body AccelerationJerk-mean-Z"    - Average of Time-based Gravity Acceleration Jerk along the Z axis

"Time-based Body AccelerationJerk-Standard deviation-X" - Standard deviation of Time-based Body Acceleration Jerk along the X axis

"Time-based Body AccelerationJerk-Standard deviation-Y" - Standard deviation of Time-based Body Acceleration Jerk along the Y axis 

"Time-based Body AccelerationJerk-Standard deviation-Z" - Standard deviation of Time-based Body Acceleration Jerk along the Z axis 

"Time-based Body Angular Velocity-mean-X"   - Average of Time-based Body Angular Velocity along the X axis

"Time-based Body Angular Velocity-mean-Y"   - Average of Time-based Body Angular Velocity along the Y axis 

"Time-based Body Angular Velocity-mean-Z"   - Average of Time-based Body Angular Velocity along the Z axis 

"Time-based Body Angular Velocity-Standard deviation-X" - Standard deviation of Time-based Body Angular Velocity along the X axis 

"Time-based Body Angular Velocity-Standard deviation-Y" - Standard deviation of Time-based Body Angular Velocity along the Y axis  

"Time-based Body Angular Velocity-Standard deviation-Z" - Standard deviation of Time-based Body Angular Velocity along the Z axis  

"Time-based Body Angular VelocityJerk-mean-X"   - Average of Time-based Body Angular Velocity Jerk along the X axis 

"Time-based Body Angular VelocityJerk-mean-Y"   - Average of Time-based Body Angular Velocity Jerk along the Y axis 

"Time-based Body Angular VelocityJerk-mean-Z"   - Average of Time-based Body Angular Velocity Jerk along the Z axis 

"Time-based Body Angular VelocityJerk-Standard deviation-X" - Standard deviation of Time-based Body Angular Velocity Jerk along the X axis  

"Time-based Body Angular VelocityJerk-Standard deviation-Y" - Standard deviation of Time-based Body Angular Velocity Jerk along the Y axis  

"Time-based Body Angular VelocityJerk-Standard deviation-Z" - Standard deviation of Time-based Body Angular Velocity Jerk along the Z axis  

"Time-based Body AccelerationMagnitude-mean"   - Average of Time-based Body Acceleration Magnitude 

"Time-based Body AccelerationMagnitude-Standard deviation"  - Standard deviation of Time-based Body Acceleration Magnitude  

"Time-based Gravity AccelerationMagnitude-mean"   - Average of Time-based Gravity Acceleration Magnitude

"Time-based Gravity AccelerationMagnitude-Standard deviation"  - Standard deviation of Time-based Gravity Acceleration Magnitude 

"Time-based Body AccelerationJerkMagnitude-mean"   - Average of Time-based Body Acceleration of Jerk Magnitude

"Time-based Body AccelerationJerkMagnitude-Standard deviation"  - Standard deviation of Time-based Body Acceleration Jerk Magnitude

"Time-based Body Angular VelocityMagnitude-mean"   - Average of Time-based Body Angular Velocity Magnitude

"Time-based Body Angular VelocityMagnitude-Standard deviation"  - Standard deviation of Time-based Body Angular Velocity Magnitude

"Time-based Body Angular VelocityJerkMagnitude-mean" - Average of Time-based Body Angular Velocity Jerk Magnitude

"Time-based Body Angular VelocityJerkMagnitude-Standard deviation"  - Standard deviation of Time-based Body Angular Velocity Jerk Magnitude

"Frequency-based Body Acceleration-mean-X" - Average of Frequency-based Body Acceleration along the X axis

"Frequency-based Body Acceleration-mean-Y" - Average of Frequency-based Body Acceleration along the Y axis

"Frequency-based Body Acceleration-mean-Z" - Average of Frequency-based Body Acceleration along the Z axis

"Frequency-based Body Acceleration-Standard deviation-X" - Standard deviation of Frequency-based Body Acceleration along the X axis 

"Frequency-based Body Acceleration-Standard deviation-Y" - Standard deviation of Frequency-based Body Acceleration along the Y axis 

"Frequency-based Body Acceleration-Standard deviation-Z" - Standard deviation of Frequency-based Body Acceleration along the Z axis

"Frequency-based Body Acceleration-meanFreq-X" - Average of Frequency-based Body Acceleration along the X axis

"Frequency-based Body Acceleration-meanFreq-Y" - Average of Frequency-based Body Acceleration along the Y axis

"Frequency-based Body Acceleration-meanFreq-Z" - Average of Frequency-based Body Acceleration along the Z axis

"Frequency-based Body AccelerationJerk-mean-X" - Average of Frequency-based Body Acceleration Jerk along the X axis

"Frequency-based Body AccelerationJerk-mean-Y" - Average of Frequency-based Body Acceleration Jerk along the Y axis

"Frequency-based Body AccelerationJerk-mean-Z" - Average of Frequency-based Body Acceleration Jerk along the Z axis

"Frequency-based Body AccelerationJerk-Standard deviation-X" - Standard deviation of Frequency-based Body Acceleration Jerk along the X axis

"Frequency-based Body AccelerationJerk-Standard deviation-Y" - Standard deviation of Frequency-based Body Acceleration Jerk along the Y axis

"Frequency-based Body AccelerationJerk-Standard deviation-Z" - Standard deviation of Frequency-based Body Acceleration Jerk along the Z axis

"Frequency-based Body AccelerationJerk-meanFreq-X"  - Average of Frequency-based Body Acceleration Jerk along the X axis

"Frequency-based Body AccelerationJerk-meanFreq-Y"  - Average of Frequency-based Body Acceleration Jerk along the Y axis

"Frequency-based Body AccelerationJerk-meanFreq-Z"  - Average of Frequency-based Body Acceleration Jerk along the Z axis

"Frequency-based Body Angular Velocity-mean-X"   - Average of Frequency-based Body Angular Velocity along the X axis

"Frequency-based Body Angular Velocity-mean-Y"   - Average of Frequency-based Body Angular Velocity along the Y axis

"Frequency-based Body Angular Velocity-mean-Z"   - Average of Frequency-based Body Angular Velocity along the Z axis

"Frequency-based Body Angular Velocity-Standard deviation-X"  - Standard deviation of Frequency-based Body Angular Velocity along the X axis

"Frequency-based Body Angular Velocity-Standard deviation-Y"  - Standard deviation of Frequency-based Body Angular Velocity along the Y axis

"Frequency-based Body Angular Velocity-Standard deviation-Z"  - Standard deviation of Frequency-based Body Angular Velocity along the Z axis

"Frequency-based Body Angular Velocity-meanFreq-X"   - Average of Frequency-based Body Angular Velocity along the X axis

"Frequency-based Body Angular Velocity-meanFreq-Y"   - Average of Frequency-based Body Angular Velocity along the Y axis

"Frequency-based Body Angular Velocity-meanFreq-Z"   - Average of Frequency-based Body Angular Velocity along the Z axis

"Frequency-based Body AccelerationMagnitude-mean"  - Average of Frequency-based Body Acceleration Magnitude

"Frequency-based Body AccelerationMagnitude-Standard deviation" - Standard deviation of Frequency-based Body Acceleration Magnitude

"Frequency-based Body AccelerationMagnitude-meanFreq"  - Average of Frequency-based Body Acceleration Frequency

"Total Frequency-based Body AccelerationJerkMagnitude-mean" - Total Average of Frequency-based Body Acceleration Jerk Magnitude

"Total Frequency-based Body AccelerationJerkMagnitude-Standard deviation" - Total Standard deviation of Frequency-based Body Acceleration Jerk Magnitude

"Total Frequency-based Body AccelerationJerkMagnitude-meanFreq" - Total Average of Frequency-based Body Acceleration Magnitude

"Total Frequency-based Body Angular VelocityMagnitude-mean" - Total Average of Frequency-based Body Angular Velocity Magnitude

"Total Frequency-based Body Angular VelocityMagnitude-Standard deviation" - Total Standard deviation of Frequency-based Body Angular Velocity Magnitude

"Total Frequency-based Body Angular VelocityMagnitude-meanFreq" - Total Average of Frequency-based Body Angular Velocity Magnitude

"Total Frequency-based Body Angular VelocityJerkMagnitude-mean" - Total Average of Frequency-based Body Angular Velocity Jerk.

"Total Frequency-based Body Angular VelocityJerkMagnitude-Standard deviation" - Total Standard deviation of Frequency-based Body Angular Velocity Jerk.

"Total Frequency-based Body Angular VelocityJerkMagnitude-meanFreq"   - Total Average of Frequency-based Body Angular Velocity.

## Transformation and Cleanup

The following steps were performed by the script:

* Read into individual data frames, and then merged the training and the test sets to create a single data set.

* Extracted only the measurements on the mean and standard deviation for each measurement.

* Applied descriptive activity names to name the activities in the data set.

* Changed the Column names with descriptive variable names.

* From the resulting data set, created a second, independent tidy data set with the average of each variable for each activity and each subject, using the built-in aggregate() function of R.

## Transformation Script

The R script that carried out the analysis, trasformation and clean up is in the accompanied file run_analysis.R

## Original Data Source URL

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]



