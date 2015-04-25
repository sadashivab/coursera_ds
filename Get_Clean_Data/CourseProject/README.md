#   Getting and Cleaning Data - Course Project

##  Analysis Script
The R script run_analysis.R follows the below steps to generate the tidy data set.

### Loading training data
* Load the training data, merge it with the associated subject and activity data files
* The data is too large for loading into data frame in a sigle upload run
* The training data is loaded 100 records at a time in a loop.
* Retain the mean and standard deviation columns from the training data 

### Loading test data
* Load the test data, merge it with the associated subject and activity data files
* The data is too large for loading into data frame in a sigle upload run
* The training data is loaded 100 records at a time in a loop.
* Retain the mean and standard deviation columns from the test data 

### Merge and preparation
* Combine the training data with test data
* Name the variables with descriptive names
* Calculate the variable averages by subject and activity 
* Write the final tidy data set to text file - datasetAVG.txt 
* The script completes in approximately in 10 minutes 

### Setup and how to run 
* The base folder has 
* script run_analysis.R - the script for preparing the data 
* folder "dataset" - folder containing the data files
* file FieldNames.txt - contains variable names to name the selected columns

* After opening R, run the following two commands. Set the working directory appropriately pointing to the location of the script.
* setwd("F:/gitrepo/coursera_ds/Get_Clean_Data/CourseProject")
* source("run_analysis.R")
