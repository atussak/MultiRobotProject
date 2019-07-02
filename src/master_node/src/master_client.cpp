#include "../include/master_node/StateHandler.h"
#include <ros/ros.h>
#include <iostream>

int main (int argc, char **argv)
{
  
    ros::init(argc, argv, "Master node started");

    std::cout << "Welcome to the robot state handler :) \n" << std::endl;

    StateHandler state_handler;

    State next_state;

    while (true)
    {
     
        if (state_handler.currentStateDone())
        {
            next_state = state_handler.getStateFromUser();
            state_handler.callStateAction(next_state);
        }

    }

    return 0;
}
