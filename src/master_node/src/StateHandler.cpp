#include "../include/master_node/StateHandler.h"

#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <geometry_msgs/Pose2D.h>
#include <iostream>

//#include <print_server/PrintAction.h>
#include "master/state.h" // generated from the state srv


StateHandler::StateHandler()
{
	current_state = INITIALIZE;
	state_executed = true;
}


void StateHandler::printCurrentState() const
{
	std::cout << "The current state is ";

	switch(current_state) {
		case INITIALIZE :  	std::cout << "initialize";
						  	break;
		case READ_POSE	:   std::cout << "read pose";
						  	break; 
		case APPROACH   :	std::cout << "approach";
							break;
		case PRE_GRASP	: 	std::cout << "pre grasp";
							break;
		case GRASP 		:	std::cout << "grasp";
							break;
		case LIFT 		: 	std::cout << "lift";
							break;
		case MANIPULATE : 	std::cout << "manipulate";
							break;
		case HOMING 	: 	std::cout << "homing";
							break;
	}

	if (state_executed){
		std::cout << " which is executed." << std::endl;
	}else{
		std::cout << " which is not done executing." << std::endl;
	}
}


State StateHandler::getStateFromUser()
{
	State state = State(0);

	while (state < INITIALIZE || state > HOMING){

		std::cout << "Please input state ID to be executed (1-8)\n\n";
		std::cout <<    "\t 1 = initialize\n"
						"\t 2 = read pose\n"
						"\t 3 = approach\n"
						"\t 4 = pre grasp\n"
						"\t 5 = grasp\n"
						"\t 6 = lift\n"
						"\t 7 = manipulate\n"
						"\t 8 = homing" << std::endl;
		int input_state;
		std::cin >> input_state;
		state = State(input_state);

		if(state < INITIALIZE || state > HOMING){
			std::cout << "!! Invalid input !!" << std::endl;
		}	
	}
	return state;
}


void StateHandler::callStateAction(const State &state, ros::NodeHandle n)
{
	
	state_executed = false;
	std::cout << "call state action " << state << std::endl;
	switch(state)
	{
		std::cout << "in switch" << std::endl;
		case INITIALIZE :  	std::cout << "Execute initialize" << std::endl;
							initialize(n);
						  	break;
		case READ_POSE	:   std::cout << "Execute read pose" << std::endl;
						  	readPose();
						  	break; 
		case APPROACH   :	std::cout << "Execute approach" << std::endl;
							approach();
							break;
		case PRE_GRASP	: 	std::cout << "Execute pre grasp" << std::endl;
							preGrasp();
							break;
		case GRASP 		:	std::cout << "Execute grasp" << std::endl;
							grasp();
							break;
		case LIFT 		: 	std::cout << "Execute lift" << std::endl;
							lift();
							break;
		case MANIPULATE : 	std::cout << "Execute manipulate" << std::endl;
							manipulate();
							break;
		case HOMING 	: 	std::cout << "Execute homing" << std::endl;
							homing();
							break;
		default			:	std::cout << "Error: could not find state " << state << std::endl;
	}

	//std::cout << "OUTSIDE switch" << std::endl;
}

void StateHandler::printActionStatus(const bool &robot1_status, const bool &robot2_status, const bool &robot3_status) const
{
	if (robot1_status && robot2_status && robot3_status)
	{
		ROS_INFO("All robots executed successfully");
	}
	else{
		ROS_INFO("Action did not finish before the time out.");
		if(!robot1_status){
		  ROS_INFO("Robot 1 failed.");
		}
		if(!robot2_status){
		  ROS_INFO("Robot 2 failed.");
		}
		if(!robot3_status){
		  ROS_INFO("Robot 3 failed.");
		}

		// Do something about this problem or abort (???)
	}
}

bool StateHandler::initialize(ros::NodeHandle n) const
{
	ros::ServiceClient client1 = n.serviceClient<master::state>("init1");
	ros::ServiceClient client2 = n.serviceClient<master::state>("init2");
	
	master::state srv1;
	srv1.request.execute_state = true;
	master::state srv2;
	srv2.request.execute_state = true;

	if (client1.call(srv1))
    {
        if(srv1.response.finished){
            ROS_INFO("Robot 1 is initialized");
        }
        else{
            ROS_INFO("Robot 1 is busy");
        }
    
    }
    else
    {
        ROS_ERROR("Failed to call service init1");
        //return 1;
    }

    if (client2.call(srv2))
    {
        if(srv2.response.finished){
            ROS_INFO("Robot 2 is initialized");
        }
        else{
            ROS_INFO("Robot 2 is busy");
        }
    
    }
    else
    {
        ROS_ERROR("Failed to call service init2");
        //return 1;
    }



	/*
	geometry_msgs::Pose2D goal

	/*** INITIALIZE ***/

	// create action client for each robot
	// true causes the client to spin its own thread enabling parallel execution of action
	
	/*
	actionlib::SimpleActionClient<robot1::initialize_action> ac1_init("init robot 1", true);
	actionlib::SimpleActionClient<robot2::initialize_action> ac2_init("init robot 2", true);
	actionlib::SimpleActionClient<robot3::initialize_action> ac3_init("init robot 3", true);

	ROS_INFO("Waiting for initialization action servers to start.");
	// wait for the action server to start
	ac1_init.waitForServer(); //will wait for infinite time
	ac2_init.waitForServer(); //will wait for infinite time
	ac3_init.waitForServer(); //will wait for infinite time

	ROS_INFO("All action initialization servers started, start init function with common goal.");
	int max_wait_duration = ros::Duration(20.0);
	bool init1_ok = ac1_init.sendGoalAndWait(goal, max_wait_duration);
	bool init2_ok = ac2_init.sendGoalAndWait(goal, max_wait_duration);
	bool init3_ok = ac3_init.sendGoalAndWait(goal, max_wait_duration);

	printActionStatus(init1_ok, init2_ok, init3_ok);
	*/

	/*
	typedef actionlib::SimpleActionClient<print_server::PrintAction> Client;

	std::cout << "--- About to call action ---" << std::endl;
	Client client("print", true); // true -> don't need ros::spin()
	if (!client.waitForServer(ros::Duration(3,0))){
		std::cout << "Server contact timeout" << std::endl;
	}
	print_server::PrintGoal goal;
	goal.print_nr_times = 2;
	client.sendGoal(goal);
	std::cout << "Goal sent" << std::endl;
	//client.waitForResult(ros::Duration(5.0));
	std::cout << "Waited 5 seconds" << std::endl;
  	if (client.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    	printf("Yay! The action was executed.");
  	printf("Current State: %s\n", client.getState().toString().c_str());
	*/
	return true;
}



bool StateHandler::readPose() const
{
	// read goal, endeffector and mobile platform position
	return true;
}

bool StateHandler::approach() const
{
	//move to the neighborhood of the goal position
	return true;
}

bool StateHandler::preGrasp() const
{
	// command manipulator
	return true;
}

bool StateHandler::grasp() const
{
	// gripper grasp
	return true;
}

bool StateHandler::lift() const
{
	// move manipulator
	return true;
}

bool StateHandler::manipulate() const
{
	// commands sent to manipulator and robot platform
	return true;
}

bool StateHandler::homing() const
{
	// drop object and get back to init position
	return true;
}