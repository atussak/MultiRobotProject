#include "StateHandler.h"

#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>

#include <iostream>


StateHandler::StateHandler()
{
	current_state = INITIALIZE;
	executed = true;
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

	if (executed){
		std::cout << " which is executed." << std::endl;
	}else{
		std::cout << " which is not done executing." << std::endl;
	}
}


State StateHandler::getStateFromUser()
{
	State state = 0;

	while (state < INITIALIZE || state > HOMING){

		std::cout << "Please input state ID to be executed (1-8) \n\n";
		std::cout <<   "\t 1 = initialize\n
						\t 2 = read pose\n
						\t 3 = approach\n
						\t 4 = pre grasp\n
						\t 5 = grasp\n
						\t 6 = lift\n
						\t 7 = manipulate\n
						\t 8 = homing\n";
		std::cin << state << std::endl;
		if(state < INITIALIZE || state > HOMING){
			std::cout << "!! Invalid input !!" << std::endl;
		}	
	}
	return state;
}


void StateHandler::callStateAction(const State &state)
{

	executed = false;

	switch(state) {
		case INITIALIZE :  	std::cout << "Execute initialize";
							initialize();
						  	break;
		case READ_POSE	:   std::cout << "Execute read pose";
						  	readPose();
						  	break; 
		case APPROACH   :	std::cout << "Execute approach";
							approach();
							break;
		case PRE_GRASP	: 	std::cout << "Execute pre grasp";
							preGrasp();
							break;
		case GRASP 		:	std::cout << "Execute grasp";
							grasp();
							break;
		case LIFT 		: 	std::cout << "Execute lift";
							lift();
							break;
		case MANIPULATE : 	std::cout << "Execute manipulate";
							manipulate();
							break;
		case HOMING 	: 	std::cout << "Execute homing";
							homing();
							break;
	}


}

void StateHandler::printActionStatus(const bool &robot1_status, const bool &robot2_status, const bool &robot3_status) const
{
	if (init1_ok && init2_ok && init3_ok)
	{
		ROS_INFO("All robots executed successfully");
		executed = false;
	}
	else{
		ROS_INFO("Action did not finish before the time out.");
		if(!init1_ok){
		  ROS_INFO("Robot 1 failed.");
		}
		if(!init2_ok){
		  ROS_INFO("Robot 2 failed.");
		}
		if(!init3_ok){
		  ROS_INFO("Robot 3 failed.");
		}

		// Do something about this problem or abort (???)
	}
}

bool StateHandler::initialize(goal) const
{
	ros::init(argc, argv, "test_fibonacci");

	/*** INITIALIZE ***/

	// create action client for each robot
	// true causes the client to spin its own thread enabling parallel execution of action
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

	return true;
}



bool readPose() const
{
	return true;
}

bool approach() const
{
	return true;
}

bool preGrasp() const;
{
	return true;
}

bool grasp() const;
{
	return true;
}

bool lift() const;
{
	return true;
}

bool manipulate() const;
{
	return true;
}

bool homing() const;
{
	return true;
}