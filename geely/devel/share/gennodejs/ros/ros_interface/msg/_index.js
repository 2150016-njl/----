
"use strict";

let Time = require('./Time.js');
let Status = require('./Status.js');
let WheelInfo = require('./WheelInfo.js');
let Region = require('./Region.js');
let Pavementype = require('./Pavementype.js');
let PredictionTrajectoryPoint = require('./PredictionTrajectoryPoint.js');
let LaneInfo = require('./LaneInfo.js');
let HMIParkingStateDisplay = require('./HMIParkingStateDisplay.js');
let DiagnosticArray = require('./DiagnosticArray.js');
let SLPoint = require('./SLPoint.js');
let Image = require('./Image.js');
let TimeConsume = require('./TimeConsume.js');
let RadarState = require('./RadarState.js');
let AlarmMessage = require('./AlarmMessage.js');
let CameraParkingStopper = require('./CameraParkingStopper.js');
let ObuCmd = require('./ObuCmd.js');
let Point3D = require('./Point3D.js');
let ImageKeyPoint = require('./ImageKeyPoint.js');
let FreeSpace = require('./FreeSpace.js');
let ParkingRoi = require('./ParkingRoi.js');
let LaneLine = require('./LaneLine.js');
let PerceptionObstacle = require('./PerceptionObstacle.js');
let StopPoint = require('./StopPoint.js');
let Quaternion = require('./Quaternion.js');
let FrenetFramePoint = require('./FrenetFramePoint.js');
let TrajectoryLimitCommand = require('./TrajectoryLimitCommand.js');
let HMIObuCmdMsg = require('./HMIObuCmdMsg.js');
let VehicleParam = require('./VehicleParam.js');
let TrajectoryArray = require('./TrajectoryArray.js');
let HMIDiagnosticStatus = require('./HMIDiagnosticStatus.js');
let RoutingRequest = require('./RoutingRequest.js');
let ObstacleFeature = require('./ObstacleFeature.js');
let PointXYZIRT = require('./PointXYZIRT.js');
let SotifMonitorResult = require('./SotifMonitorResult.js');
let Odometry = require('./Odometry.js');
let RadarStateError = require('./RadarStateError.js');
let HMITrajectoryPoint = require('./HMITrajectoryPoint.js');
let ObstacleInteractiveTag = require('./ObstacleInteractiveTag.js');
let ParkingOutInfo = require('./ParkingOutInfo.js');
let HMIObstacleList = require('./HMIObstacleList.js');
let Trajectory = require('./Trajectory.js');
let PointENU = require('./PointENU.js');
let RouteFusionInfo = require('./RouteFusionInfo.js');
let WLConstraintInfo = require('./WLConstraintInfo.js');
let ObstacleIntent = require('./ObstacleIntent.js');
let RoadMarkList = require('./RoadMarkList.js');
let Stories = require('./Stories.js');
let Command = require('./Command.js');
let VehicleMotion = require('./VehicleMotion.js');
let SensorCalibrator = require('./SensorCalibrator.js');
let VehicleState = require('./VehicleState.js');
let VehicleSignal = require('./VehicleSignal.js');
let HMIParkingInfoList = require('./HMIParkingInfoList.js');
let LaneLineCubicCurve = require('./LaneLineCubicCurve.js');
let HMIObuCmd = require('./HMIObuCmd.js');
let Grid = require('./Grid.js');
let ObstaclePriority = require('./ObstaclePriority.js');
let ControlAnalysis = require('./ControlAnalysis.js');
let ParkingStateDisplay = require('./ParkingStateDisplay.js');
let SecurityDecision = require('./SecurityDecision.js');
let Matrix3D = require('./Matrix3D.js');
let Header = require('./Header.js');
let Point2dList = require('./Point2dList.js');
let Event = require('./Event.js');
let UssParkingInfoList = require('./UssParkingInfoList.js');
let RadarStateMode = require('./RadarStateMode.js');
let Path = require('./Path.js');
let DiagnosticStatus = require('./DiagnosticStatus.js');
let VehicleMotionPoint = require('./VehicleMotionPoint.js');
let ParkingStopper = require('./ParkingStopper.js');
let Ins = require('./Ins.js');
let TrafficLightDebug = require('./TrafficLightDebug.js');
let CameraParkingInfo = require('./CameraParkingInfo.js');
let KeyValues = require('./KeyValues.js');
let Chassis = require('./Chassis.js');
let PlanningCmd = require('./PlanningCmd.js');
let HolisticPathPrediction = require('./HolisticPathPrediction.js');
let PadMessage = require('./PadMessage.js');
let Uncertainty = require('./Uncertainty.js');
let PointCloud = require('./PointCloud.js');
let Events = require('./Events.js');
let Twist = require('./Twist.js');
let RoutingResponse = require('./RoutingResponse.js');
let RSSInfo = require('./RSSInfo.js');
let Polygon2D = require('./Polygon2D.js');
let UltrasonicObstacle = require('./UltrasonicObstacle.js');
let RadarObstacle = require('./RadarObstacle.js');
let PredictionObstacle = require('./PredictionObstacle.js');
let HMIParkingInfo = require('./HMIParkingInfo.js');
let ImageRect = require('./ImageRect.js');
let TrafficLight = require('./TrafficLight.js');
let TrajectoryPointInPrediction = require('./TrajectoryPointInPrediction.js');
let StopInfo = require('./StopInfo.js');
let LimitSpeedInfo = require('./LimitSpeedInfo.js');
let TrajectoryInPrediction = require('./TrajectoryInPrediction.js');
let VehicleConfig = require('./VehicleConfig.js');
let PathPoint = require('./PathPoint.js');
let HMITrajectory = require('./HMITrajectory.js');
let DrivableRegion = require('./DrivableRegion.js');
let Fault = require('./Fault.js');
let WarningCommand = require('./WarningCommand.js');
let Message = require('./Message.js');
let SpeedPoint = require('./SpeedPoint.js');
let Obstacle = require('./Obstacle.js');
let LanePoint = require('./LanePoint.js');
let Location = require('./Location.js');
let PlanningParkingDebug = require('./PlanningParkingDebug.js');
let ADCTrajectory = require('./ADCTrajectory.js');
let RadarObstacleListMsg = require('./RadarObstacleListMsg.js');
let SLBoundary = require('./SLBoundary.js');
let ControlCommand = require('./ControlCommand.js');
let RoadMark = require('./RoadMark.js');
let Gnss = require('./Gnss.js');
let Log = require('./Log.js');
let ObuCmdMsg = require('./ObuCmdMsg.js');
let Point2D = require('./Point2D.js');
let GaussianInfo = require('./GaussianInfo.js');
let Imu = require('./Imu.js');
let PlanningAnalysis = require('./PlanningAnalysis.js');
let CommCommand = require('./CommCommand.js');
let PredictionObstacles = require('./PredictionObstacles.js');
let BBox2D = require('./BBox2D.js');
let UssObstacle = require('./UssObstacle.js');
let ObstacleList = require('./ObstacleList.js');
let TrafficLightBox = require('./TrafficLightBox.js');
let HMIObstacle = require('./HMIObstacle.js');
let PointBasic = require('./PointBasic.js');
let UssParkingInfo = require('./UssParkingInfo.js');
let CameraParkingInfoList = require('./CameraParkingInfoList.js');
let LaneList = require('./LaneList.js');
let UssObstacleList = require('./UssObstacleList.js');
let PointLLH = require('./PointLLH.js');
let KeyPoint = require('./KeyPoint.js');
let Ultrasonic = require('./Ultrasonic.js');
let HMIDiagnosticArray = require('./HMIDiagnosticArray.js');
let JunctionInfo = require('./JunctionInfo.js');
let ParkingInfoList = require('./ParkingInfoList.js');
let Faults = require('./Faults.js');
let GlobalRouteMsg = require('./GlobalRouteMsg.js');
let Pose = require('./Pose.js');
let WLConstraintInfoList = require('./WLConstraintInfoList.js');
let CompressedImage = require('./CompressedImage.js');
let ParkingInfo = require('./ParkingInfo.js');
let TrafficEvents = require('./TrafficEvents.js');
let Polygon3D = require('./Polygon3D.js');
let TrafficLightMsg = require('./TrafficLightMsg.js');
let CommandRespond = require('./CommandRespond.js');
let TrajectoryPoint = require('./TrajectoryPoint.js');
let ModuleStatus = require('./ModuleStatus.js');
let HMIVehicleMsg = require('./HMIVehicleMsg.js');
let LaneletInfo = require('./LaneletInfo.js');
let EndPoints = require('./EndPoints.js');
let EStop = require('./EStop.js');

module.exports = {
  Time: Time,
  Status: Status,
  WheelInfo: WheelInfo,
  Region: Region,
  Pavementype: Pavementype,
  PredictionTrajectoryPoint: PredictionTrajectoryPoint,
  LaneInfo: LaneInfo,
  HMIParkingStateDisplay: HMIParkingStateDisplay,
  DiagnosticArray: DiagnosticArray,
  SLPoint: SLPoint,
  Image: Image,
  TimeConsume: TimeConsume,
  RadarState: RadarState,
  AlarmMessage: AlarmMessage,
  CameraParkingStopper: CameraParkingStopper,
  ObuCmd: ObuCmd,
  Point3D: Point3D,
  ImageKeyPoint: ImageKeyPoint,
  FreeSpace: FreeSpace,
  ParkingRoi: ParkingRoi,
  LaneLine: LaneLine,
  PerceptionObstacle: PerceptionObstacle,
  StopPoint: StopPoint,
  Quaternion: Quaternion,
  FrenetFramePoint: FrenetFramePoint,
  TrajectoryLimitCommand: TrajectoryLimitCommand,
  HMIObuCmdMsg: HMIObuCmdMsg,
  VehicleParam: VehicleParam,
  TrajectoryArray: TrajectoryArray,
  HMIDiagnosticStatus: HMIDiagnosticStatus,
  RoutingRequest: RoutingRequest,
  ObstacleFeature: ObstacleFeature,
  PointXYZIRT: PointXYZIRT,
  SotifMonitorResult: SotifMonitorResult,
  Odometry: Odometry,
  RadarStateError: RadarStateError,
  HMITrajectoryPoint: HMITrajectoryPoint,
  ObstacleInteractiveTag: ObstacleInteractiveTag,
  ParkingOutInfo: ParkingOutInfo,
  HMIObstacleList: HMIObstacleList,
  Trajectory: Trajectory,
  PointENU: PointENU,
  RouteFusionInfo: RouteFusionInfo,
  WLConstraintInfo: WLConstraintInfo,
  ObstacleIntent: ObstacleIntent,
  RoadMarkList: RoadMarkList,
  Stories: Stories,
  Command: Command,
  VehicleMotion: VehicleMotion,
  SensorCalibrator: SensorCalibrator,
  VehicleState: VehicleState,
  VehicleSignal: VehicleSignal,
  HMIParkingInfoList: HMIParkingInfoList,
  LaneLineCubicCurve: LaneLineCubicCurve,
  HMIObuCmd: HMIObuCmd,
  Grid: Grid,
  ObstaclePriority: ObstaclePriority,
  ControlAnalysis: ControlAnalysis,
  ParkingStateDisplay: ParkingStateDisplay,
  SecurityDecision: SecurityDecision,
  Matrix3D: Matrix3D,
  Header: Header,
  Point2dList: Point2dList,
  Event: Event,
  UssParkingInfoList: UssParkingInfoList,
  RadarStateMode: RadarStateMode,
  Path: Path,
  DiagnosticStatus: DiagnosticStatus,
  VehicleMotionPoint: VehicleMotionPoint,
  ParkingStopper: ParkingStopper,
  Ins: Ins,
  TrafficLightDebug: TrafficLightDebug,
  CameraParkingInfo: CameraParkingInfo,
  KeyValues: KeyValues,
  Chassis: Chassis,
  PlanningCmd: PlanningCmd,
  HolisticPathPrediction: HolisticPathPrediction,
  PadMessage: PadMessage,
  Uncertainty: Uncertainty,
  PointCloud: PointCloud,
  Events: Events,
  Twist: Twist,
  RoutingResponse: RoutingResponse,
  RSSInfo: RSSInfo,
  Polygon2D: Polygon2D,
  UltrasonicObstacle: UltrasonicObstacle,
  RadarObstacle: RadarObstacle,
  PredictionObstacle: PredictionObstacle,
  HMIParkingInfo: HMIParkingInfo,
  ImageRect: ImageRect,
  TrafficLight: TrafficLight,
  TrajectoryPointInPrediction: TrajectoryPointInPrediction,
  StopInfo: StopInfo,
  LimitSpeedInfo: LimitSpeedInfo,
  TrajectoryInPrediction: TrajectoryInPrediction,
  VehicleConfig: VehicleConfig,
  PathPoint: PathPoint,
  HMITrajectory: HMITrajectory,
  DrivableRegion: DrivableRegion,
  Fault: Fault,
  WarningCommand: WarningCommand,
  Message: Message,
  SpeedPoint: SpeedPoint,
  Obstacle: Obstacle,
  LanePoint: LanePoint,
  Location: Location,
  PlanningParkingDebug: PlanningParkingDebug,
  ADCTrajectory: ADCTrajectory,
  RadarObstacleListMsg: RadarObstacleListMsg,
  SLBoundary: SLBoundary,
  ControlCommand: ControlCommand,
  RoadMark: RoadMark,
  Gnss: Gnss,
  Log: Log,
  ObuCmdMsg: ObuCmdMsg,
  Point2D: Point2D,
  GaussianInfo: GaussianInfo,
  Imu: Imu,
  PlanningAnalysis: PlanningAnalysis,
  CommCommand: CommCommand,
  PredictionObstacles: PredictionObstacles,
  BBox2D: BBox2D,
  UssObstacle: UssObstacle,
  ObstacleList: ObstacleList,
  TrafficLightBox: TrafficLightBox,
  HMIObstacle: HMIObstacle,
  PointBasic: PointBasic,
  UssParkingInfo: UssParkingInfo,
  CameraParkingInfoList: CameraParkingInfoList,
  LaneList: LaneList,
  UssObstacleList: UssObstacleList,
  PointLLH: PointLLH,
  KeyPoint: KeyPoint,
  Ultrasonic: Ultrasonic,
  HMIDiagnosticArray: HMIDiagnosticArray,
  JunctionInfo: JunctionInfo,
  ParkingInfoList: ParkingInfoList,
  Faults: Faults,
  GlobalRouteMsg: GlobalRouteMsg,
  Pose: Pose,
  WLConstraintInfoList: WLConstraintInfoList,
  CompressedImage: CompressedImage,
  ParkingInfo: ParkingInfo,
  TrafficEvents: TrafficEvents,
  Polygon3D: Polygon3D,
  TrafficLightMsg: TrafficLightMsg,
  CommandRespond: CommandRespond,
  TrajectoryPoint: TrajectoryPoint,
  ModuleStatus: ModuleStatus,
  HMIVehicleMsg: HMIVehicleMsg,
  LaneletInfo: LaneletInfo,
  EndPoints: EndPoints,
  EStop: EStop,
};
