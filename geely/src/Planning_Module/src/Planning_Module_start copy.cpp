//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// File: ert_main.cpp
//
// Code generated for Simulink model 'Planning_Module'.
//
// Model version                  : 5.7
// Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
// C/C++ source code generated on : Sat Apr 15 11:18:56 2023
//
// Target selection: ert.tlc
// Embedded hardware selection: 32-bit Generic
// Code generation objectives: Unspecified
// Validation result: Not run
#include <ros/ros.h> //include the core files in ros system
#include "Planning_Module/trajectory_planning_msg.h" 
#include <stddef.h>
#include <stdio.h>                // This ert_main.c example uses printf/fflush
#include "Planning_Module.h"           // Model's header file
#include "rtwtypes.h"
#include "GNSS_Decoding_py/GNSS_Output.h"


static Trajectory_Planning Planning_Module_Obj;// Instance of model class

ros::Publisher Planning_Module_pub;
Trajectory_Planning::ExtU_Planning_Module_T Module_input;


void get_Module_input(Trajectory_Planning::ExtU_Planning_Module_T &Model_input, 
                    const GNSS_Decoding_py::GNSS_Output::ConstPtr& msg){

    Model_input.X_Vehicle = msg->X_E;
    Model_input.Y_Vehicle = msg->Y_N;
    // ROS_INFO("X_Vehicle:%0.3f\n",  Model_input.X_Vehicle);

}

void Planning_Module_Callback(const GNSS_Decoding_py::GNSS_Output::ConstPtr& msg){
        // ROS_INFO("fx:%0.3f\n",4.00); 
        
        

        get_Module_input(Module_input, msg);

        Planning_Module_Obj.setExternalInputs(&Module_input);
        Planning_Module_Obj.step();

        const Trajectory_Planning::ExtY_Planning_Module_T& Module_output = Planning_Module_Obj.getExternalOutputs();
        
        Planning_Module::trajectory_planning_msg  trajectory_planning_msg ;

          for (int i = 0; i < 200; i++) {
          trajectory_planning_msg.header.stamp = ros::Time::now();
          trajectory_planning_msg.fx[i] = Module_output.fx[i];
          trajectory_planning_msg.fy[i] = Module_output.fy[i];
          trajectory_planning_msg.ftheta[i] = Module_output.ftheta[i];
          trajectory_planning_msg.fkappa[i] =   Module_output.fkappa[i];
          trajectory_planning_msg.V_optimal[i] = Module_output.V_optimal;
        }


        // ROS_INFO("fx:%0.3f\n",  trajectory_planning_msg.fx[0]); 
        // ROS_INFO("fy:%0.3f\n",  trajectory_planning_msg.fy[0]); 
        // ROS_INFO("ftheta:%0.3f\n",  trajectory_planning_msg.ftheta[0]); 
        // ROS_INFO("fkappa:%0.3f\n",  trajectory_planning_msg.fkappa[0]); 
        // ROS_INFO("V_optimal:%0.3f\n",  trajectory_planning_msg.V_optimal[0]);

        Planning_Module_pub.publish(trajectory_planning_msg);
  }


int main(int argc,char** argv)
{
  ros::init(argc,argv,"Planning_Module_start");
  ros::NodeHandle n;
  Planning_Module_Obj.initialize();
  Planning_Module_pub = n.advertise<Planning_Module::trajectory_planning_msg>("Trajectory_Planning",10);
  ros::Subscriber Planning_Module_start = n.subscribe("GNSS_info", 10, Planning_Module_Callback);
  ros::spin();
  return 0;
}

