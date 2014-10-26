## Data dictionary

<b>Subject</b>

	Subject who perforned each of the activity, represented by a number ranging from 1 to 30
	Class type: character

<b>Activity</b>

	Activity for which the measurements were recorded
	Class type: factor
	Activity labels:
		1 --> WALKING
		2 --> WALKING_UPSTAIRS
		3 --> WALKING_DOWNSTAIRS
		4 --> SITTING
		5 --> STANDING
		6 --> LAYING

	The ordering of the activity type in the final data set is done according to the original labeling and not alphabetically.

All the variables below are numeric and represent the average of the measurements per each subject and each activity.
Due to the normalization in the initial data set, the units for the variables are not available.

From a total of 561 initial features, the list below contains only the mean and standard deviation measurements, with a total of 66 variables. The variable filtering has been done using the grep() function.
Several changes have been made to variable names:
	- replacements: 
		"-" --> "_"
		"()" --> ""
	- dublicate "BodyBody" has been removed

<b>tBodyAcc_mean_X</b>

	Mean of the linear body acceleration in the X direction.

<b>tBodyAcc_mean_Y</b>

	Mean of the linear body acceleration in the Y direction.

<b>tBodyAcc_mean_Z</b>

	Mean of the linear body acceleration in the Z direction.

<b>tBodyAcc_std_X</b>

	Standard deviation of the linear body acceleration in the X direction.

<b>tBodyAcc_std_Y</b>

	Standard deviation of the linear body acceleration in the Y direction.

<b>tBodyAcc_std_Z</b>

	Standard deviation of the linear body acceleration in the Z direction.

<b>tGravityAcc_mean_X</b>

	Mean of the gravity acceleration in the X direction.

<b>tGravityAcc_mean_Y</b>

	Mean of the gravity acceleration in the Y direction.

<b>tGravityAcc_mean_Z</b>

	Mean of the gravity acceleration in the Z direction.

<b>tGravityAcc_std_X</b>

	Standard deviation of the gravity acceleration in the X direction.

<b>tGravityAcc_std_Y</b>

	Standard deviation of the gravity acceleration in the Y direction.

<b>tGravityAcc_std_Z</b>

	Standard deviation of the gravity acceleration in the Z direction.

<b>tBodyAccJerk_mean_X</b>

	Mean of the linear body acceleration with jerk signal in the X direction.

<b>tBodyAccJerk_mean_Y</b>

	Mean of the linear body acceleration with jerk signal in the Y direction.

<b>tBodyAccJerk_mean_Z</b>

	Mean of the linear body acceleration with jerk signal in the Z direction.

<b>tBodyAccJerk_std_X</b>

	Standard deviation of the linear body acceleration with jerk signal in the X direction.

<b>tBodyAccJerk_std_Y</b>

	Standard deviation of the linear body acceleration with jerk signal in the Y direction.

<b>tBodyAccJerk_std_Z</b>

	Standard deviation of the linear body acceleration with jerk signal in the Z direction.

<b>tBodyGyro_mean_X</b>

	Mean of the body gyroscope in the X direction.

<b>tBodyGyro_mean_Y</b>

	Mean of the body gyroscope in the Y direction.

<b>tBodyGyro_mean_Z</b>

	Mean of the body gyroscope in the Z direction.

<b>tBodyGyro_std_X</b>

	Standard deviation of the body gyroscope in the X direction.

<b>tBodyGyro_std_Y</b>

	Standard deviation of the body gyroscope in the Y direction.

<b>tBodyGyro_std_Z</b>

	Standard deviation of the body gyroscope in the Z direction.

<b>tBodyGyroJerk_mean_X</b>

	Mean of the body gyroscope with jerk signal in the X direction.

<b>tBodyGyroJerk_mean_Y</b>

	Mean of the body gyroscope with jerk signal in the Y direction.

<b>tBodyGyroJerk_mean_Z</b>

	Mean of the body gyroscope with jerk signal in the Z direction.

<b>tBodyGyroJerk_std_X</b>

	Standard deviation of the body gyroscope with jerk signal in the X direction.

<b>tBodyGyroJerk_std_Y</b>

	Standard deviation of the body gyroscope with jerk signal in the Y direction.

<b>tBodyGyroJerk_std_Z</b>

	Standard deviation of the body gyroscope with jerk signal in the Z direction.

<b>tBodyAccMag_mean</b>

	Mean of the linear body acceleration magnitude.

<b>tBodyAccMag_std</b>

	Standard deviation of the linear body acceleration magnitude.

<b>tGravityAccMag_mean</b>

	Mean of the gravity acceleration magnitude.

<b>tGravityAccMag_std</b>

	Standard deviation of the gravity acceleration magnitude.

<b>tBodyAccJerkMag_mean</b>

	Mean calculated on the magnitude of the linear body acceleration with jerk signal.

<b>tBodyAccJerkMag_std</b>

	Standard deviation calculated on the magnitude of the linear body acceleration with jerk signal.

<b>tBodyGyroMag_mean</b>

	Mean of the body gyroscope magnitude.

<b>tBodyGyroMag_std</b>

	Standard deviation of the body gyroscope magnitude.

<b>tBodyGyroJerkMag_mean</b>

	Mean calculated on the magnitude of the body gyroscope with jerk signal.

<b>tBodyGyroJerkMag_std</b>

	Standard deviation calculated on the magnitude of the body gyroscope with jerk signal.

<b>fBodyAcc_mean_X</b>

	Mean of the Fast Fourier Transform (FFT) linear body acceleration in the X direction.

<b>fBodyAcc_mean_Y</b>

	Mean of the FFT linear body acceleration in the Y direction.

<b>fBodyAcc_mean_Z</b>

	Mean of the FFT linear body acceleration in the Z direction.

<b>fBodyAcc_std_X</b>

	Standard deviation of the FFT linear body acceleration in the X direction.

<b>fBodyAcc_std_Y</b>

	Standard deviation of the FFT linear body acceleration in the Y direction.

<b>fBodyAcc_std_Z</b>

	Standard deviation of the FFT linear body acceleration in the Z direction.

<b>fBodyAccJerk_mean_X</b>

	Mean of the FFT linear body acceleration with jerk signal in the X direction.

<b>fBodyAccJerk_mean_Y</b>

	Mean of the FFT linear body acceleration with jerk signal in the Y direction.

<b>fBodyAccJerk_mean_Z</b>

	Mean of the FFT linear body acceleration with jerk signal in the Z direction.

<b>fBodyAccJerk_std_X</b>

	Standard deviation of the FFT linear body acceleration with jerk signal in the X direction.

<b>fBodyAccJerk_std_Y</b>

	Standard deviation of the FFT linear body acceleration with jerk signal in the Y direction.

<b>fBodyAccJerk_std_Z</b>

	Standard deviation of the FFT linear body acceleration with jerk signal in the Z direction.

<b>fBodyGyro_mean_X</b>

	Mean of the FFT body gyroscope in the X direction.

<b>fBodyGyro_mean_Y</b>

	Mean of the FFT body gyroscope in the Y direction.

<b>fBodyGyro_mean_Z</b>

	Mean of the FFT body gyroscope in the Z direction.

<b>fBodyGyro_std_X</b>

	Standard deviation of the FFT body gyroscope in the X direction.

<b>fBodyGyro_std_Y</b>

	Standard deviation of the FFT body gyroscope in the Y direction.

<b>fBodyGyro_std_Z</b>

	Standard deviation of the FFT body gyroscope in the Z direction.

<b>fBodyAccMag_mean</b>

	Mean of the FFT liniar body acceleration magnitude.

<b>fBodyAccMag_std</b>

	Standard deviation of the FFT liniar body acceleration magnitude.

<b>fBodyAccJerkMag_mean</b>

	Mean calculated on the magnitude of the FFT linear body acceleration with jerk signal.

<b>fBodyAccJerkMag_std</b>

	Standard deviation calculated on the magnitude of the FFT linear body acceleration with jerk signal.

<b>fBodyGyroMag_mean</b>

	Mean of the FFT body gyroscope magnitude.

<b>fBodyGyroMag_std</b>

	Standard deviation of the FFT body gyroscope magnitude.

<b>fBodyGyroJerkMag_mean</b>

	Mean calculated on the magnitude of the FFT body gyroscope with jerk signal.

<b>fBodyGyroJerkMag_std</b>

	Standard deviation calculated on the magnitude of the FFT body gyroscope with jerk signal.
