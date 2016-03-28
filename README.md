---
title: "README"
author: "Sudhir Kamat"
date: "March 27, 2016"
output: html_document
---

## What is it?

This is a project submission for the course "Getting and Cleaning Data". The source for this project is the "Human Activity Recognition Using Smartphones Data Set" that was collected by Davide Anguita et al, as detailed here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

## Original Study

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## Current Data Processing 

This project uses the data made available here:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

The R Script (run_analysis.R) that performs the data processing should be saved in the folder "getdata-projectfiles-UCI HAR Dataset" that is created on unzipping the downloaded file. 

This script uses the following packages that need to be installed. 

* library(dplyr) 

* library(qdap) 


The script performs the following steps:

* It reads the data from files located inside the "test" and "train" directories, as well as the files in its parent directory. 

* It merges the training data and the test data into a single data set, and applies the column-heads to it.

* It locates columns that pertain to mean and standard deviation of the observed measurements, and separates those columns into a new data set.

* It replaces the Column Names with descriptive names for easy understanding. NOTE: This step uses the qdap Library.

* It also associates each observation with its corresponding activity and the subject who performed it.

* It applies the built-in aggregate function of R to compute average of each variable for each activity and each subject, and save it in a separate tidy data set.

* Writes the separated tidy data set to a file "smartphone data averages.txt" in the same folder where the script is.


## Original Study Reference

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.



