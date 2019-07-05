#include <ros/ros.h>
#include <iostream>

#include "master/state.h" // generated from the state srv


bool be_a_robot(master::state::Request  &req,
         master::state::Response &res )
{
  res.finished = true;
  ROS_INFO("Robot 2 sending back response");
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "robot1_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("init2", be_a_robot);
  ROS_INFO("Robot 2 ready to execute state initialize.");
  ros::spin();

  return 0;
}
