#!/usr/bin/env python
# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
## Simple talker demo that published std_msgs/Strings messages
## to the 'chatter' topic

#the code is modified on top of the tutorial example

import rospy
from std_msgs.msg import String
import numpy as np
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt
from nav_msgs.msg import Odometry
from sensor_msgs.msg import Imu
import tf.transformations
import csv

def talker():
    #this section defines the talker's interface to the rest of ROS		
    #declares the node is publishing to the chatter topic using string type msg
    pub_odom = rospy.Publisher('odom', Odometry, queue_size=10)
    pub_imu = rospy.Publisher('imu_data', Imu, queue_size=10)

    
    #it tells rospy the name of the node, untile rospy has the information
    #the node name is talker
    rospy.init_node('talker_ekf', anonymous=True)

    #With the help of its method sleep(), it offers a convenient way for 
    #looping at the desired rate. 
    #With its argument of 10, we should expect to go through the loop 10 times per second.
    rate = rospy.Rate(10) # 10hz

    accel = []
    gyro = []
    timestamp = []
    ii = 0
   
    with open('imu_synthetic/accel.csv','rb') as csvfile_1:
       acc = csv.reader(csvfile_1,delimiter=',')
       for row in acc:
          accel.append(row)
    
    with open('imu_synthetic/gyro.csv','rb') as csvfile_2:
	gyr = csv.reader(csvfile_2,delimiter=',')
        for row in gyr:
	   gyro.append(row)
    
    with open('imu_synthetic/timestamp.csv','rb') as csvfile_3:
        times = csv.reader(csvfile_3,delimiter=',')
	for row in times:
	    timestamp.append(row)     


    while True:
	    
	    #while not rospy.is_shutdown():"work" is a call to pub.publish(hello_str) 
	    #that publishes a string to our chatter topic.
	    #the messages get printed to screen, it gets written to the Node's log file, 
	    #and it gets written to rosout
	    
            t = rospy.Time.from_sec(float(timestamp[ii][0]))
   	    #seconds = t.to_sec() #floating point
   	    #nanoseconds = t.to_nsec()

	    quaternion = tf.transformations.quaternion_from_euler(float(gyro[ii][0]), float(gyro[ii][1]), float(gyro[ii][2]))
	    now = rospy.get_rostime()
	    msg_odom = Odometry()
	    msg_odom.header.seq = ii
	    msg_odom.header.stamp = t
	    msg_odom.header.frame_id = "base_footprint"

	    #msg_odom.child_frame_id = "child"
	   
	    msg_odom.pose.pose.position.x = 0
	    msg_odom.pose.pose.position.y = 1
	    msg_odom.pose.pose.position.z = 0
	    
	    msg_odom.pose.pose.orientation.x = quaternion[0]
	    msg_odom.pose.pose.orientation.y = quaternion[1]
	    msg_odom.pose.pose.orientation.z = quaternion[2]
	    
	    msg_odom.pose.covariance = [float(0.00001)]*36

	    msg_odom.twist.twist.linear.x = 0
	    msg_odom.twist.twist.linear.y = 0
	    msg_odom.twist.twist.linear.z = 0

	    msg_odom.twist.twist.angular.x = 0
	    msg_odom.twist.twist.angular.y = 0
	    msg_odom.twist.twist.angular.z = 0

	    msg_odom.twist.covariance = [float(0.00001)]*36

	    msg_imu = Imu()
	    msg_imu.header.seq = ii
	    msg_imu.header.stamp = t
	    msg_imu.header.frame_id = "base_footprint"

	    msg_imu.orientation.x = quaternion[0]
	    msg_imu.orientation.y = quaternion[1]
	    msg_imu.orientation.z = quaternion[2]
	    msg_imu.orientation.w = quaternion[3]

	    msg_imu.orientation_covariance = [float(0.00001)]*9
	    
	    msg_imu.angular_velocity.x = float(gyro[ii][0])
	    msg_imu.angular_velocity.y = float(gyro[ii][1])
	    msg_imu.angular_velocity.z = float(gyro[ii][2])
	    msg_imu.angular_velocity_covariance = [float(0.00001)]*9
	    
	    msg_imu.linear_acceleration.x = float(accel[ii][0])
	    msg_imu.linear_acceleration.y = float(accel[ii][1])
	    msg_imu.linear_acceleration.z = float(accel[ii][2])

	    msg_imu.linear_acceleration_covariance = [float(0.00001)]*9
	    ii += 1


	    rospy.loginfo(msg_odom)
	    pub_odom.publish(msg_odom)
	    pub_imu.publish(msg_imu)


	    rate.sleep()

	 
    return



if __name__ == '__main__':

	try:
          talker()
	except rospy.ROSInterruptException:
          pass




        
       
    




