#include "../include/master_node/StateHandler.h"
#include <ros/ros.h>
#include <iostream>

#include <actionlib/client/simple_action_client.h>
#include <print_server/PrintAction.h>


int main (int argc, char **argv)
{
  
    ros::init(argc, argv, "Master node started");

    std::cout << "Welcome to the robot state handler :) \n" << std::endl;

    StateHandler state_handler;

    State next_state;

    typedef actionlib::SimpleActionClient<print_server::PrintAction> Client;

    std::cout << "--- About to call action ---" << std::endl;
    Client client("print", true); // true -> don't need ros::spin()
    if (!client.waitForServer(ros::Duration(0,0))){
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
    /*
    while (true)
    {
     
        if (state_handler.currentStateDone())
        {
            next_state = state_handler.getStateFromUser();
            state_handler.callStateAction(next_state);
        }

    }*/

    return 0;
}
