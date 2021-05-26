#include "ros/ros.h"
//#include "std_msgs/String.h"
#include <sstream>
#include "question1/output.h"

void chatterCallback(const question1::output::ConstPtr& msg)
{
  ROS_INFO("I heard: [%.2f]", msg->posvectors[0]);
}

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "listener");

  
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

  
  ros::spin();

  return 0;
}