#include <ros/ros.h>
#include <print_server/PrintAction.h>
#include <actionlib/server/simple_action_server.h>
#include <iostream>
#include <string>
#include <sstream>

typedef actionlib::SimpleActionServer<print_server::PrintAction> Server;



void execute(const print_server::PrintGoalConstPtr& goal, Server* as)  // Note: "Action" is not appended to DoDishes here
{
	std::cout << "Execute the printing" << std::endl;
  // Do lots of awesome groundbreaking robot stuff here
  for(int i = 0; i < goal->print_nr_times; i++){
		std::cout << "\n------\nHeyho im a server servicing your every wish :)\n------\n" << std::endl;
  }
  as->setSucceeded();
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "do_dishes_server");
  ros::NodeHandle n;
  int robot_number = 300;
  std::cout << "ROBOT NUMBER " << robot_number << std::endl;

    if (n.getParam("robot_number", robot_number))
    {
      ROS_INFO("Got param: %d", robot_number);
    }
    else
    {
      ROS_ERROR("Failed to get param 'robot_number'");
    }

  std::stringstream ss;
  ss << "print" << robot_number;

  std::string action_name = ss.str();

  std::cout << "Action name: " << action_name << std::endl;
  action_name = "print1";

  Server server(n, "print", boost::bind(&execute, _1, &server), false);
  server.start();
  std::cout << "Server started" << std::endl;
  ros::spin();
  std::cout << "Done" << std::endl;
  return 0;
}