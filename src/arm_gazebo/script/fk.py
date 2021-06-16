import rospy
from std_msgs.msg import String 
from math import cos, sin, radians
import numpy as np
import math
import arm_gazebo.srv import fk,fkResponse

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

def fk_handler(req):
    M1 = transz(req.joint_lenght[0])
    M2 = rotz(np.radians(req.joint_positions[0])).dot(Tz(req.joint_length[1]))
    M3 = rotx(np.radians(req.joint_positions[1])).dot(Tz(req.joint_length[2]))
    M4 = rotx(np.radians(req.joint_positions[2])).dot(Tz(req.joint_length[3]))
    M5 = rotx(np.radians(req.joint_positions[3])).dot(Tz(req.joint_length[4]))
    
    M = M1.dot(M2).dot(M3).dot(M4).dot(M5)
    return fkResponse([M[0][3], M[1][3], M[2][3]])

def fk_server(): 
    print('FK Server')
    rospy.init_node('fk_server')
    s = rospy.Service('fk',fk,fk_handler)
    print("fk Ready")
    rospy.spin()

if __name__ == '__main__':
    fk_server()