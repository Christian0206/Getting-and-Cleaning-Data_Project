##library(reshape2)
##library(dplyr)
features<-read.table("features.txt")
activity<-read.table("activity_labels.txt")

#Creating the test data frame, Assigning variables names#

test_set <- read.table(file = "test/X_test.txt")
test_labels <- read.table(file = "test/y_test.txt")
subject_test <- read.table(file = "test/subject_test.txt")
names(test_set) <- features[,"V2"]
test_set <- cbind(subject_test,test_labels,test_set)
names(test_set)[c(1,2)] <- c("subject","test.label")

#Creating the training data frame, Assigning variables names#

train_set<-read.table("train/X_train.txt")
train_labels <- read.table(file = "train/y_train.txt")
subject_train <- read.table(file = "train/subject_train.txt")
names(train_set)<-features[,"V2"]
train_set <- cbind(subject_train,train_labels,train_set)
names(train_set)[c(1,2)] <- c("subject","test.label")

#Merging data, Assigning descriptive activity and variables names#
#Extracting needed data#

Merged_set <- rbind(test_set,train_set)
Merged_set <- Merged_set[,grepl("(subject)|(test.label)|(mean\\(\\))|(std)",names(Merged_set))]
names(Merged_set)<-gsub("^t", "Time", names(Merged_set))
names(Merged_set)<-gsub("^f", "Frequency", names(Merged_set))
names(Merged_set)<-gsub("Acc", "Accelerometer", names(Merged_set))
names(Merged_set)<-gsub("Gyro", "Gyroscope", names(Merged_set))
names(Merged_set)<-gsub("Mag", "Magnitude", names(Merged_set))
names(Merged_set)<-gsub("BodyBody", "Body", names(Merged_set))
names(Merged_set)[2] <- "test.label"
for(val in 1:nrow(Merged_set))
        Merged_set[val,2]<-as.character(activity[which(activity$V1 %in% Merged_set[val,2]),2])

#creating tidy data set with the average of each variable for each#
#activity and each subject#

Melted_data<-melt(Merged_set,id.vars = c("subject","test.label"),measure.vars = names(Merged_set)[3:68])
Result<-dcast(Melted_data,subject ~ test.label,mean)

#Save the new tidy data, Clear environment and console#

if (!file.exists("./New_Tidy_Data.txt"))
        file.create("./New_Tidy_Data.txt")
write.table(Result,file = "New_Tidy_Data.txt",row.names = FALSE)
rm(list = ls()[ls()!="Merged_set"])
cat("\014")
