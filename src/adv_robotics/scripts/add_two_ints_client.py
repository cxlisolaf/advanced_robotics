#!/usr/bin/env python

import sys
import rospy
from adv_robotics.srv import *
import time
import numpy as np
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt
 

def add_two_ints_client(x, y):

    rospy.wait_for_service('add_two_ints')
    try:
        add_two_ints = rospy.ServiceProxy('add_two_ints', AddTwoInts)
        resp1 = add_two_ints(x, y)
        return resp1.sum, time.clock()
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

 
def usage():
    return "%s [x y]"%sys.argv[0]
  
if __name__ == "__main__":
    if len(sys.argv) == 3:
       x = int(sys.argv[1])
       y = int(sys.argv[2])
    else:
        print usage()
        sys.exit(1)

    counter=0
    time_l = []
    while counter < 300:

       print "Requesting %s+%s"%(x, y)
       s, t = add_two_ints_client(x,y)
       print "%s + %s = %s"%(x, y, s)
       timeafter = time.clock()
       duration = timeafter-t
       time_l.append(duration)
       counter +=1


    num_bins = 300
    n, bins, patches = plt.hist(time_l, num_bins, facecolor='blue', alpha=0.5)
    plt.show()


