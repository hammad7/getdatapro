## Create working dir
#if(!dir.exists("./getdata"))
#  dir.create("getdata")
#setwd("./getdata")

## Download data(zip) file
#if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")|!dir.exists("UCI HAR Dataset"))
#  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./getdata-projectfiles-UCI HAR Dataset.zip",method = "curl")

## Extract data
#if(!dir.exists("UCI HAR Dataset"))
#  unzip("./getdata-projectfiles-UCI HAR Dataset.zip")

## Read test data
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
## Read train data
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")

## step1: Merge training and test data
subject<-rbind(subject_test,subject_train)
X<-rbind(X_test,X_train)
Y<-rbind(Y_test,Y_train)

## step2: Extract measurements on mean and standard deviation
features<-read.table("./UCI HAR Dataset/features.txt")
m<-grepl("mean()",as.character(features[,2]),fixed=T)
s<-grepl("std()",as.character(features[,2]),fixed=T)
ind<-m|s
X_ext<-X[,ind]

## step3: Name the activities in the data set with descriptive activity names
labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
Y<-data.frame(as.character(labels[Y[1:dim(Y)[1],1],2]),stringsAsFactors = F)

## step4: Label the data set with descriptive variable names
features<-read.table("./UCI HAR Dataset/features.txt")
fvec<-as.vector(features[,2])
nam<-fvec[ind]
nam<-gsub("Body","B",nam)
nam<-gsub("Gravity","G",nam)
nam<-gsub("Mag","M",nam)
nam<-gsub("Gyro","g",nam)
nam<-gsub("Acc","A",nam)
nam<-gsub("Jerk","J",nam)
nam<-gsub("mean\\(\\)","m",nam)
nam<-gsub("std\\(\\)","s",nam)
nam<-gsub("-","",nam)
colnames(X_ext)<-nam
colnames(Y)<-"ACT"
colnames(subject)<-"SUB"
X_ext[,dim(X_ext)[2]+1]<-subject #Add other 2 columns
X_ext[,dim(X_ext)[2]+1]<-Y

## step5: Create the independent tidy data set
library(reshape2)
X_ext_melt<-melt(X_ext,measure.vars = nam)#can also extract here
tidy_data<-dcast(X_ext_melt,SUB+ACT~variable,mean)

# or
# library(plyr)
# tidy_data<-ddply(X_ext,.(SUB,ACT),numcolwise(mean))

write.table(tidy_data,"./tidy_data.txt",row.names = F)

# Check the values of mean manually
#mean(X_ext[X_ext$SUB==1 & X_ext$ACT=="LAYING",]$`tBAmX`)
#mean(X_ext[X_ext$SUB==1 & X_ext$ACT=="LAYING",]$`tBAmY`)
#mean(X_ext[X_ext$SUB==1 & X_ext$ACT=="SITTING",]$`tBAmX`)
#ddply(X_ext,.(SUB,ACT),summarize,means=mean(tBAmX))

## Code for CodeBook.md
#install.packages("gdata")
#library(gdata)
#write.fwf(data.frame(nam,fvec[ind]),"./CodeBook.md",colnames = F)
