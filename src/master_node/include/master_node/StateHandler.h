#include <ros/ros.h>

enum State {IDLE, INITIALIZE, READ_POSE, APPROACH, PRE_GRASP, GRASP, LIFT, MANIPULATE, HOMING};

class StateHandler
{
private:
	State current_state;
	bool state_executed;

	// functions that call the actions for the specific states
	bool initialize(ros::NodeHandle n) const;
	bool readPose(ros::NodeHandle n) const;
	bool approach(ros::NodeHandle n) const;
	bool preGrasp(ros::NodeHandle n) const;
	bool grasp(ros::NodeHandle n) const;
	bool lift(ros::NodeHandle n) const;
	bool manipulate(ros::NodeHandle n) const;
	bool homing(ros::NodeHandle n) const;

	void printActionStatus(const bool &robot1_status, const bool &robot2_status, const bool &robot3_status) const;

public:
	StateHandler();

	void printCurrentState() const;
	State getStateFromUser();
	void callStateAction(const State &state, ros::NodeHandle n);
	bool isCurrentStateDone() const {return state_executed;}

	~StateHandler(){}

};