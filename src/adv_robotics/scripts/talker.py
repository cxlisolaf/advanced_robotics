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
 

def talker():
    #this section defines the talker's interface to the rest of ROS		
    #declares the node is publishing to the chatter topic using string type msg
    pub = rospy.Publisher('chatter', String, queue_size=10)

    #it tells rospy the name of the node, untile rospy has the information
    #the node name is talker
    rospy.init_node('talker', anonymous=True)

    #With the help of its method sleep(), it offers a convenient way for 
    #looping at the desired rate. 
    #With its argument of 10, we should expect to go through the loop 10 times per second.
    rate = rospy.Rate(10) # 10hz
    counter = 0

    #while not rospy.is_shutdown():"work" is a call to pub.publish(hello_str) 
    #that publishes a string to our chatter topic.
    #the messages get printed to screen, it gets written to the Node's log file, 
    #and it gets written to rosout
    time = rospy.get_time()
    hello_str = "hello world %s" % time
    rospy.loginfo(hello_str)
    pub.publish(hello_str)
    rate.sleep()

    return time



if __name__ == '__main__':


    counter = 0
    time = []
    while counter < 300:
        timestamp = talker()
	duration = rospy.get_time()-timestamp
	counter +=1
        time.append(duration)

    num_bins = 300
    n, bins, patches = plt.hist(time, num_bins, facecolor='blue', alpha=0.5)
    plt.show()


        
       
    




