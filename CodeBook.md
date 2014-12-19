The Codebook
============

The orginal dataset measured the following signals used to estimate variables of the feature vector for each pattern:

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

33 signal measurements in total. ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.)

The set of variables that were estimated from the above signals are: 

1. mean(): Mean value
2. std(): Standard deviation
3. mad(): Median absolute deviation 
4. max(): Largest value in array
5. min(): Smallest value in array
6. sma(): Signal magnitude area
7. energy(): Energy measure. Sum of the squares divided by the number of values. 
8. iqr(): Interquartile range 
9. entropy(): Signal entropy
10. arCoeff(): Autorregresion coefficients with Burg order equal to 4
11. correlation(): correlation coefficient between two signals
12. maxInds(): index of the frequency component with largest magnitude
13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14. skewness(): skewness of the frequency domain signal 
15. kurtosis(): kurtosis of the frequency domain signal 
16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
17. angle(): Angle between to vectors.

The Output
==========
The dataset produced in this script extracts ONLY the average of mean() and std() of each signal, for each activiy and each subject. Hence the dataset contains 33 X 2 = 66 columns (variables of the signals), with an additional 2 columns to denote the subject and the activity type. 

The data dictionary for each variables are described in the following section.

Data Dictionary
===============

### Column 1: subject
A sigle or double digit to identify the volunteer or subject.

Value range from 1 to 30.

### Column 2: activity
The activity type performed.

A valid activity takes one the following values:
* WALKING 
* WALKING_UPSTAIRS 
* WALKING_DOWNSTAIRS 
* SITTING 
* STANDING 
* LAYING

### Column 3-68: Average of mean() and std() for each of every 33 signals
The average of the mean() and std() variables for each subject grouped by activity type, in the following sequence:

1. avg_tBodyAcc_mean_X
2. avg_tBodyAcc_mean_Y 
3. avg_tBodyAcc_mean_Z 
4. avg_tBodyAcc_std_X 
5. avg_tBodyAcc_std_Y 
6. avg_tBodyAcc_std_Z 
7. avg_tGravityAcc_mean_X 
8. avg_tGravityAcc_mean_Y 
9. avg_tGravityAcc_mean_Z 
10. avg_tGravityAcc_std_X 
11. avg_tGravityAcc_std_Y 
12. avg_tGravityAcc_std_Z 
13. avg_tBodyAccJerk_mean_X 
14. avg_tBodyAccJerk_mean_Y 
15. avg_tBodyAccJerk_mean_Z 
16. avg_tBodyAccJerk_std_X 
17. avg_tBodyAccJerk_std_Y 
18. avg_tBodyAccJerk_std_Z 
19. avg_tBodyGyro_mean_X 
20. avg_tBodyGyro_mean_Y 
21. avg_tBodyGyro_mean_Z 
22. avg_tBodyGyro_std_X 
23. avg_tBodyGyro_std_Y 
24. avg_tBodyGyro_std_Z 
25. avg_tBodyGyroJerk_mean_X 
26. avg_tBodyGyroJerk_mean_Y 
27. avg_tBodyGyroJerk_mean_Z 
28. avg_tBodyGyroJerk_std_X 
29. avg_tBodyGyroJerk_std_Y 
30. avg_tBodyGyroJerk_std_Z 
31. avg_tBodyAccMag_mean 
32. avg_tBodyAccMag_std 
33. avg_tGravityAccMag_mean 
34. avg_tGravityAccMag_std
35. avg_tBodyAccJerkMag_mean 
36. avg_tBodyAccJerkMag_std 
37. avg_tBodyGyroMag_mean 
38. avg_tBodyGyroMag_std 
39. avg_tBodyGyroJerkMag_mean 
40. avg_tBodyGyroJerkMag_std 
41. avg_fBodyAcc_mean_X 
42. avg_fBodyAcc_mean_Y 
43. avg_fBodyAcc_mean_Z 
44. avg_fBodyAcc_std_X 
45. avg_fBodyAcc_std_Y 
46. avg_fBodyAcc_std_Z 
47. avg_fBodyAccJerk_mean_X 
48. avg_fBodyAccJerk_mean_Y 
49. avg_fBodyAccJerk_mean_Z 
50. avg_fBodyAccJerk_std_X 
51. avg_fBodyAccJerk_std_Y 
52. avg_fBodyAccJerk_std_Z 
53. avg_fBodyGyro_mean_X 
54. avg_fBodyGyro_mean_Y 
55. avg_fBodyGyro_mean_Z 
56. avg_fBodyGyro_std_X 
57. avg_fBodyGyro_std_Y 
58. avg_fBodyGyro_std_Z 
59. avg_fBodyAccMag_mean 
60. avg_fBodyAccMag_std 
61. avg_fBodyBodyAccJerkMag_mean 
62. avg_fBodyBodyAccJerkMag_std 
63. avg_fBodyBodyGyroMag_mean 
64. avg_fBodyBodyGyroMag_std 
65. avg_fBodyBodyGyroJerkMag_mean 
66. avg_fBodyBodyGyroJerkMag_std

NOTE: Add 2 (for subject and activity) to the item number above to obtain the actual column number in the table.