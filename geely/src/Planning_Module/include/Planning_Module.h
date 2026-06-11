//
// File: Planning_Module.h
//
// Code generated for Simulink model 'Planning_Module'.
//
// Model version                  : 5.30
// Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
// C/C++ source code generated on : Tue Jul 16 04:46:00 2024
//
// Target selection: ert.tlc
// Embedded hardware selection: Generic->Unspecified (assume 32-bit Generic)
// Code generation objectives: Unspecified
// Validation result: Not run
//
#ifndef RTW_HEADER_Planning_Module_h_
#define RTW_HEADER_Planning_Module_h_
#include <cmath>
#include <cstring>
#include "rtwtypes.h"
#include "Planning_Module_types.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"
#include "rt_defines.h"

// Macros for accessing real-time model data structure
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

// Class declaration for model Planning_Module
class Trajectory_Planning {
  // public data and function members
 public:
  // Block signals (default storage)
  typedef struct {
    real_T x_reference_vector[312];   // '<S1>/city2'
    real_T y_reference_vector[312];   // '<S1>/city2'
    real_T X_reference[201];           // '<S7>/Find_Global_Point1'
    real_T Y_reference[201];           // '<S7>/Find_Global_Point1'
    real_T fdL[200];
    real_T ftheta[200];                // '<S2>/MATLAB Function1'
    real_T fkappa[200];                // '<S2>/MATLAB Function1'
  } B_Planning_Module_T;

  // External inputs (root inport signals with default storage)
  typedef struct {
    real_T X_Vehicle;                  // '<Root>/X_Vehicle'
    real_T Y_Vehicle;                  // '<Root>/Y_Vehicle'
  } ExtU_Planning_Module_T;

  // External outputs (root outports fed by signals with default storage)
  typedef struct {
    real_T fx[201];                    // '<Root>/fx'
    real_T fy[201];                    // '<Root>/fy'
    real_T ftheta[200];                // '<Root>/ftheta'
    real_T fkappa[200];                // '<Root>/fkappa'
    real_T V_optimal;                  // '<Root>/V_optimal'
  } ExtY_Planning_Module_T;

  // Real-time Model Data Structure
  struct RT_MODEL_Planning_Module_T {
    const char_T *errorStatus;
  };

  // model initialize function
  void initialize();

  // model step function
  void step();

  // model terminate function
  void terminate();

  // Constructor
  Trajectory_Planning();

  // Destructor
  ~Trajectory_Planning();

  // Root-level structure-based inputs set method

  // Root inports set method
  void setExternalInputs(const ExtU_Planning_Module_T* pExtU_Planning_Module_T)
  {
    Planning_Module_U = *pExtU_Planning_Module_T;
  }

  // Root-level structure-based outputs get method

  // Root outports get method
  const Trajectory_Planning::ExtY_Planning_Module_T & getExternalOutputs() const
  {
    return Planning_Module_Y;
  }

  // Real-Time Model get method
  Trajectory_Planning::RT_MODEL_Planning_Module_T * getRTM();

  // private data and function members
 private:
  // Block signals
  B_Planning_Module_T Planning_Module_B;

  // External inputs
  ExtU_Planning_Module_T Planning_Module_U;

  // External outputs
  ExtY_Planning_Module_T Planning_Module_Y;

  // Real-Time Model
  RT_MODEL_Planning_Module_T Planning_Module_M;
};

//-
//  The generated code includes comments that allow you to trace directly
//  back to the appropriate location in the model.  The basic format
//  is <system>/block_name, where system is the system number (uniquely
//  assigned by Simulink) and block_name is the name of the block.
//
//  Use the MATLAB hilite_system command to trace the generated code back
//  to the model.  For example,
//
//  hilite_system('<S3>')    - opens system 3
//  hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
//
//  Here is the system hierarchy for this model
//
//  '<Root>' : 'Planning_Module'
//  '<S1>'   : 'Planning_Module/Subsystem1'
//  '<S2>'   : 'Planning_Module/Subsystem1/PlanningLac'
//  '<S3>'   : 'Planning_Module/Subsystem1/PlanningLon_vel'
//  '<S4>'   : 'Planning_Module/Subsystem1/city2'
//  '<S5>'   : 'Planning_Module/Subsystem1/PlanningLac/MATLAB Function1'
//  '<S6>'   : 'Planning_Module/Subsystem1/PlanningLac/Subsystem'
//  '<S7>'   : 'Planning_Module/Subsystem1/PlanningLac/Subsystem/referenceline provider1'
//  '<S8>'   : 'Planning_Module/Subsystem1/PlanningLac/Subsystem/referenceline provider1/Find_Global_Point'
//  '<S9>'   : 'Planning_Module/Subsystem1/PlanningLac/Subsystem/referenceline provider1/Find_Global_Point1'
//  '<S10>'  : 'Planning_Module/Subsystem1/PlanningLon_vel/PlanningLon'

#endif                                 // RTW_HEADER_Planning_Module_h_

//
// File trailer for generated code.
//
// [EOF]
//
