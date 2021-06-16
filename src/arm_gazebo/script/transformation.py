import rospy
from std_msgs.msg import String 
from math import cos, sin, radians
import numpy as np
import math
import tinyik as ik 


def roty(o):
    return np.array([[np.cos(o) ,0, np.sin(o),0],
                     [ 0        ,1   ,0     ,0],
                     [-np.sin(o),0, np.cos(o),0],
                     [0         ,0, 0        ,1]])

def rotx(o):
    return np.array([[1,     0    ,     0     ,0],
                     [0, np.cos(o), -np.sin(o),0],
                     [0, np.sin(o), np.cos(o) ,0],
                     [0,    0     ,     0     ,1]])

def rotz(o):
    return np.array([
                              [np.cos(o), -np.sin(o),0, 0],
                              [np.sin(o),np.cos(o) , 0, 0],
                              [0         ,0       , 1,  0],
                              [0         ,0       , 0, 1]])
def transz(b):
    return np.array([[1,0,0,0],
                    [0,1,0,0],
                    [0,0,1,b],
                    [0,0,0,1]])



if __name__ == '__main__':
    m1=transz(0.1)
    m2=rotz(np.radians(60)).dot(transz(0.05))
    m3= rotx(np.radians(30)).dot(transz(2.0))
    m4=rotx(np.radians(-90)).dot(transz(1.0))
    m5= rotx(np.radians(-30)).dot(transz(1.0))
    m=m1
    mats=[m2,m3,m4,m5]
    for i in range(len(mats)):
        m=m.dot(mats[i])
    print(m)

    arm = ik.Actuator([
    'z',[0,0,0.15],
    'x', [ 0, 0 , 2.0],
    'x',[0, 0 ,1],
    'x',[0,0,1]
    ])

    arm.ee = [1.0,1.0,1.0]
    print(arm.angles)
