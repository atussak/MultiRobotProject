#include <ros/ros.h>

enum State {INITIALIZE=1, READ_POSE, APPROACH, PRE_GRASP, GRASP, LIFT, MANIPULATE, HOMING};

class StateHandler
{
private:
	State current_state;
	bool state_executed;

	// functions that call the actions for the specific states
	bool initialize(ros::NodeHandle n) const;
	bool readPose() const;
	bool approach() const;
	bool preGrasp() const;
	bool grasp() const;
	bool lift() const;
	bool manipulate() const;
	bool homing() const;

	void printActionStatus(const bool &robot1_status, const bool &robot2_status, const bool &robot3_status) const;

public:
	StateHandler();

	void printCurrentState() const;
	State getStateFromUser();
	void callStateAction(const State &state, ros::NodeHandle n);
	bool currentStateDone() const {return state_executed;}

	~StateHandler(){}

};