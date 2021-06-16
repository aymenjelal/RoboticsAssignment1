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