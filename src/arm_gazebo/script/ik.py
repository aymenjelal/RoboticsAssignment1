import rospy
import numpy as np
import math
import tinyik as ik 
import arm_gazebo.srv import ik, ikResponse

arm = ik.Actuator([
    'z',[0,0,0.15],
    'x', [ 0, 0 , 2.0],
    'x',[0, 0 ,1],
    'x',[0,0,0.5],
    'x',[0,0,0.1],
    ])


def ik_handler(req): 
    arm.angles = req.joint_positions
    arm.ee = req.actuator_pose

    return ikResponse(arm.angles)


def ik_server(): 
    rospy.init_node('ik_server')
    s= rospy.Service('ik',ik,ik_handler)
    print('ik ready')
    rospy.spin()

if __name__ == "__main__": 
    ik_server()

    
