## Robotics Assignment 2 

1. Added to the model.sdf file 
2. New endeffector controller added with the two commands 
3. fk and ik services added 
4. old controller edited to include ik 

5. To run 

## Move to the box 

rostopic pub --once /angle_topic arm_gazebo/endpositions "x: 0.0
y: -2.5
z: 0.4" 

## catch the box 
rostopic pub --once /command_topic arm_gazebo/endeffectorcommand catch

## release the box 
rostopic pub --once /command_topic arm_gazebo/endeffectorcommand  release

## move the box to a new location 
rostopic pub --once /angle_topic arm_gazebo/endpositions "x: 1.4
y: -1.7
z: 0.7" 

## move to the initial position 
rostopic pub --once /angle_topic arm_gazebo/endpositions "x: 0.0
y: -2.5
z: 0.4" 


## Robotics Assignment

Question 1 is in the src/question1 
The talker listens to positions and angles published from the terminal using the input message type and 
input topic we have created and then it transforms the position and then publishes the transformed using 
the output message and the chatter topic.

Question 2
We used the arm_ws package we used in class and made edits to our model.sdf to include the arms and joints 

Question 3
We edited the model plugin to find the joint and prints out the position for the joint in the on update function

Question 4 
We created a subscriber node in the plugin inside the the load function. The subscriber will set joint angles in its 
call back function. We will publish the angles to set to the joints from the terminal using the angles_topic