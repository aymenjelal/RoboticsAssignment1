#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "arm_gazebo/endeffectorcommand.h"

namespace gazebo
{
	class EndeffectorController : public ModelPlugin
	{

	public:
		void commandCallback(const arm_gazebo::endeffectorcommand &msg)
		{


			std::string command = msg.command;

		
            std::string left_finger_left_finger_tip = this->model->GetJoint("left_finger_left_finger_tip_joint")->GetScopedName();
            std::string right_finger_right_finger_tip = this->model->GetJoint("right_finger_right_finger_tip_joint")->GetScopedName();

            this->jointController->SetPositionPID(left_finger_left_finger_tip, common::PID(30.1, 10.01, 10.03));
            this->jointController->SetPositionPID(right_finger_right_finger_tip, common::PID(30.1, 10.01, 10.03));

			if (command == "catch")
			{
				this->jointController->SetPositionTarget(left_finger_left_finger_tip, 1.57);
				this->jointController->SetPositionTarget(right_finger_right_finger_tip, -1.57);
			}
			else if (command == "release")
			{
				this->jointController->SetPositionTarget(left_finger_left_finger_tip, -0.17);
				this->jointController->SetPositionTarget(right_finger_right_finger_tip, 0.17);
			}
		}

		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
		{
			this->model = _parent;
			this->jointController = this->model->GetJointController();

			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&EndeffectorController::OnUpdate, this));

			int argc = 0;
			char **argv = NULL;
			ros::init(argc, argv, "command_listener");
			sub = n.subscribe("command_topic", 1000, &EndeffectorController::commandCallback, this);
			ros::spinOnce();
		}

		void OnUpdate()
		{
			ros::spinOnce();
		}

	private:
		physics::ModelPtr model;
		physics::JointControllerPtr jointController;
		event::ConnectionPtr updateConnection;
		ros::NodeHandle n;
		ros::Subscriber sub;
	};

	GZ_REGISTER_MODEL_PLUGIN(EndeffectorController)
}
