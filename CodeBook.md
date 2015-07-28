                                DATA DICTIONARY

CODE        DESCRIPTION                     RANGE

SUB         Subject                         [1:30]
ACT         Activity                   
                WALKING
                WALKING_UPSTAIRS
                WALKING_DOWNSTAIRS
                SITTING
                STANDING
                LAYING
fBAJmX      fBodyAccJerk-mean()-X           [-1,1]
fBAJmY      fBodyAccJerk-mean()-Y           [-1,1]
fBAJmZ      fBodyAccJerk-mean()-Z           [-1,1]
fBAJsX      fBodyAccJerk-std()-X            [-1,1]
fBAJsY      fBodyAccJerk-std()-Y            [-1,1]
fBAJsZ      fBodyAccJerk-std()-Z            [-1,1]
fBAMm       fBodyAccMag-mean()              [-1,1]
fBAMs       fBodyAccMag-std()               [-1,1]
fBAmX       fBodyAcc-mean()-X               [-1,1]
fBAmY       fBodyAcc-mean()-Y               [-1,1]
fBAmZ       fBodyAcc-mean()-Z               [-1,1]
fBAsX       fBodyAcc-std()-X                [-1,1]
fBAsY       fBodyAcc-std()-Y                [-1,1]
fBAsZ       fBodyAcc-std()-Z                [-1,1]
fBBAJMm     fBodyBodyAccJerkMag-mean()      [-1,1]
fBBAJMs     fBodyBodyAccJerkMag-std()       [-1,1]
fBBgJMm     fBodyBodyGyroJerkMag-mean()     [-1,1]
fBBgJMs     fBodyBodyGyroJerkMag-std()      [-1,1]
fBBgMm      fBodyBodyGyroMag-mean()         [-1,1]
fBBgMs      fBodyBodyGyroMag-std()          [-1,1]
fBgmX       fBodyGyro-mean()-X              [-1,1]
fBgmY       fBodyGyro-mean()-Y              [-1,1]
fBgmZ       fBodyGyro-mean()-Z              [-1,1]
fBgsX       fBodyGyro-std()-X               [-1,1]
fBgsY       fBodyGyro-std()-Y               [-1,1]
fBgsZ       fBodyGyro-std()-Z               [-1,1]
tBAJMm      tBodyAccJerkMag-mean()          [-1,1]
tBAJMs      tBodyAccJerkMag-std()           [-1,1]
tBAJmX      tBodyAccJerk-mean()-X           [-1,1]
tBAJmY      tBodyAccJerk-mean()-Y           [-1,1]
tBAJmZ      tBodyAccJerk-mean()-Z           [-1,1]
tBAJsX      tBodyAccJerk-std()-X            [-1,1]
tBAJsY      tBodyAccJerk-std()-Y            [-1,1]
tBAJsZ      tBodyAccJerk-std()-Z            [-1,1]
tBAMm       tBodyAccMag-mean()              [-1,1]
tBAMs       tBodyAccMag-std()               [-1,1]
tBAmX       tBodyAcc-mean()-X               [-1,1]
tBAmY       tBodyAcc-mean()-Y               [-1,1]
tBAmZ       tBodyAcc-mean()-Z               [-1,1]
tBAsX       tBodyAcc-std()-X                [-1,1]
tBAsY       tBodyAcc-std()-Y                [-1,1]
tBAsZ       tBodyAcc-std()-Z                [-1,1]
tBgJMm      tBodyGyroJerkMag-mean()         [-1,1]
tBgJMs      tBodyGyroJerkMag-std()          [-1,1]
tBgJmX      tBodyGyroJerk-mean()-X          [-1,1]
tBgJmY      tBodyGyroJerk-mean()-Y          [-1,1]
tBgJmZ      tBodyGyroJerk-mean()-Z          [-1,1]
tBgJsX      tBodyGyroJerk-std()-X           [-1,1]
tBgJsY      tBodyGyroJerk-std()-Y           [-1,1]
tBgJsZ      tBodyGyroJerk-std()-Z           [-1,1]
tBgMm       tBodyGyroMag-mean()             [-1,1]
tBgMs       tBodyGyroMag-std()              [-1,1]
tBgmX       tBodyGyro-mean()-X              [-1,1]
tBgmY       tBodyGyro-mean()-Y              [-1,1]
tBgmZ       tBodyGyro-mean()-Z              [-1,1]
tBgsX       tBodyGyro-std()-X               [-1,1]
tBgsY       tBodyGyro-std()-Y               [-1,1]
tBgsZ       tBodyGyro-std()-Z               [-1,1]
tGAMm       tGravityAccMag-mean()           [-1,1]
tGAMs       tGravityAccMag-std()            [-1,1]
tGAmX       tGravityAcc-mean()-X            [-1,1]
tGAmY       tGravityAcc-mean()-Y            [-1,1]
tGAmZ       tGravityAcc-mean()-Z            [-1,1]
tGAsX       tGravityAcc-std()-X             [-1,1]
tGAsY       tGravityAcc-std()-Y             [-1,1]
tGAsZ       tGravityAcc-std()-Z             [-1,1]

where
   t    -   time domain
   f    -   frequency domain
   MAG  -   magnitude
   Acc  -   Accelerometer
   Gyro -   Gyroscope
   std  -   standard deviation
   
TRANSFORMATIONS
   SOURCE: UCI HAR Dataset
   Merged train and test sets of X, Y and Subject
   Extracted feature names containg terms mean() and std() in X_ext
   Named the activities in Y with descriptive activity names
   Labeled X, Y and Subject with appropriate descriptive variable names 
     and added Y and Subject columns into X 
   Reshaped(melt) X_ext into X_ext_melt and then (cast) to tidy_data
