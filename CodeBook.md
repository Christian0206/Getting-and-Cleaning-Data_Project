# The Project's Code Book
## Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The following labels are the descriptive names of the used variables.
only the 79 needed variables plus the subject and the activity (test.label).

* "subject"
* "test.label"
* "TimeBodyAccelerometer-mean()-X"
* "TimeBodyAccelerometer-mean()-Y"
* "TimeBodyAccelerometer-mean()-Z"
* "TimeBodyAccelerometer-std()-X"
* "TimeBodyAccelerometer-std()-Y"
* "TimeBodyAccelerometer-std()-Z"
* "TimeGravityAccelerometer-mean()-X"
* "TimeGravityAccelerometer-mean()-Y"
* "TimeGravityAccelerometer-mean()-Z"
* "TimeGravityAccelerometer-std()-X"
* "TimeGravityAccelerometer-std()-Y"
* "TimeGravityAccelerometer-std()-Z"
* "TimeBodyAccelerometerJerk-mean()-X"
* "TimeBodyAccelerometerJerk-mean()-Y"
* "TimeBodyAccelerometerJerk-mean()-Z"
* "TimeBodyAccelerometerJerk-std()-X"
* "TimeBodyAccelerometerJerk-std()-Y"
* "TimeBodyAccelerometerJerk-std()-Z"
* "TimeBodyGyroscope-mean()-X"
* "TimeBodyGyroscope-mean()-Y"
* "TimeBodyGyroscope-mean()-Z"
* "TimeBodyGyroscope-std()-X"
* "TimeBodyGyroscope-std()-Y"
* "TimeBodyGyroscope-std()-Z"
* "TimeBodyGyroscopeJerk-mean()-X"
* "TimeBodyGyroscopeJerk-mean()-Y"
* "TimeBodyGyroscopeJerk-mean()-Z"
* "TimeBodyGyroscopeJerk-std()-X"
* "TimeBodyGyroscopeJerk-std()-Y"
* "TimeBodyGyroscopeJerk-std()-Z"
* "TimeBodyAccelerometerMagnitude-mean()"
* "TimeBodyAccelerometerMagnitude-std()"
* "TimeGravityAccelerometerMagnitude-mean()"
* "TimeGravityAccelerometerMagnitude-std()"
* "TimeBodyAccelerometerJerkMagnitude-mean()"
* "TimeBodyAccelerometerJerkMagnitude-std()"
* "TimeBodyGyroscopeMagnitude-mean()"
* "TimeBodyGyroscopeMagnitude-std()"
* "TimeBodyGyroscopeJerkMagnitude-mean()"
* "TimeBodyGyroscopeJerkMagnitude-std()"
* "FrequencyBodyAccelerometer-mean()-X"
* "FrequencyBodyAccelerometer-mean()-Y"
* "FrequencyBodyAccelerometer-mean()-Z"
* "FrequencyBodyAccelerometer-std()-X"
* "FrequencyBodyAccelerometer-std()-Y"
* "FrequencyBodyAccelerometer-std()-Z"
* "FrequencyBodyAccelerometer-meanFreq()-X"
* "FrequencyBodyAccelerometer-meanFreq()-Y"
* "FrequencyBodyAccelerometer-meanFreq()-Z"
* "FrequencyBodyAccelerometerJerk-mean()-X"
* "FrequencyBodyAccelerometerJerk-mean()-Y"
* "FrequencyBodyAccelerometerJerk-mean()-Z"
* "FrequencyBodyAccelerometerJerk-std()-X"
* "FrequencyBodyAccelerometerJerk-std()-Y"
* "FrequencyBodyAccelerometerJerk-std()-Z"
* "FrequencyBodyAccelerometerJerk-meanFreq()-X"
* "FrequencyBodyAccelerometerJerk-meanFreq()-Y"
* "FrequencyBodyAccelerometerJerk-meanFreq()-Z"
* "FrequencyBodyGyroscope-mean()-X"
* "FrequencyBodyGyroscope-mean()-Y"
* "FrequencyBodyGyroscope-mean()-Z"
* "FrequencyBodyGyroscope-std()-X"
* "FrequencyBodyGyroscope-std()-Y"
* "FrequencyBodyGyroscope-std()-Z"
* "FrequencyBodyGyroscope-meanFreq()-X"
* "FrequencyBodyGyroscope-meanFreq()-Y"
* "FrequencyBodyGyroscope-meanFreq()-Z"
* "FrequencyBodyAccelerometerMagnitude-mean()"
* "FrequencyBodyAccelerometerMagnitude-std()"
* "FrequencyBodyAccelerometerMagnitude-meanFreq()"
* "FrequencyBodyAccelerometerJerkMagnitude-mean()"
* "FrequencyBodyAccelerometerJerkMagnitude-std()"
* "FrequencyBodyAccelerometerJerkMagnitude-meanFreq()"
* "FrequencyBodyGyroscopeMagnitude-mean()"
* "FrequencyBodyGyroscopeMagnitude-std()"
* "FrequencyBodyGyroscopeMagnitude-meanFreq()"
* "FrequencyBodyGyroscopeJerkMagnitude-mean()"
* "FrequencyBodyGyroscopeJerkMagnitude-std()"
* "FrequencyBodyGyroscopeJerkMagnitude-meanFreq()"

the following fuctions are used to calculate the variables valuse: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

## Source
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
