within BSM1;

model BSM1
  //Agent input
  input Real agent_action = 0;
  //Weather input
  input Real Ss = 0;
  input Real Xbh = 0;
  input Real Xs = 0;
  input Real Xi = 0;
  input Real Snh = 0;
  input Real Si = 0;
  input Real Snd = 0;
  input Real Xnd = 0;
  input Real Q = 0;
  input Real So = 0;
  input Real Xba = 0;
  input Real Xp = 0;
  input Real Sno = 0;
  input Real Salk = 0;
  Modelica.Blocks.Sources.Constant constant1(k = 1) annotation(
    Placement(visible = true, transformation(origin = {13.5231, -72.5979}, extent = {{-9.91736, -9.91736}, {9.91736, 9.91736}}, rotation = 0)));
  WasteWater.ASM1.SludgeSink WasteSludge annotation(
    Placement(visible = true, transformation(origin = {73.7179, -64.7069}, extent = {{-13.2, -13.2}, {13.2, 13.2}}, rotation = 0)));
  WasteWater.ASM1.divider2 divider annotation(
    Placement(visible = true, transformation(origin = {28.8256, 2.84698}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  WasteWater.ASM1.nitri tank5(Si(start = 30), Ss(start = 0.889), Xi(start = 1149), Xs(start = 49.3), Xbh(start = 2559), Xba(start = 150), Xp(start = 452), So(start = 0.491), Sno(start = 10.4), Snh(start = 1.73), Snd(start = 0.6879999999999999), Xnd(start = 3.53), Salk(start = 4.13), Kla = 84, V = 1333) annotation(
    Placement(visible = true, transformation(origin = {1.74327, 3.41715}, extent = {{-13.2, -13.2}, {13.2, 13.2}}, rotation = 0)));
  WasteWater.ASM1.nitri tank4(Si(start = 30), Ss(start = 0.995), Xi(start = 1149), Xs(start = 55.7), Xbh(start = 2559), Xba(start = 150), Xp(start = 451), So(start = 2.43), Sno(start = 9.300000000000001), Snh(start = 2.97), Snd(start = 0.767), Xnd(start = 3.88), Salk(start = 4.29), V = 1333, To = 0.0) annotation(
    Placement(visible = true, transformation(origin = {-27.758, 3.55872}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  WasteWater.ASM1.nitri tank3(Si(start = 30), Ss(start = 1.15), Xi(start = 1149), Xs(start = 64.90000000000001), Xbh(start = 2557), Xba(start = 149), Xp(start = 450), So(start = 1.72), Sno(start = 6.54), Snh(start = 5.55), Snd(start = 0.829), Xnd(start = 4.39), Salk(start = 4.67), V = 1333, To = 0.0) annotation(
    Placement(visible = true, transformation(origin = {-55.8719, 3.55872}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  WasteWater.ASM1.deni tank1(Si(start = 30), Ss(start = 2.81), Xi(start = 1149), Xs(start = 82.09999999999999), Xbh(start = 2552), Xba(start = 148), Xp(start = 449), So(start = 0.0043), Sno(start = 5.37), Snh(start = 7.92), Snd(start = 1.22), Xnd(start = 5.28), Salk(start = 4.93)) annotation(
    Placement(visible = true, transformation(origin = {-38.8594, 27.9724}, extent = {{-13.2, -13.2}, {13.2, 13.2}}, rotation = 0)));
  WasteWater.ASM1.blower blower2(Q_max = 34574.2654508612) annotation(
    Placement(visible = true, transformation(origin = {-26.3345, -16.3701}, extent = {{-8.196160000000001, -8.196160000000001}, {8.196160000000001, 8.196160000000001}}, rotation = 0)));
  WasteWater.ASM1.blower blower3(Q_max = 34574.2654508612) annotation(
    Placement(visible = true, transformation(origin = {3.20285, -16.726}, extent = {{-8.196160000000001, -8.196160000000001}, {8.196160000000001, 8.196160000000001}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-81.1388, -81.8505}, extent = {{-9.015779999999999, -9.015779999999999}, {9.015779999999999, 9.015779999999999}}, rotation = 0)));
  WasteWater.ASM1.WWSource WWSource annotation(
    Placement(visible = true, transformation(origin = {-33.8932, 76.8683}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant Temperature(k = 15) annotation(
    Placement(visible = true, transformation(origin = {-84.829, 67.7284}, extent = {{-9.91736, -9.91736}, {9.91736, 9.91736}}, rotation = 0)));
  WasteWater.ASM1.ADsensor_Q ADsensor_Effluent annotation(
    Placement(visible = true, transformation(origin = {84.8, 29.5691}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  WasteWater.ASM1.EffluentSink Effluent annotation(
    Placement(visible = true, transformation(origin = {80.268, -35.7643}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  WasteWater.ASM1.SecClarModTakacs Settler(S1.X.start = 6394, S1.Si.start = 30, S1.Ss.start = 0.889, S1.So.start = 0.491, S1.Sno.start = 10.4, S1.Snh.start = 1.73, S1.Snd.start = 0.6879999999999999, S1.Salk.start = 4.13, S2.X.start = 356, S2.Si.start = 30, S2.Ss.start = 0.889, S2.So.start = 0.491, S2.Sno.start = 10.4, S2.Snh.start = 1.73, S2.Snd.start = 0.6879999999999999, S2.Salk.start = 4.13, S3.X.start = 356, S3.Si.start = 30, S3.Ss.start = 0.889, S3.So.start = 0.491, S3.Sno.start = 10.4, S3.Snh.start = 1.73, S3.Snd.start = 0.6879999999999999, S3.Salk.start = 4.13, S4.X.start = 356, S4.Si.start = 30, S4.Ss.start = 0.889, S4.So.start = 0.491, S4.Sno.start = 10.4, S4.Snh.start = 1.73, S4.Snd.start = 0.6879999999999999, S4.Salk.start = 4.13, S5.X.start = 356, S5.Si.start = 30, S5.Ss.start = 0.889, S5.So.start = 0.491, S5.Sno.start = 10.4, S5.Snh.start = 1.73, S5.Snd.start = 0.6879999999999999, S5.Salk.start = 4.13, S6.X.start = 356, S6.Si.start = 30, S6.Ss.start = 0.889, S6.So.start = 0.491, S6.Sno.start = 10.4, S6.Snh.start = 1.73, S6.Snd.start = 0.6879999999999999, S6.Salk.start = 4.13, S7.X.start = 69, S7.Si.start = 30, S7.Ss.start = 0.889, S7.So.start = 0.491, S7.Sno.start = 10.4, S7.Snh.start = 1.73, S7.Snd.start = 0.6879999999999999, S7.Salk.start = 4.13, S8.X.start = 29.5, S8.Si.start = 30, S8.Ss.start = 0.889, S8.So.start = 0.491, S8.Sno.start = 10.4, S8.Snh.start = 1.73, S8.Snd.start = 0.6879999999999999, S8.Salk.start = 4.13, S9.X.start = 18.1, S9.Si.start = 30, S9.Ss.start = 0.889, S9.So.start = 0.491, S9.Sno.start = 10.4, S9.Snh.start = 1.73, S9.Snd.start = 0.6879999999999999, S9.Salk.start = 4.13, S10.X.start = 12.5, S10.Si.start = 30, S10.Ss.start = 0.889, S10.So.start = 0.491, S10.Sno.start = 10.4, S10.Snh.start = 1.73, S10.Snd.start = 0.6879999999999999, S10.Salk.start = 4.13) annotation(
    Placement(visible = true, transformation(origin = {62.6767, 26.1501}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 20, uMin = 0.1) annotation(
    Placement(visible = true, transformation(origin = {34.7402, 62.3274}, extent = {{-6.77369, -6.77369}, {6.77369, 6.77369}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {45.5516, 88.7473}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
  Modelica.Blocks.Continuous.PI PI2(k = 0.828, T = 0.02) annotation(
    Placement(visible = true, transformation(origin = {70.6833, 89.1032}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback2 annotation(
    Placement(visible = true, transformation(origin = {46.9751, 46.6192}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
  Modelica.Blocks.Continuous.PI PI1(k = 0.833, T = 0.042) annotation(
    Placement(visible = true, transformation(origin = {68.3274, 55.516}, extent = {{-8.196160000000001, -8.196160000000001}, {8.196160000000001, 8.196160000000001}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant NitrogenSetpoint(k = 1) annotation(
    Placement(visible = true, transformation(origin = {12.8114, 88.0356}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
  WasteWater.ASM1.sensor_class_B sensor_class_b1 annotation(
    Placement(visible = true, transformation(origin = {7.22892, 62.4337}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
  WasteWater.ASM1.sensor_O2 sensor_O2 annotation(
    Placement(visible = true, transformation(origin = {17.8819, 22.6498}, extent = {{-8.196160000000001, -8.196160000000001}, {8.196160000000001, 8.196160000000001}}, rotation = 0)));
  WasteWater.ASM1.sensor_class_A sensor_class_a1 annotation(
    Placement(visible = true, transformation(origin = {36.1446, 29.8795}, extent = {{-5.59809, -5.59809}, {5.59809, 5.59809}}, rotation = 0)));
  WasteWater.ASM1.KLA_dynamics kla_dynamics1 annotation(
    Placement(visible = true, transformation(origin = {24.0241, -17.3494}, extent = {{7.45106, 7.45106}, {-7.45106, -7.45106}}, rotation = -180)));
  WasteWater.ASM1.mixer3 mixer annotation(
    Placement(visible = true, transformation(origin = {-73.90300000000001, 26.1201}, extent = {{-14.52, -14.52}, {14.52, 14.52}}, rotation = 0)));
  WasteWater.ASM1.blower blower1(Q_max = 34574.2654508612) annotation(
    Placement(visible = true, transformation(origin = {-54.4484, -16.3701}, extent = {{-9.015779999999999, -9.015779999999999}, {9.015779999999999, 9.015779999999999}}, rotation = 0)));
  WasteWater.ASM1.pump ReturnPump(Q_max = 18446) annotation(
    Placement(visible = true, transformation(origin = {-58.6282, -53.1746}, extent = {{17.972, 17.972}, {-17.972, -17.972}}, rotation = 0)));
  WasteWater.ASM1.pump RecyclePump(Q_min = 0.0, Q_max = 55338) annotation(
    Placement(visible = true, transformation(origin = {-58.7461, -31.5288}, extent = {{17, 17}, {-17, -17}}, rotation = 0)));
  WasteWater.ASM1.pump pump2(Q_max = 385) annotation(
    Placement(visible = true, transformation(origin = {70.2891, -3.15663}, extent = {{18, 18}, {-18, -18}}, rotation = 0)));
  WasteWater.ASM1.ADsensor_Q ADsensor_Return annotation(
    Placement(visible = true, transformation(origin = {8.4072, -45.3887}, extent = {{12, 12}, {-12, -12}}, rotation = 0)));
  WasteWater.ASM1.ADsensor_Q ADsensor_Recycle annotation(
    Placement(visible = true, transformation(origin = {-8.71927, -29.8486}, extent = {{12, 12}, {-12, -12}}, rotation = 0)));
  WasteWater.ASM1.ADsensor_Q ADsensor_Waste annotation(
    Placement(visible = true, transformation(origin = {55.8603, -42.1291}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
  WasteWater.ASM1.ADsensor_Q ADsensor_Influent annotation(
    Placement(visible = true, transformation(origin = {-45.3941, 53.4049}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
  WasteWater.ASM1.deni tank2(Si(start = 30), Ss(start = 1.46), Xi(start = 1149), Xs(start = 76.40000000000001), Xbh(start = 2553), Xba(start = 148), Xp(start = 450), So(start = 6.31e-05), Sno(start = 3.66), Snh(start = 8.34), Snd(start = 0.882), Xnd(start = 5.03), Salk(start = 5.08)) annotation(
    Placement(visible = true, transformation(origin = {-6.83405, 28.7419}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  WasteWater.ASM1.sensor_NO sensor_NO annotation(
    Placement(visible = true, transformation(origin = {-12.4811, 43.3625}, extent = {{-8.196160000000001, -8.196160000000001}, {8.196160000000001, 8.196160000000001}}, rotation = 0)));
equation
  connect(tank2.MeasurePort, sensor_NO.In) annotation(
    Line(points = {{-2, 34}, {-3.55872, 34}, {-3.55872, 38.79}, {-8.8968, 38.79}, {-8.8968, 42.6548}, {-12.7558, 42.6548}, {-12.7558, 37.6187}}));
  connect(sensor_NO.Sno, sensor_class_b1.u) annotation(
    Line(points = {{-4.70331, 44.0972}, {-2.89157, 44.0972}, {-2.89157, 62}, {-2, 62}}));
  connect(tank2.Out, tank3.In) annotation(
    Line(points = {{4, 28}, {11.032, 28}, {11.032, 19.2171}, {-76.5125, 19.2171}, {-76.5125, 3.20285}, {-66.802, 3.20285}, {-66.802, 3.09607}}));
  connect(tank1.Out, tank2.In) annotation(
    Line(points = {{-26.7805, 27.2452}, {-18.8612, 27.2452}, {-18.8612, 26.9697}, {-18, 26.9697}, {-18, 28}}));
  connect(Temperature.y, tank2.T) annotation(
    Line(points = {{-74, 68}, {-20.9964, 68}, {-20.9964, 32.1423}, {-19, 32.1423}, {-19, 33}}));
  connect(Temperature.y, tank5.T) annotation(
    Line(points = {{-74, 68}, {-90.0356, 68}, {-90.0356, 15.6584}, {-10.3203, 15.6584}, {-10.3203, 8.63353}, {-9.89818, 8.63353}}));
  connect(ADsensor_Influent.Out, mixer.In1) annotation(
    Line(points = {{-54.3624, 52.5805}, {-85.9846, 52.5805}, {-85.9846, 30.3265}, {-82.7735, 30.3265}, {-82.7735, 30.3265}}));
  connect(WWSource.Out, ADsensor_Influent.In) annotation(
    Line(points = {{-26, 71}, {-21.4069, 71}, {-21.4069, 52.0902}, {-36.3918, 52.0902}}));
  connect(ADsensor_Waste.Out, WasteSludge.In) annotation(
    Line(points = {{54.871, -52.8911}, {54.871, -53.1716}, {55.0621, -64.8588}, {60.9901, -64.5783}, {60.9901, -64.934}}));
  connect(pump2.Out, ADsensor_Waste.In) annotation(
    Line(points = {{57, -7}, {54.9398, -7}, {54.9398, -31.3087}, {54.871, -31.3087}, {54.871, -31.0282}}));
  connect(ADsensor_Recycle.Out, RecyclePump.In) annotation(
    Line(points = {{-19.4813, -30.8379}, {-46.2651, -30.8379}, {-46.2651, -29}, {-47, -29}}));
  connect(ADsensor_Recycle.In, divider.Out1) annotation(
    Line(points = {{2.38167, -30.8379}, {33.452, -30.8379}, {33.452, -20.9964}, {45.5516, -20.9964}, {45.5516, 2.13523}, {39.1601, 2.13523}, {39.1601, 1.90748}}));
  connect(ADsensor_Return.Out, ReturnPump.In) annotation(
    Line(points = {{-2.35478, -46.378}, {-41.4458, -46.378}, {-41.4458, -51}, {-46, -51}}));
  connect(Settler.Return, ADsensor_Return.In) annotation(
    Line(points = {{58, 17}, {51.411, 17}, {51.411, -27.3276}, {38.6426, -27.3276}, {38.6426, -46.378}, {19.5081, -46.378}}));
  connect(constant1.y, pump2.u) annotation(
    Line(points = {{24.4322, -72.5979}, {34.2169, -72.5979}, {34.2169, -89.1566}, {93.494, -89.1566}, {93.494, -7}, {86, -7}}));
  connect(Settler.Waste, pump2.In) annotation(
    Line(points = {{68, 17}, {80.4819, 17}, {80.4819, -1}, {83, -1}}));
  connect(RecyclePump.Out, mixer.In2) annotation(
    Line(points = {{-71, -35}, {-87.2289, -35}, {-87.2289, 23.6145}, {-83.7208, 23.6145}, {-83.7208, 23.7432}}));
  connect(PI2.y, RecyclePump.u) annotation(
    Line(points = {{79, 89}, {97.153, 89}, {97.153, -93.9502}, {-34.1637, -93.9502}, {-34.1637, -35}, {-44, -35}}));
  connect(ReturnPump.Out, mixer.In3) annotation(
    Line(points = {{-71, -57}, {-94.4578, -57}, {-94.4578, 26.988}, {-83.5658, 26.988}, {-83.5658, 26.7402}}));
  connect(constant1.y, ReturnPump.u) annotation(
    Line(points = {{24.4322, -72.5979}, {34.2169, -72.5979}, {34.2169, -89.1566}, {-38.1983, -89.1566}, {-38.1983, -57}, {-43, -57}}));
  connect(Temperature.y, tank3.T) annotation(
    Line(points = {{-74, 68}, {-89.6797, 68}, {-89.6797, 15.6584}, {-66.9039, 15.6584}, {-66.9039, 8.30088}, {-66.455, 8.30088}}));
  connect(Temperature.y, tank4.T) annotation(
    Line(points = {{-74, 68}, {-89.6797, 68}, {-89.6797, 15.6584}, {-39.1459, 15.6584}, {-39.1459, 8.54093}, {-38.3411, 8.54093}, {-38.3411, 8.30088}}));
  connect(kla_dynamics1.y, blower3.u) annotation(
    Line(points = {{32, -17}, {9.63855, -17}, {9.63855, -18.8831}, {10.5292, -18.8831}}));
  connect(PI1.y, kla_dynamics1.u) annotation(
    Line(points = {{77.3432, 55.516}, {89.1566, 55.516}, {89.1566, -19.2771}, {36.6265, -19.2771}, {36.6265, -16.3855}, {15, -16.3855}, {15, -17}}));
  connect(sensor_class_a1.y, feedback2.u2) annotation(
    Line(points = {{42.3025, 29.8795}, {47.2289, 29.8795}, {47.2289, 40.6584}, {46.9751, 40.6584}}));
  connect(sensor_class_a1.u, sensor_O2.So) annotation(
    Line(points = {{29.4269, 29.8795}, {25.0602, 29.8795}, {25.0602, 23.3055}, {25.6992, 23.3055}}));
  connect(tank5.MeasurePort, sensor_O2.In) annotation(
    Line(points = {{6.95965, 9.65136}, {6.40569, 9.65136}, {6.40569, 14.5907}, {16.0802, 14.5907}, {16.0802, 16.906}, {17.5677, 16.906}}));
  connect(sensor_class_b1.y, limiter1.u) annotation(
    Line(points = {{15, 62}, {27, 62}}));
  connect(Temperature.y, tank1.T) annotation(
    Line(points = {{-74, 68}, {-53.7367, 68}, {-53.7367, 33.1866}, {-52.4822, 33.1866}}));
  connect(NitrogenSetpoint.y, feedback1.u1) annotation(
    Line(points = {{21, 88}, {38.0783, 88}, {38.0783, 89}, {39, 89}}));
  connect(feedback2.y, PI1.u) annotation(
    Line(points = {{53.6811, 46.6192}, {56.9395, 46.6192}, {56.9395, 55.1601}, {58.492, 55.1601}, {58.492, 55.516}}));
  connect(feedback1.y, PI2.u) annotation(
    Line(points = {{53, 89}, {62, 89}}));
  connect(limiter1.y, feedback1.u2) annotation(
    Line(points = {{42, 62}, {46.6192, 62}, {46.6192, 83.9858}, {46, 83.9858}, {46, 82}}));
  connect(Settler.Effluent, ADsensor_Effluent.In) annotation(
    Line(points = {{72, 31}, {74, 31}}));
  connect(divider.Out2, Settler.Feed) annotation(
    Line(points = {{39.0747, 4.51246}, {45.5516, 4.51246}, {45.5516, 28}, {53, 28}}));
  connect(ADsensor_Effluent.Out, Effluent.In) annotation(
    Line(points = {{96, 31}, {98.5, 31}, {98.5, -33}, {69, -33}}));
  connect(constant2.y, blower2.u) annotation(
    Line(points = {{-71.2214, -81.8505}, {-39.5018, -81.8505}, {-39.5018, -24.5552}, {-15.6584, -24.5552}, {-15.6584, -18.1495}, {-19.0082, -18.1495}, {-19.0082, -18.5272}}));
  connect(constant2.y, blower1.u) annotation(
    Line(points = {{-71.2214, -81.8505}, {-39.8577, -81.8505}, {-39.8577, -18.1495}, {-46.7453, -18.1495}, {-46.7453, -18.7429}}));
  connect(tank5.AirIn, blower3.AirOut) annotation(
    Line(points = {{1.93411, -6.0614}, {2.13523, -6.0614}, {2.13523, -11.1193}, {2.0963, -11.1193}}));
  connect(tank4.AirIn, blower2.AirOut) annotation(
    Line(points = {{-27.5845, -5.05814}, {-27.4021, -5.05814}, {-27.4021, -10.7634}, {-27.4411, -10.7634}}));
  connect(tank3.AirIn, blower1.AirOut) annotation(
    Line(points = {{-55.6984, -5.05814}, {-55.8719, -5.05814}, {-55.8719, -10.2027}, {-56.0215, -10.2027}}));
  connect(mixer.Out, tank1.In) annotation(
    Line(points = {{-62.38, 26.4818}, {-51.0843, 26.4818}, {-51.0843, 27.4967}, {-50.9246, 27.4967}}));
  connect(tank4.Out, tank5.In) annotation(
    Line(points = {{-16.6544, 3.09607}, {-11.032, 3.09607}, {-11.032, 2.90823}, {-10.2799, 2.90823}}));
  connect(tank3.Out, tank4.In) annotation(
    Line(points = {{-44.7683, 3.09607}, {-38.79, 3.09607}, {-38.79, 3.09607}, {-38.6881, 3.09607}}));
  connect(tank5.Out, divider.In) annotation(
    Line(points = {{13.9572, 2.90824}, {21.7082, 2.90824}, {21.7082, 3.23132}, {20.242, 3.23132}}));
  connect(divider.Out2, Settler.Feed) annotation(
    Line(points = {{39.0747, 4.51246}, {45.5516, 4.51246}, {45.5516, 28.0807}, {60.2777, 28.0807}}));
  connect(Q, WWSource.u[1]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Si, WWSource.u[2]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Ss, WWSource.u[3]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Xi, WWSource.u[4]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Xs, WWSource.u[5]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Xbh, WWSource.u[6]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Xba, WWSource.u[7]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Xp, WWSource.u[8]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(So, WWSource.u[9]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Sno, WWSource.u[10]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Snh, WWSource.u[11]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Snd, WWSource.u[12]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Xnd, WWSource.u[13]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(Salk, WWSource.u[14]) annotation(
    Line(points = {{-55.8391, 77.2242}, {-48, 77.2242}, {-48, 77}}));
  connect(agent_action, feedback2.u1) annotation(
    Line(points = {{32.6063, 48.6584}, {40.8646, 48.6584}, {40.8646, 47.2287}, {40.8646, 47.2287}}));
equation
  annotation(
    Diagram);
end BSM1;
