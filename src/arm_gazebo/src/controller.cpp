#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
#include "arm_gazebo/jointangles.h"
#include "arm_gazebo/endpositions.h"
#include "ros/ros.h"
#include "arm_gazebo/fk.h"
#include "arm_gazebo/ik.h"

namespace gazebo
{
	class ModelPush : public ModelPlugin
	{
	public:
		void setangles(const arm_gazebo::jointangles::ConstPtr& msg){
			std::cout << "Message Recieved"<<std::endl;
			ROS_INFO("I heard: [%.2f]", msg->joint1);

			
			std::string jointname1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
			std::string jointname2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			std::string jointname3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
			std::string jointname4 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();
			std::string jointname5 = this->model->GetJoint("arm4_palm_joint")->GetScopedName(); 

			
			this->jointController->SetPositionTarget(jointname1,  msg->joint1);
			this->jointController->SetPositionTarget(jointname2,  msg->joint2);
			this->jointController->SetPositionTarget(jointname3,  msg->joint3);
			this->jointController->SetPositionTarget(jointname4,  msg->joint4);
			this->jointController->SetPositionTarget(jointname5,  msg->arm_palm);
			
		}
		void getPositionsCallback(const arm_gazebo::endpositions::ConstPtr& msg){
			
			ROS_INFO("Received %f %f %f", msg->x, msg->y, msg->z);
                arm_gazebo::ik srv;
			ROS_INFO("after service");
                srv.request.joint_positions = {0, 0, 0, 0, 0, 0};
				srv.request.actuator_pose = {msg->x, msg->y, msg->z};
                
				for (int i = 0; i < 4; i++)
				{
					srv.request.joint_positions[i] = physics::JointState(jointList[i]).Position(0);
				}

				ROS_INFO("Received %f %f %f", msg->x, msg->y, msg->z);

                if (ikClient.call(srv))
                {
					ROS_INFO("Ik: [%f, %f, %f, %f]", 
					srv.response.target_positions[0], srv.response.target_positions[1], srv.response.target_positions[2], srv.response.target_positions[3]);
                    for (int i = 0; i < 4; i++)
                    {
                        jointController->SetPositionTarget(jointList[i]->GetScopedName(), srv.response.target_positions[i]);
                    }  

                }

            
		}
		
		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
		{
			// Store the pointer to the model
			this->model = _parent;

			// // intiantiate the joint controller
			this->jointController = this->model->GetJointController();
			this->jointList = model->GetJoints();
			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&ModelPush::OnUpdate, this));
			// // set your PID values
			this->pid = common::PID(60, 30, 40);
			this->pid2 = common::PID(100, 30, 40);

			auto joint_name1 = "chasis_arm1_joint";
			auto joint_name2 = "arm1_arm2_joint";
			auto joint_name3 = "arm2_arm3_joint";
			auto joint_name4 = "arm3_arm4_joint";
	        auto joint_name5 = "arm4_palm_joint";
			auto joint_name6 = "palm_left_finger_joint";
			auto joint_name7 = "palm_right_finger_joint";
			auto joint_name8 = "left_finger_left_finger_tip_joint";
			auto joint_name9 = "right_finger_right_finger_tip_joint";

			//std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();

			this->jointController->SetPositionPID(this->model->GetJoint(joint_name1)->GetScopedName(), pid);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name2)->GetScopedName(), pid);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name3)->GetScopedName(), pid);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name4)->GetScopedName(), pid2);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name5)->GetScopedName(), pid2);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name6)->GetScopedName(), pid2);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name7)->GetScopedName(), pid2);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name8)->GetScopedName(), pid2);
			this->jointController->SetPositionPID(this->model->GetJoint(joint_name9)->GetScopedName(), pid2);

			for (int i = 4; i < 9; i++)
			{
				jointController->SetPositionTarget(jointList[i]->GetScopedName(), 0);
			}  
			int argc = 0;
            char **argv = nullptr;
			ros::init(argc,argv,"angle_listener");

			ros::NodeHandle n;
			//this->pub =n.advertise<arm_gazebo::jointangles>("pubangle_topic", 1000);
			this->sub = n.subscribe("angle_topic",1000, &ModelPush::getPositionsCallback,this);
		
			fkClient = n.serviceClient<arm_gazebo::fk>("fk");
			ikClient = n.serviceClient<arm_gazebo::ik>("ik");
			// Listen to the update event. This event is broadcast every
			// simulation iteration.
			ros::spinOnce();
	
		}


		// Called by the world update start event
	public:
		void OnUpdate()
		{
			// arm_gazebo::jointangles msg; 
			// msg.joint1 = 5.0;
			// this->pub.publish(msg);
			float angleDegree = -90;
			float rad = M_PI * angleDegree / 180;

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();

			// this->jointController->SetPositionPID(name, pid);
			// this->jointController->SetPositionTarget(name, rad);
			// this->jointController->Update();

			// Get joint position by index. 
			// 0 returns rotation accross X axis
			// 1 returns rotation accross Y axis
			// 2 returns rotation accross Z axis
			// If the Joint has only Z axis for rotation, 0 returns that value and 1 and 2 return nan
			double a1 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);
			double a2 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);
			double a3 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);
			double a4 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);
		
			// double a2 = this->model->GetJoint("chasis_arm1_joint").Position(0);
			// double a3 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(2);
			// std::cout << "Current chasis_arm1_joint: " << a1 * 180.0 / M_PI << std::endl;
			// std::cout << "Current arm1_arm2_joint values: " << a2 * 180.0 / M_PI << std::endl;
			// std::cout << "Current arm2_arm3_joint values: " << a3 * 180.0 / M_PI << std::endl;
			// std::cout << "Current arm3_arm4_joint values: " << a4 * 180.0 / M_PI << std::endl;
			
		}

		// a pointer that points to a model object
	private:
		physics::ModelPtr model;
		physics::Joint_V jointList;

	private: 
		ros::Publisher pub;
		ros::Subscriber sub; 
		ros::ServiceClient fkClient;

		ros::ServiceClient ikClient;
		// 	// A joint controller object
		// 	// Takes PID value and apply angular velocity
		// 	//  or sets position of the angles
	private:
		physics::JointControllerPtr jointController;

	private:
		event::ConnectionPtr updateConnection;

		// // 	// PID object
	private:
		common::PID pid;
		common::PID pid2;
	};

	// Register this plugin with the simulator
	GZ_REGISTER_MODEL_PLUGIN(ModelPush)
}