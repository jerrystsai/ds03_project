Data Set Information
--------------------
This data set consists of measurements collected from accelerometers and gyroscopes contained within smartphones worn by 30 volunteers. Each person performed six activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying. 

These data derive originally from a set of data sets described in this [original data documentation](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and consists of these [original data sets, zipped](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip).

Rather than repeating verbatim what is found in the original documentation, this document focuses on describing how this data set derives from the set of original data.

This data set consists of **69 variables**, and with each of 6 activities undertaken by 30 subjects, has **180 observations**. 

Two variables identify the activity (activity.name and activity.ld) and one varaible identifies the subject (subject.id).

Each of the other 66 variables is the mean of measurements taken for a particular signal within each activity/subject combination, 

The way this data set was created was by:

* Combining the training and test sets to create one data set
* Extracting only the measurements corresponding to a mean or standard deviation (66 in number)
* Labeling the variables with descriptive names
* Creating a factor variable that labels the activity undertaken by a subject
* Summarizing, for each activity/subject combination, the mean of the 66 measurements

Check the README.txt file for further details about this dataset.

Variable Descriptions
----------------

- **activity.name**: activity label
- **subject.id**: subject id number
- **activity.id**: numeric label for activity label

Here is how **activity.id** corresponds with **activity.name**:


| activity.id | activity.name      |
|-------------|--------------------|
| 1           | Walking            |
| 2           | Walking upstairs   |
| 3           | Walking downstairs |
| 4           | Sitting            |
| 6           | Standing           |
| 6           | Laying             |

Each of the following variables is a mean across all measurements taken across a particular activity and subject for a particular signal:

- **mean.time.body.acceleration.mean.X**: time domain, body acceleration mean, X-axis
- **mean.time.body.acceleration.mean.Y**: time domain, body acceleration mean, Y-axis
- **mean.time.body.acceleration.mean.Z**: time domain, body acceleration mean, Z-axis
- **mean.time.gravity.acceleration.mean.X**: time domain, gravity acceleration mean, X-axis
- **mean.time.gravity.acceleration.mean.Y**: time domain, gravity acceleration mean, Y-axis
- **mean.time.gravity.acceleration.mean.Z**: time domain, gravity acceleration mean, Z-axis
- **mean.time.body.linear.acceleration.mean.X**: time domain, body linear acceleration mean, X-axis
- **mean.time.body.linear.acceleration.mean.Y**: time domain, body linear acceleration mean, Y-axis
- **mean.time.body.linear.acceleration.mean.Z**: time domain, body linear acceleration mean, Z-axis
- **mean.time.body.angular.acceleration.mean.X**: time domain, body angular acceleration mean, X-axis
- **mean.time.body.angular.acceleration.mean.Y**: time domain, body angular acceleration mean, Y-axis
- **mean.time.body.angular.acceleration.mean.Z**: time domain, body angular acceleration mean, Z-axis
- **mean.time.body.angular.velocity.mean.X**: time domain, body angular velocity mean, X-axis
- **mean.time.body.angular.velocity.mean.Y**: time domain, body angular velocity mean, Y-axis
- **mean.time.body.angular.velocity.mean.Z**: time domain, body angular velocity mean, Z-axis
- **mean.time.body.acceleration.magnitude.mean**: time domain, body acceleration mean magnitude
- **mean.time.gravity.acceleration.magnitude.mean**: time domain, gravity acceleration mean magnitude
- **mean.time.body.linear.acceleration.magnitude.mean**: time domain, body linear acceleration mean magnitude
- **mean.time.body.angular.acceleration.magnitude.mean**: time domain, body angular acceleration mean magnitude
- **mean.time.body.angular.velocity.magnitude.mean**: time domain, body angular velocity mean magnitude
- **mean.freq.body.acceleration.mean.X**: frequency domain, body acceleration mean, X-axis
- **mean.freq.body.acceleration.mean.Y**: frequency domain, body acceleration mean, Y-axis
- **mean.freq.body.acceleration.mean.Z**: frequency domain, body acceleration mean, Z-axis
- **mean.freq.body.linear.acceleration.mean.X**: frequency domain, body linear acceleration mean, X-axis
- **mean.freq.body.linear.acceleration.mean.Y**: frequency domain, body linear acceleration mean, Y-axis
- **mean.freq.body.linear.acceleration.mean.Z**: frequency domain, body linear acceleration mean, Z-axis
- **mean.freq.body.angular.acceleration.mean.X**: frequency domain, body angular acceleration mean, X-axis
- **mean.freq.body.angular.acceleration.mean.Y**: frequency domain, body angular acceleration mean, Y-axis
- **mean.freq.body.angular.acceleration.mean.Z**: frequency domain, body angular acceleration mean, Z-axis
- **mean.freq.body.acceleration.magnitude.mean**: frequency domain, body acceleration mean magnitude
- **mean.freq.body.linear.acceleration.magnitude.mean**: frequency domain, body linear acceleration mean magnitude
- **mean.freq.body.angular.acceleration.magnitude.mean**: frequency domain, body angular acceleration mean magnitude
- **mean.freq.body.angular.velocity.magnitude.mean**: frequency domain, body angular velocity mean magnitude
- **mean.time.body.acceleration.std.X**: time domain, body acceleration standard deviation, X-axis
- **mean.time.body.acceleration.std.Y**: time domain, body acceleration standard deviation, Y-axis
- **mean.time.body.acceleration.std.Z**: time domain, body acceleration standard deviation, Z-axis
- **mean.time.gravity.acceleration.std.X**: time domain, gravity acceleration standard deviation, X-axis
- **mean.time.gravity.acceleration.std.Y**: time domain, gravity acceleration standard deviation, Y-axis
- **mean.time.gravity.acceleration.std.Z**: time domain, gravity acceleration standard deviation, Z-axis
- **mean.time.body.linear.acceleration.std.X**: time domain, body linear acceleration standard deviation, X-axis
- **mean.time.body.linear.acceleration.std.Y**: time domain, body linear acceleration standard deviation, Y-axis
- **mean.time.body.linear.acceleration.std.Z**: time domain, body linear acceleration standard deviation, Z-axis
- **mean.time.body.angular.acceleration.std.X**: time domain, body angular acceleration standard deviation, X-axis
- **mean.time.body.angular.acceleration.std.Y**: time domain, body angular acceleration standard deviation, Y-axis
- **mean.time.body.angular.acceleration.std.Z**: time domain, body angular acceleration standard deviation, Z-axis
- **mean.time.body.angular.velocity.std.X**: time domain, body angular velocity standard deviation, X-axis
- **mean.time.body.angular.velocity.std.Y**: time domain, body angular velocity standard deviation, Y-axis
- **mean.time.body.angular.velocity.std.Z**: time domain, body angular velocity standard deviation, Z-axis
- **mean.time.body.acceleration.magnitude.std**: time domain, body acceleration standard deviation magnitude
- **mean.time.gravity.acceleration.magnitude.std**: time domain, gravity acceleration standard deviation magnitude
- **mean.time.body.linear.acceleration.magnitude.std**: time domain, body linear acceleration standard deviation magnitude
- **mean.time.body.angular.acceleration.magnitude.std**: time domain, body angular acceleration standard deviation magnitude
- **mean.time.body.angular.velocity.magnitude.std**: time domain, body angular velocity standard deviation magnitude
- **mean.freq.body.acceleration.std.X**: frequency domain, body acceleration standard deviation, X-axis
- **mean.freq.body.acceleration.std.Y**: frequency domain, body acceleration standard deviation, Y-axis
- **mean.freq.body.acceleration.std.Z**: frequency domain, body acceleration standard deviation, Z-axis
- **mean.freq.body.linear.acceleration.std.X**: frequency domain, body linear acceleration standard deviation, X-axis
- **mean.freq.body.linear.acceleration.std.Y**: frequency domain, body linear acceleration standard deviation, Y-axis
- **mean.freq.body.linear.acceleration.std.Z**: frequency domain, body linear acceleration standard deviation, Z-axis
- **mean.freq.body.angular.acceleration.std.X**: frequency domain, body angular acceleration standard deviation, X-axis
- **mean.freq.body.angular.acceleration.std.Y**: frequency domain, body angular acceleration standard deviation, Y-axis
- **mean.freq.body.angular.acceleration.std.Z**: frequency domain, body angular acceleration standard deviation, Z-axis
- **mean.freq.body.acceleration.magnitude.std**: frequency domain, body acceleration standard deviation magnitude
- **mean.freq.body.linear.acceleration.magnitude.std**: frequency domain, body linear acceleration standard deviation magnitude
- **mean.freq.body.angular.acceleration.magnitude.std**: frequency domain, body angular acceleration standard deviation magnitude
- **mean.freq.body.angular.velocity.magnitude.std**: frequency domain, body angular velocity standard deviation magnitude

