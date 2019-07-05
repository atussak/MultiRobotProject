#include <ros/ros.h>
//#include <print_server/PrintAction.h>
//#include <actionlib/server/simple_action_server.h>
#include <iostream>

#include "master/state.h" // generated from the state srv


bool be_a_robot(master::state::Request  &req,
         master::state::Response &res )
{
  res.robot1_finished = true;
  ROS_INFO("sending back response");
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "robot1_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("execute_state", be_a_robot);
  ROS_INFO("Ready to execute state, give it to me.");
  ros::spin();

  return 0;
}


/*
typedef actionlib::SimpleActionServer<print_server::PrintAction> Server;



void execute(const print_server::PrintGoalConstPtr& goal, Server* as)  // Note: "Action" is not appended to DoDishes here
{
	std::cout << "Execute the printing" << std::endl;
  // Do lots of awesome groundbreaking robot stuff here
  for(int i = 0; i < goal->print_nr_times; i++){
		std::cout << "Heyho im a server servicing your every wish :)" << std::endl;
  }
  as->setSucceeded();
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "do_dishes_server");
  ros::NodeHandle n;
  Server server(n, "print_server", boost::bind(&execute, _1, &server), false);
  server.start();
  std::cout << "Server started" << std::endl;
  ros::spin();
  std::cout << "Done" << std::endl;
  return 0;
}*/