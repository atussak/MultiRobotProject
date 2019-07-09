#include "../include/master_node/StateHandler.h"
#include <ros/ros.h>
#include <iostream>

#include "std_msgs/String.h"
#include <sstream>
//#include "master/state.h" // generated from the state srv

#include <actionlib/client/simple_action_client.h>
#include <print_server/PrintAction.h>

const int NUM_ROBOTS = 2;

int main (int argc, char **argv)
{
    std::cout << "--- Welcome to the robot state handler :) --- \n" << std::endl;  

    ros::init(argc, argv, "Master node started");
    ros::NodeHandle n;

    ros::Rate loop_rate(10); // Hz
    

    StateHandler state_handler;
    State next_state;



    while(ros::ok())
    { 
        state_handler.printCurrentState();
        next_state = state_handler.getStateFromUser();

        if (next_state == IDLE){
            ROS_INFO("Shutting down manager");
            break;
        }
        
        state_handler.callStateAction(next_state, n);

        ros::spinOnce();
        loop_rate.sleep();
    }


    return 0;
}
