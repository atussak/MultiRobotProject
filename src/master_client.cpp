#include "StateHandler.h"

int main (int argc, char **argv)
{
  
    std::cout << "Welcome to the robot state handler :) \n" << std::endl;

    StateHandler state_handler();

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
