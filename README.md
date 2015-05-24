# Getting-and-Cleaning-Data_Project

This repo contains the following files:
- The project's script "run_analysis.R".
- The code book "CodeBook.md"
- The read me file "README.md".

In this file i will discribe the script fuctionality.

## Needed Libraries

* reshape2
* dplyr

## a Set of Files

The are several .text files that need to be loaded first.
* "features.txt"
* "activity_labels.txt"
* "test/X_test.txt"
* "test/y_test.txt"
* "test/subject_test.txt"
* "train/X_train.txt"
* "train/y_train.txt"
* "train/subject_train.txt"

## Script Functionality
The first thing this script will do is trying to load the .text files mentioned
earlier. Creating the test data frame for example will require the X_test, y_test and
the subject_test to create the data. The same is for the training data but with its own files.
The first column is the one about the subject, the second column is the one about the activity.
Assigning names to the columns "Variables" could be done by the use of the features.txt file.
Now we have two data frames - test and train - and then they will be bound together to create
a larger data set "Merged_set". Extracting the needed data can be done by the use of the "grepl"
command that will allow to select certain columns that contain certain strings (mean, std).
Assigning descriptive variables names can be done by the use of "gsub" command which will allow the substitution
of certain string by another. A for loop is used to change the number of the activity to the corresponding name.
To achieve the 4th task the melt and "dcast" commands are used. Then result of the 4th task will be saved
by using the "write.table" command. Finally the script will clean the unnecessary enviroment variable and it will
clear the console.
