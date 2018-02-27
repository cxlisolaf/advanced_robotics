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
from sensor_msgs.msg import Imu
from nav_msgs.msg import Odometry
from geometry_msgs.msg import PoseWithCovarianceStamped
import csv
import tf.transformations
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt


roll=[]
pitch=[]
yaw=[]

def callback(data):
    rospy.loginfo("I heard")
    pose = data.pose.pose
    print(data)
    quaternion = (pose.orientation.x, pose.orientation.y, pose.orientation.z, pose.orientation.w)

    euler = tf.transformations.euler_from_quaternion(quaternion)
    roll_x = euler[0]
    pitch_x = euler[1]
    yaw_x = euler[2] 
    #print(roll_x,pitch_x,yaw_x)
    
    roll.append(roll_x)
    pitch.append(pitch_x)
    yaw.append(yaw_x)
    
    if len(roll) == 100:
      plt.plot(range(len(roll)), roll, 'r', range(len(pitch)), pitch, 'g', range(len(yaw)), yaw, 'b')
      plt.ylabel('radience vs time sequence')
      plt.show()
 
 
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.

    rospy.init_node('listener_ekf', anonymous=False)
 
    #This declares that your node subscribes to the chatter topic which is of type 
    #std_msgs.msgs.String. When new messages are received, 
    #callback is invoked with the message as the first argument.

    rospy.Subscriber("robot_pose_ekf/odom_combined", PoseWithCovarianceStamped, callback)
 
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
    
    
   
if __name__ == '__main__':

      try:
        listener()
      except rospy.ROSInterruptException:
        pass
      

	









