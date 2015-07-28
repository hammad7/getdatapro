Files included are 
    - run_analysis.R
    - CodeBook.R     (Note: View it as RAW on GitHub or suitable editor)
    - README.md
   
   
   The script run_analysis.R contains all the code required to transform UCI HAR Dataset into the required dataset. Downloading and unzipping can be done by uncommenting first few lines of code. 
   
   
   The script reads and combines the train and test data in step1 using read.table function.
   Then it extracts measurements on mean and standard deviation by subsetting feature names containing `mean()` and `std()` using grep function. X_ext are the resultant features (observations). 
   It then names the activities in Y with descriptive activity names. 
   This is followed by labeling the columns of X_ext with descriptive variable names using gsub. The other two columns are combined in this step(4). 
   At last X_ext is reshaped into X_ext_melt by melt function and then to tidy_data by dcast function (library-reshape2). Alternatively, this can be done by ddply of plyr library (in comments). Finally, the tidy_data is written in the file named tidy_data.txt. 
   
   
   Some values of result can be checked manually by uncommenting the next few lines of code.
   The last line of code was used for generating CodeBook.md file which was later manually edited. The file is in fwf format and hence need to be viewed in RAW form on GitHub.
