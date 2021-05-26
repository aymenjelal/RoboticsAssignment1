#include "ros/ros.h"
//#include "std_msgs/String.h"
#include <sstream> 
#include "question1/input.h"
#include "question1/output.h"
#include <vector>
#include <math.h>
#include <cmath>

std::vector<float> rotatex (float x, float y, float z,float angle) {
    float temp_x, temp_y, temp_z;
    
    temp_y = y;
    temp_z = z;

    temp_y = (y * cos(angle)) - (z * sin(angle));
    temp_z = (y * sin(angle)) + (z * cos(angle));

    std::vector<float> pos; 
    pos.push_back(x);
    pos.push_back(temp_y);
    pos.push_back(temp_z);

    return pos; 
}

std::vector<float> rotatey  (float x, float y, float z,float angle) {
    float temp_x, temp_y, temp_z;
    
    temp_x = x;
    temp_z = z;

    temp_x = (x * cos(angle)) - (z * sin(angle));
    temp_z = - (x * sin(angle)) + (z * cos(angle));

    std::vector<float> pos; 
    pos.push_back(temp_x);
    pos.push_back(y);
    pos.push_back(temp_z);

    return pos; 
}

std::vector<float> rotatez (float x, float y, float z,float angle) {
    float temp_x, temp_y, temp_z;
    
    temp_x = x;
    temp_y = y;

    temp_x = (x * cos(angle)) - (y * sin(angle));
    temp_y = (x * sin(angle)) + (y * cos(angle));

    std::vector<float> pos; 
    pos.push_back(temp_x);
    pos.push_back(temp_y);
    pos.push_back(z);

    return pos;
}

float x=0, y=0, z = 0, alpha = 0, beta = 0, theta = 0, d= 0;
void chatterCallback(const question1::input::ConstPtr& msg){
    x= msg->posvectors[0];
    y = msg->posvectors[1];
    z = msg->posvectors[2];

    alpha = msg->posangles[0];
    beta = msg->posangles[1];
    theta = msg->posangles[2];
    d = msg -> d;


}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "talker");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("input", 1000, chatterCallback);
  ros::Publisher chatter_pub = n.advertise<question1::output>("chatter", 1000);

  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
    question1::input msg; 
    
    std::vector<float> pos;
    pos = rotatex(x,y,z,alpha);

    pos = rotatey(pos[0],pos[1],pos[2],beta);

    pos = rotatez(pos[0],pos[1],pos[2],theta);

    //translation 

    pos[0] = pos[0] + d; 
    pos[1] = pos[1] + d; 
    pos[2] = pos[2] + d; 

    question1::output outmsg; 


    ROS_INFO("%.2f", msg.d);

    outmsg.posvectors[0] = pos[0];
    outmsg.posvectors[1] = pos[1]; 
    outmsg.posvectors[2] = pos[2];

    chatter_pub.publish(outmsg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}