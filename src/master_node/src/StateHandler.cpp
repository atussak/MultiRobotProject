#include "../include/master_node/StateHandler.h"

#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>

#include <iostream>

#include <print_server/PrintAction.h>


/*
         Change this to be of the general action type that will be made for the
         state-actions.
*/
typedef actionlib::SimpleActionClient<print_server::PrintAction> Client;


StateHandler::StateHandler()
{
	current_state = IDLE;
	state_executed = true;
}


void StateHandler::printCurrentState() const
{
	std::cout << "The current state is ";

	switch(current_state) {
		case IDLE		:	std::cout << "idle";
							break;
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
		std::cout << " which is executed. \n" << std::endl;
	}else{
		std::cout << " which is not done executing. \n" << std::endl;
	}
}


State StateHandler::getStateFromUser()
{
	State state = State(-1);

	while (state < IDLE || state > HOMING || state > current_state+1){

		std::cout << "Please input state ID to be executed (1-8)\n\n";
		std::cout <<    "\t 0 = exit program\n"
						"\t 1 = initialize\n"
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

		if(state < IDLE || state > HOMING){
			std::cout << "!! Invalid input - Not a state !!\n" << std::endl;
		}
		// Making it impossible to jump states.
		// The current or previous state could be executet again
		if(state > current_state+1){
			std::cout << "!! Invalid input - States have to be executed in the right order !!\n" << std::endl;
		}	
	}
	std::cout << std::endl;
	return state;
}


void StateHandler::callStateAction(const State &state, ros::NodeHandle n)
{
	std::cout << "call state action " << state << std::endl;
	switch(state)
	{
		std::cout << "in switch" << std::endl;
		case INITIALIZE :  	std::cout << "Execute initialize" << std::endl;
							state_executed = initialize(n);
						  	break;
		case READ_POSE	:   std::cout << "Execute read pose" << std::endl;
						  	state_executed = readPose(n);
						  	break; 
		case APPROACH   :	std::cout << "Execute approach" << std::endl;
							state_executed = approach(n);
							break;
		case PRE_GRASP	: 	std::cout << "Execute pre grasp" << std::endl;
							state_executed = preGrasp(n);
							break;
		case GRASP 		:	std::cout << "Execute grasp" << std::endl;
							state_executed = grasp(n);
							break;
		case LIFT 		: 	std::cout << "Execute lift" << std::endl;
							state_executed = lift(n);
							break;
		case MANIPULATE : 	std::cout << "Execute manipulate" << std::endl;
							state_executed = manipulate(n);
							break;
		case HOMING 	: 	std::cout << "Execute homing" << std::endl;
							state_executed = homing(n);
							break;
		default			:	std::cout << "Error: could not find state " << state << std::endl;
	}

	if(state_executed){
		current_state = state;
	} else {
		current_state = State(current_state-1);
	}
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

	std::cout << "--- About to call actions ---" << std::endl;

	// Make one client for each robot
	Client client("/robot1/print", true); // true -> don't need ros::spin()
	Client client2("/robot2/print", true);

	// Will wait for max 3 seconds for the connection between client and server
	if (!client.waitForServer(ros::Duration(3,0))){
		std::cout << "Server 1 contact timeout" << std::endl;
	}
	if (!client2.waitForServer(ros::Duration(3,0))){
		std::cout << "Server 2 contact timeout" << std::endl;
	}

	// Goal sent to the server. Could just be boolean for the general case.
	print_server::PrintGoal goal;
	goal.print_nr_times = 1;

	client.sendGoal(goal);
	client2.sendGoal(goal);

	/*
		Ideally the return values of waitForResult will be inputed to the function
		StateHandler::printActionStatus() so that it doesnt have to be done again
		for every function and it will be outputet in a nice format.
	*/

	if(client.waitForResult(ros::Duration(5.0)) && client2.waitForResult(ros::Duration(5.0))){
		printf("Yay! The action was executed.");
    	return true;
	} else {
		std::cout << "Waited 5 seconds without result." << std::endl;
		return false;
	}
	
}

/*

	These functions will do the same as initialize except the will call respectively
	different servers.

*/

bool StateHandler::readPose(ros::NodeHandle n) const
{
	// read goal, endeffector and mobile platform position
	return false;
}

bool StateHandler::approach(ros::NodeHandle n) const
{
	//move to the neighborhood of the goal position
	return false;
}

bool StateHandler::preGrasp(ros::NodeHandle n) const
{
	// command manipulator
	return false;
}

bool StateHandler::grasp(ros::NodeHandle n) const
{
	// gripper grasp
	return false;
}

bool StateHandler::lift(ros::NodeHandle n) const
{
	// move manipulator
	return false;
}

bool StateHandler::manipulate(ros::NodeHandle n) const
{
	// commands sent to manipulator and robot platform
	return false;
}

bool StateHandler::homing(ros::NodeHandle n) const
{
	// drop object and get back to init position
	return false;
}