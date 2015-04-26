# Description of Data 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

# Variable Description

Based on the above variables, mean of variables and standard deviation has been computed. The variables in the tidy data set are

Variable Name                           Description
--------------------------------------  -----------------------------------------------------
*  Subject                                 Identifies the person recording the activity
*  Activity                                Identifies the activity performed by the person
*  ActivityLabel                           Description of the activity performed by the person
*  tBodyAcc_mean_X                         Mean of Mean
*  tBodyAcc_mean_Y                         Mean of Mean
*  tBodyAcc_mean_Z                         Mean of Mean
*  tGravityAcc_mean_X                      Mean of Mean
*  tGravityAcc_mean_Y                      Mean of Mean
*  tGravityAcc_mean_Z                      Mean of Mean
*  tBodyAccJerk_mean_X                     Mean of Mean
*  tBodyAccJerk_mean_Y                     Mean of Mean
*  tBodyAccJerk_mean_Z                     Mean of Mean
*  tBodyGyro_mean_X                        Mean of Mean
*  tBodyGyro_mean_Y                        Mean of Mean
*  tBodyGyro_mean_Z                        Mean of Mean
*  tBodyGyroJerk_mean_X                    Mean of Mean
*  tBodyGyroJerk_mean_Y                    Mean of Mean
*  tBodyGyroJerk_mean_Z                    Mean of Mean
*  tBodyAccMag_mean                        Mean of Mean
*  tGravityAccMag_mean                     Mean of Mean
*  tBodyAccJerkMag_mean                    Mean of Mean
*  tBodyGyroMag_mean                       Mean of Mean
*  tBodyGyroJerkMag_mean                   Mean of Mean
*  fBodyAcc_mean_X                         Mean of Mean
*  fBodyAcc_mean_Y                         Mean of Mean
*  fBodyAcc_mean_Z                         Mean of Mean
*  fBodyAcc_meanFreq_X                     Mean of Mean
*  fBodyAcc_meanFreq_Y                     Mean of Mean
*  fBodyAcc_meanFreq_Z                     Mean of Mean
*  fBodyAccJerk_mean_X                     Mean of Mean
*  fBodyAccJerk_mean_Y                     Mean of Mean
*  fBodyAccJerk_mean_Z                     Mean of Mean
*  fBodyAccJerk_meanFreq_X                 Mean of Mean
*  fBodyAccJerk_meanFreq_Y                 Mean of Mean
*  fBodyAccJerk_meanFreq_Z                 Mean of Mean
*  fBodyGyro_mean_X                        Mean of Mean
*  fBodyGyro_mean_Y                        Mean of Mean
*  fBodyGyro_mean_Z                        Mean of Mean
*  fBodyGyro_meanFreq_X                    Mean of Mean
*  fBodyGyro_meanFreq_Y                    Mean of Mean
*  fBodyGyro_meanFreq_Z                    Mean of Mean
*  fBodyAccMag_mean                        Mean of Mean
*  fBodyAccMag_meanFreq                    Mean of Mean
*  fBodyBodyAccJerkMag_mean                Mean of Mean
*  fBodyBodyAccJerkMag_meanFreq            Mean of Mean
*  fBodyBodyGyroMag_mean                   Mean of Mean
*  fBodyBodyGyroMag_meanFreq               Mean of Mean
*  fBodyBodyGyroJerkMag_mean               Mean of Mean
*  fBodyBodyGyroJerkMag_meanFreq           Mean of Mean
*  angle_tBodyAccMean_gravity              Mean of Mean
*  angle_tBodyAccJerkMean_gravityMean1     Mean of Mean
*  angle_tBodyAccJerkMean_gravityMean2     Mean of Mean
*  angle_tBodyGyroMean_gravityMean1        Mean of Mean
*  angle_tBodyGyroMean_gravityMean2        Mean of Mean
*  angle_tBodyGyroJerkMean_gravityMean1    Mean of Mean
*  angle_tBodyGyroJerkMean_gravityMean2    Mean of Mean
*  angle_X_gravityMean                     Mean of Mean
*  angle_Y_gravityMean                     Mean of Mean
*  angle_Z_gravityMean                     Mean of Mean
*  tBodyAcc_std_X                          Mean of Standard Deviation
*  tBodyAcc_std_Y                          Mean of Standard Deviation
*  tBodyAcc_std_Z                          Mean of Standard Deviation
*  tGravityAcc_std_X                       Mean of Standard Deviation
*  tGravityAcc_std_Y                       Mean of Standard Deviation
*  tGravityAcc_std_Z                       Mean of Standard Deviation
*  tBodyAccJerk_std_X                      Mean of Standard Deviation
*  tBodyAccJerk_std_Y                      Mean of Standard Deviation
*  tBodyAccJerk_std_Z                      Mean of Standard Deviation
*  tBodyGyro_std_X                         Mean of Standard Deviation
*  tBodyGyro_std_Y                         Mean of Standard Deviation
*  tBodyGyro_std_Z                         Mean of Standard Deviation
*  tBodyGyroJerk_std_X                     Mean of Standard Deviation
*  tBodyGyroJerk_std_Y                     Mean of Standard Deviation
*  tBodyGyroJerk_std_Z                     Mean of Standard Deviation
*  tBodyAccMag_std                         Mean of Standard Deviation
*  tGravityAccMag_std                      Mean of Standard Deviation
*  tBodyAccJerkMag_std                     Mean of Standard Deviation
*  tBodyGyroMag_std                        Mean of Standard Deviation
*  tBodyGyroJerkMag_std                    Mean of Standard Deviation
*  fBodyAcc_std_X                          Mean of Standard Deviation
*  fBodyAcc_std_Y                          Mean of Standard Deviation
*  fBodyAcc_std_Z                          Mean of Standard Deviation
*  fBodyAccJerk_std_X                      Mean of Standard Deviation
*  fBodyAccJerk_std_Y                      Mean of Standard Deviation
*  fBodyAccJerk_std_Z                      Mean of Standard Deviation
*  fBodyGyro_std_X                         Mean of Standard Deviation
*  fBodyGyro_std_Y                         Mean of Standard Deviation
*  fBodyGyro_std_Z                         Mean of Standard Deviation
*  fBodyAccMag_std                         Mean of Standard Deviation
*  fBodyBodyAccJerkMag_std                 Mean of Standard Deviation
*  fBodyBodyGyroMag_std                    Mean of Standard Deviation
*  fBodyBodyGyroJerkMag_std                Mean of Standard Deviation
