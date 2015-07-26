#Read test data
body_acc_x_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt",header=F)
body_acc_y_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt",header=F)
body_acc_z_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt",header=F)
body_gyro_x_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt",header=F)
body_gyro_y_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt",header=F)
body_gyro_z_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt",header=F)
total_acc_x_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt",header=F)
total_acc_y_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt",header=F)
total_acc_z_test<-read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt",header=F)
subject_test<-data<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=F)
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt",header=F)
Y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt",header=F)
#Read train data
body_acc_x_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt",header=F)
body_acc_y_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt",header=F)
body_acc_z_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt",header=F)
body_gyro_x_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt",header=F)
body_gyro_y_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt",header=F)
body_gyro_z_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt",header=F)
total_acc_x_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt",header=F)
total_acc_y_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt",header=F)
total_acc_z_train<-read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt",header=F)
subject_train<-data<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=F)
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt",header=F)
Y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt",header=F)
#Merge step1
body_acc_x<-rbind(body_acc_x_test,body_acc_x_train)
body_acc_y<-rbind(body_acc_y_test,body_acc_y_train)
body_acc_z<-rbind(body_acc_z_test,body_acc_z_train)
body_gyro_x<-rbind(body_gyro_x_test,body_gyro_x_train)
body_gyro_y<-rbind(body_gyro_y_test,body_gyro_y_train)
body_gyro_z<-rbind(body_gyro_z_test,body_gyro_z_train)
total_acc_x<-rbind(total_acc_x_test,total_acc_x_train)
total_acc_y<-rbind(total_acc_y_test,total_acc_y_train)
total_acc_z<-rbind(total_acc_z_test,total_acc_z_train)
subject<-rbind(subject_test,subject_train)
X<-rbind(X_test,X_train)
Y<-rbind(Y_test,Y_train)

#step2
Means<-colMeans(X)
std<-apply(X,2,sd)

#step3
labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
for(i in 1:dim(Y)[1])
  Y[i,1]<-as.character(labels[Y[i,1],2])

#step4
features<-read.table("./UCI HAR Dataset/features.txt")
fvec<-as.vector(features[,2])
colnames(X)<-fvec
colnames(Y)<-"ACTIVITY"
#step5
