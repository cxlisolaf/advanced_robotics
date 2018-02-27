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

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
 

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.

    rospy.init_node('listener', anonymous=True)
 
    #This declares that your node subscribes to the chatter topic which is of type 
    #std_msgs.msgs.String. When new messages are received, 
    #callback is invoked with the message as the first argument.

    rospy.Subscriber("chatter", String, callback)
 
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

    
   
if __name__ == '__main__':
    try:
       listener()
    except rospy.ROSInterruptException:
        pass






