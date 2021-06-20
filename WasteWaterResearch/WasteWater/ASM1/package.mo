within WasteWater;

package ASM1 "Component models for the Activated Sludge Model No.1"
  extends Modelica.Icons.Library;

  model deni "ASM1 denitrification tank"
    //denitrification tank based on the ASM1 model
    extends WasteWater.Icons.deni;
    extends Interfaces.ASM1base;
    // tank specific parameters
    parameter Modelica.SIunits.Volume V = 1000 "Volume of denitrification tank";
    final Real ME=24*0.005*V "Mixing Energy in Kwh";
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-91.4033, -3.60331}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-91.4033, -3.60331}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput T annotation(
      Placement(visible = true, transformation(origin = {-103.203, 39.5018}, extent = {{-14.52, -14.52}, {14.52, 14.52}}, rotation = 0), iconTransformation(origin = {-103.203, 39.5018}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Out annotation(
      Placement(visible = true, transformation(origin = {91.5071, -5.50872}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {91.5071, -5.50872}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1out MeasurePort annotation(
      Placement(visible = true, transformation(origin = {39.9185, 46.8062}, extent = {{-9.01578, -9.01578}, {9.01578, 9.01578}}, rotation = 0), iconTransformation(origin = {39.9185, 46.8062}, extent = {{-9.01578, -9.01578}, {9.01578, 9.01578}}, rotation = 0)));
  equation
    aeration = 0;
    inputSi = (In.Si - Si) * In.Q / V;
    inputSs = (In.Ss - Ss) * In.Q / V;
    inputXi = (In.Xi - Xi) * In.Q / V;
    inputXs = (In.Xs - Xs) * In.Q / V;
    inputXbh = (In.Xbh - Xbh) * In.Q / V;
    inputXba = (In.Xba - Xba) * In.Q / V;
    inputXp = (In.Xp - Xp) * In.Q / V;
    inputSo = (In.So - So) * In.Q / V;
    inputSno = (In.Sno - Sno) * In.Q / V;
    inputSnh = (In.Snh - Snh) * In.Q / V;
    inputSnd = (In.Snd - Snd) * In.Q / V;
    inputXnd = (In.Xnd - Xnd) * In.Q / V;
    inputSalk = (In.Salk - Salk) * In.Q / V;
    annotation(
      Documentation(info = "This component models the ASM1 processes and reactions taking place in an unaerated (denitrification) tank
of a wastewater treatment plant.

The RealInPut signal gives the tank temperature to the model.

Parameters:

    - all stoichiometric and kinetic parameters of the activated sludge model No.1 (ASM1)
  V - volume of the tank [m3]
      "),
      Diagram(graphics = {Rectangle(rotation = 0, lineColor = {255, 255, 255}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.1423, 20.2847}, {60.4982, -48.7545}}), Line(points = {{-60.1423, 19.9289}, {-60.1423, -0.355872}, {-79.0035, -0.355872}, {-79.3594, -0.355872}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{-79.3594, -6.76157}, {-60.1423, -6.76157}, {-60.1423, -48.7545}, {60.8541, -48.7545}, {60.8541, -6.76157}, {79.7153, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{60.4982, 20.2847}, {60.1423, 0.355872}, {80.427, 0}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-40.9253, 39.5018}, {-37.7224, -1.06762}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{38.0783, 39.8577}, {41.637, -1.06762}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-42.7046, -3.20285}, {-36.2989, -9.25267}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{37.0107, -3.20285}, {43.7722, -9.60854}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.06762, 49.8221}, {1.06762, -27.4021}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-0.355872, -27.4021}, {0.711744, -27.758}}), Line(points = {{-19.5729, -27.758}, {20.2847, -27.758}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.75), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {85, 85, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-46.2633, -27.758}, {-22.4199, -28.1139}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {85, 85, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758, -27.0463}, {46.6192, -28.1139}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-79.7153, -0.355872}, {-60.1423, -6.40569}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{60.4982, -0.355872}, {79.7153, -6.04982}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-53.0249, 14.2349}, {-53.3808, 13.879}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-24.1993, 6.04982}, {-23.8434, 6.76157}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{12.0996, -11.7438}, {11.7438, -12.0996}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-36.6548, -37.3665}, {-36.2989, -38.0783}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.3025, -33.0961}, {-14.9466, -33.8078}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{13.5231, -36.6548}, {14.2349, -37.7224}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{49.8221, -38.4342}, {50.1779, -39.5018}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{25.9786, 7.11744}, {26.6904, 6.76157}}), Line(points = {{-90.7473, 39.5018}, {-41.637, 39.5018}, {-41.637, 39.5018}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}),
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {255, 255, 255}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.1423, 20.2847}, {60.4982, -48.7545}}), Line(points = {{-60.1423, 19.9289}, {-60.1423, -0.355872}, {-79.0035, -0.355872}, {-79.3594, -0.355872}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{-79.3594, -6.76157}, {-60.1423, -6.76157}, {-60.1423, -48.7545}, {60.8541, -48.7545}, {60.8541, -6.76157}, {79.7153, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{60.4982, 20.2847}, {60.1423, 0.355872}, {80.427, 0}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-40.9253, 39.5018}, {-37.7224, -1.06762}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{38.0783, 39.8577}, {41.637, -1.06762}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-42.7046, -3.20285}, {-36.2989, -9.25267}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{37.0107, -3.20285}, {43.7722, -9.60854}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.06762, 49.8221}, {1.06762, -27.4021}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-0.355872, -27.4021}, {0.711744, -27.758}}), Line(points = {{-19.5729, -27.758}, {20.2847, -27.758}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.75), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {85, 85, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-46.2633, -27.758}, {-22.4199, -28.1139}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {85, 85, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758, -27.0463}, {46.6192, -28.1139}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-79.7153, -0.355872}, {-60.1423, -6.40569}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{60.4982, -0.355872}, {79.7153, -6.04982}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-53.0249, 14.2349}, {-53.3808, 13.879}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-24.1993, 6.04982}, {-23.8434, 6.76157}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{12.0996, -11.7438}, {11.7438, -12.0996}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-36.6548, -37.3665}, {-36.2989, -38.0783}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.3025, -33.0961}, {-14.9466, -33.8078}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{13.5231, -36.6548}, {14.2349, -37.7224}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{49.8221, -38.4342}, {50.1779, -39.5018}}), Ellipse(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{25.9786, 7.11744}, {26.6904, 6.76157}}), Line(points = {{-41.2811, 39.5018}, {-91.1031, 39.5018}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.75)}));
  end deni;

  model nitri "ASM1 nitrification tank"
    // nitrification (aerated) tank, based on the ASM1 model
    extends WasteWater.Icons.nitri;
    extends Interfaces.ASM1base;
    // tank specific parameters
    parameter Modelica.SIunits.Volume V = 1000 "Volume of nitrification tank";
    // aeration system dependend parameters
    parameter Real To = 0 "start time [d]";
    parameter Real Kla = 240 "Oxygen transfer coefficient [1/d]";
    parameter Real alpha = 0.7 "Oxygen transfer factor";
    parameter Modelica.SIunits.Length de = 4.5 "depth of aeration";
    parameter Real R_air = 23.5 "specific oxygen feed factor [gO2/(m^3*m)]";
    // WWU.MassConcentration So_sat "Dissolved oxygen saturation for openloop (without blowers)";
    parameter WWU.MassConcentration So_sat = 8 "Dissolved oxygen saturation for openloop (with blowers)";
    WWU.MassConcentration TSS "Total solids in the tank";
    final Real ME = 24 * 0.005 * V "Mixing Energy in Kwh";
    Real AE;
    Real KLA;
    Interfaces.AirFlow AirIn annotation(
      Placement(visible = true, transformation(origin = {1.44578, -71.8072}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {1.44578, -71.8072}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-91.0843, -3.85542}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-91.0843, -3.85542}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Out annotation(
      Placement(visible = true, transformation(origin = {92.5301, -3.85538}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {92.5301, -3.85538}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1out MeasurePort annotation(
      Placement(visible = true, transformation(origin = {39.518, 47.2289}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {39.518, 47.2289}, extent = {{-9.01578, -9.01578}, {9.01578, 9.01578}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput T annotation(
      Placement(visible = true, transformation(origin = {-88.1928, 39.518}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-88.1928, 39.518}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  equation
    TSS = 0.75 * (Xs + Xi + Xbh + Xba + Xp) * V;
  // Temperature dependend oxygen saturation by Simba
  //KLA = 24*Kla "for openloop (without blowers)";
    KLA = alpha / So_sat * AirIn.Q_air * R_air * de / V;
    aeration = KLA * (So_sat - So) "for openloop (with blowers)";
    AE = alpha * AirIn.Q_air * R_air * de / 1800;
    AirIn.Q_air = AirIn.Q_b "Dummy equation to adapt Modelica V.3";
  //So_sat = 13.89 + (-0.3825 + (0.007311 - 6.588e-05 * T) * T) * T "for openloop (without blowers)";
  //aeration = Kla*(So_sat - So)*(if time <To then 0 else 1) "for openloop (without blowers)";
    inputSi = (In.Si - Si) * In.Q / V;
    inputSs = (In.Ss - Ss) * In.Q / V;
    inputXi = (In.Xi - Xi) * In.Q / V;
    inputXs = (In.Xs - Xs) * In.Q / V;
    inputXbh = (In.Xbh - Xbh) * In.Q / V;
    inputXba = (In.Xba - Xba) * In.Q / V;
    inputXp = (In.Xp - Xp) * In.Q / V;
    inputSo = (In.So - So) * In.Q / V;
    inputSno = (In.Sno - Sno) * In.Q / V;
    inputSnh = (In.Snh - Snh) * In.Q / V;
    inputSnd = (In.Snd - Snd) * In.Q / V;
    inputXnd = (In.Xnd - Xnd) * In.Q / V;
    inputSalk = (In.Salk - Salk) * In.Q / V;
    annotation(
      Documentation(info = "This component models the ASM1 processes and reactions taking place in an aerated (nitrification) tank
  of a wastewater treatment plant.
  
  The InPut signal gives the tank temperature to the model.
  
  Parameters:
  
        - all soichiometric and kinetic parameters of the activated sludge model No.1 (ASM1)
  V     - volume of the tank [m3]
  alpha - oxygen transfer factor
  de    - depth of the aeration system [m]
  R_air - specific oxygen feed factor [g O2/(m3*m)]
      "),
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {255, 255, 255}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.1423, 20.2847}, {60.4982, -48.7545}}), Line(points = {{-60.1423, 19.9289}, {-60.1423, -0.355872}, {-79.0035, -0.355872}, {-79.3594, -0.355872}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{-79.3594, -6.76157}, {-60.1423, -6.76157}, {-60.1423, -48.7545}, {60.8541, -48.7545}, {60.8541, -6.76157}, {79.7153, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{60.4982, 20.2847}, {60.1423, 0.355872}, {80.427, 0}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-40.9253, 39.5018}, {-37.7224, -1.06762}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{38.0783, 39.8577}, {41.637, -1.06762}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-42.7046, -3.20285}, {-36.2989, -9.25267}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{37.0107, -3.20285}, {43.7722, -9.60854}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{60.1423, -0.355872}, {80.427, -6.04982}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-79.3594, -0.711744}, {-59.4306, -6.04982}}), Line(points = {{-59.7865, -39.5018}, {60.4982, -39.8577}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{-54.0926, -39.5018}, {-56.2278, -37.0107}, {-48.0427, -37.0107}, {-50.178, -39.5018}, {-54.0926, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{-38.0784, -39.5018}, {-40.2136, -37.0107}, {-32.0285, -37.0107}, {-34.1638, -39.5018}, {-38.0784, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{20.9964, -39.8577}, {18.8612, -37.3666}, {27.0463, -37.3666}, {24.911, -39.8577}, {20.9964, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{6.04975, -39.8577}, {3.91455, -37.3666}, {12.0996, -37.3666}, {9.96435, -39.8577}, {6.04975, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{-9.25274, -39.5018}, {-11.3879, -37.0107}, {-3.20284, -37.0107}, {-5.69402, -39.5018}, {-9.25274, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{-23.8435, -39.5018}, {-25.9787, -37.0107}, {-17.7936, -37.0107}, {-19.9289, -39.5018}, {-23.8435, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{48.3985, -39.8577}, {46.2633, -37.3666}, {54.4484, -37.3666}, {52.3131, -39.8577}, {48.3985, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{35.943, -39.8577}, {33.8078, -37.3666}, {41.637, -37.3666}, {39.8576, -39.8577}, {35.943, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Line(points = {{0.355872, -39.8577}, {0.355872, -60.1423}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-52.3132, -27.4022}, {-50.178, -29.1815}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-10.3203, -5.33806}, {-8.18507, -7.11736}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-8.18498, 7.82916}, {-6.04978, 6.04986}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-38.79, -18.5054}, {-36.6548, -20.2847}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-34.8754, -23.1317}, {-32.7402, -24.911}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-40.2135, -28.8256}, {-38.0783, -30.6049}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-35.2313, -31.3167}, {-33.0961, -33.096}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-49.1103, -32.3844}, {-46.9751, -34.1637}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-52.3131, -6.76161}, {-50.1779, -8.54091}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2953, -13.1673}, {-55.1601, -14.9466}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-50.8897, -19.2171}, {-48.3986, -20.9964}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.516, -23.8434}, {-53.3808, -25.6227}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.516, -31.6726}, {-53.3808, -33.4519}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-21.7082, -23.1317}, {-19.573, -24.911}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-26.3345, -7.47333}, {-28.4698, -9.25263}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-22.7757, -1.77938}, {-20.2847, -3.55868}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-7.82916, -13.5232}, {-5.69396, -15.3025}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-5.69393, -21.3523}, {-3.55873, -23.1316}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-23.4875, -15.6584}, {-21.3523, -17.4377}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-8.89677, -25.9787}, {-7.11745, -28.1138}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-24.1993, -27.0463}, {-21.7082, -28.8256}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.98218, -29.8933}, {-2.84698, -31.6726}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-10.6761, -31.6726}, {-8.54093, -33.4519}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-25.6228, -32.3844}, {-23.4876, -34.1637}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-20.9964, -32.3844}, {-18.8612, -34.5195}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{32.3844, 12.8114}, {34.1637, 11.0321}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{51.9573, -3.20287}, {54.0925, -4.98217}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5054, -16.726}, {20.6406, -18.5053}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{5.3381, 0.711724}, {7.4733, -1.06758}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-26.6904, 4.62631}, {-24.5552, 2.84701}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{50.8897, -17.0819}, {53.0249, -18.8612}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{47.331, -28.4698}, {49.1103, -30.6049}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{50.8897, -24.1993}, {53.0249, -25.9786}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{46.2634, -33.0961}, {48.3986, -34.8754}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{51.2456, -33.0961}, {53.3808, -34.8754}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-49.822, 9.60852}, {-47.6868, 7.82922}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2953, -2.49112}, {-55.1602, -4.27042}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{4.62636, -9.96443}, {6.76156, -11.7437}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758, -19.9288}, {25.2669, -21.7081}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.3666, -13.5232}, {39.8576, -15.3025}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{33.452, -21.3523}, {35.5872, -23.1316}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.3666, -26.3345}, {39.5018, -28.1138}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{34.1637, -29.5374}, {36.2989, -31.3167}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{38.0783, -32.0285}, {40.2135, -33.8078}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{19.2171, -25.6228}, {21.3523, -27.4021}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{23.8434, -31.6726}, {25.9786, -33.4519}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{19.9289, -33.8078}, {22.064, -35.5872}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{9.60857, -18.1495}, {11.7438, -19.9288}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.91462, -21.3523}, {6.04981, -23.1316}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{10.3203, -25.6228}, {12.4555, -27.4021}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.55874, -29.1815}, {5.69394, -30.9608}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{8.18508, -33.0961}, {10.3203, -34.8754}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{20.9965, -7.8292}, {23.4875, -9.6085}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-11.3879, 16.726}, {-9.25268, 14.9467}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{1.77938, 14.5907}, {3.91458, 12.8114}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{47.6869, 8.18503}, {49.8221, 6.40573}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-27.758, 15.6583}, {-25.6228, 13.879}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{17.7936, 13.879}, {19.9288, 12.0997}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758, 1.42347}, {24.911, -0.355833}}), Line(points = {{-77.0862, 39.5181}, {-40.9639, 39.5181}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.75)}),
      Diagram(graphics = {Rectangle(rotation = 0, lineColor = {255, 255, 255}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.1423, 20.2847}, {60.4982, -48.7545}}), Line(points = {{-60.1423, 19.9289}, {-60.1423, -0.355872}, {-79.0035, -0.355872}, {-79.3594, -0.355872}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{-79.3594, -6.76157}, {-60.1423, -6.76157}, {-60.1423, -48.7545}, {60.8541, -48.7545}, {60.8541, -6.76157}, {79.7153, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Line(points = {{60.4982, 20.2847}, {60.1423, 0.355872}, {80.427, 0}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 1.25), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-40.9253, 39.5018}, {-37.7224, -1.06762}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{38.0783, 39.8577}, {41.637, -1.06762}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-42.7046, -3.20285}, {-36.2989, -9.25267}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{37.0107, -3.20285}, {43.7722, -9.60854}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{60.1423, -0.355872}, {80.427, -6.04982}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-79.3594, -0.711744}, {-59.4306, -6.04982}}), Line(points = {{-59.7865, -39.5018}, {60.4982, -39.8577}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{-54.0926, -39.5018}, {-56.2278, -37.0107}, {-48.0427, -37.0107}, {-50.178, -39.5018}, {-54.0926, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{-38.0784, -39.5018}, {-40.2136, -37.0107}, {-32.0285, -37.0107}, {-34.1638, -39.5018}, {-38.0784, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{20.9964, -39.8577}, {18.8612, -37.3666}, {27.0463, -37.3666}, {24.911, -39.8577}, {20.9964, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{6.04975, -39.8577}, {3.91455, -37.3666}, {12.0996, -37.3666}, {9.96435, -39.8577}, {6.04975, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{-9.25274, -39.5018}, {-11.3879, -37.0107}, {-3.20284, -37.0107}, {-5.69402, -39.5018}, {-9.25274, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{-23.8435, -39.5018}, {-25.9787, -37.0107}, {-17.7936, -37.0107}, {-19.9289, -39.5018}, {-23.8435, -39.5018}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{48.3985, -39.8577}, {46.2633, -37.3666}, {54.4484, -37.3666}, {52.3131, -39.8577}, {48.3985, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Polygon(points = {{35.943, -39.8577}, {33.8078, -37.3666}, {41.637, -37.3666}, {39.8576, -39.8577}, {35.943, -39.8577}}, rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25), Line(points = {{0.355872, -39.8577}, {0.355872, -60.1423}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-52.3132, -27.4022}, {-50.178, -29.1815}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-10.3203, -5.33806}, {-8.18507, -7.11736}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-8.18498, 7.82916}, {-6.04978, 6.04986}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-38.79, -18.5054}, {-36.6548, -20.2847}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-34.8754, -23.1317}, {-32.7402, -24.911}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-40.2135, -28.8256}, {-38.0783, -30.6049}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-35.2313, -31.3167}, {-33.0961, -33.096}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-49.1103, -32.3844}, {-46.9751, -34.1637}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-52.3131, -6.76161}, {-50.1779, -8.54091}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2953, -13.1673}, {-55.1601, -14.9466}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-50.8897, -19.2171}, {-48.3986, -20.9964}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.516, -23.8434}, {-53.3808, -25.6227}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.516, -31.6726}, {-53.3808, -33.4519}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-21.7082, -23.1317}, {-19.573, -24.911}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-26.3345, -7.47333}, {-28.4698, -9.25263}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-22.7757, -1.77938}, {-20.2847, -3.55868}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-7.82916, -13.5232}, {-5.69396, -15.3025}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-5.69393, -21.3523}, {-3.55873, -23.1316}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-23.4875, -15.6584}, {-21.3523, -17.4377}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-8.89677, -25.9787}, {-7.11745, -28.1138}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-24.1993, -27.0463}, {-21.7082, -28.8256}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.98218, -29.8933}, {-2.84698, -31.6726}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-10.6761, -31.6726}, {-8.54093, -33.4519}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-25.6228, -32.3844}, {-23.4876, -34.1637}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-20.9964, -32.3844}, {-18.8612, -34.5195}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{32.3844, 12.8114}, {34.1637, 11.0321}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{51.9573, -3.20287}, {54.0925, -4.98217}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5054, -16.726}, {20.6406, -18.5053}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{5.3381, 0.711724}, {7.4733, -1.06758}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-26.6904, 4.62631}, {-24.5552, 2.84701}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{50.8897, -17.0819}, {53.0249, -18.8612}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{47.331, -28.4698}, {49.1103, -30.6049}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{50.8897, -24.1993}, {53.0249, -25.9786}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{46.2634, -33.0961}, {48.3986, -34.8754}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{51.2456, -33.0961}, {53.3808, -34.8754}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-49.822, 9.60852}, {-47.6868, 7.82922}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2953, -2.49112}, {-55.1602, -4.27042}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{4.62636, -9.96443}, {6.76156, -11.7437}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758, -19.9288}, {25.2669, -21.7081}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.3666, -13.5232}, {39.8576, -15.3025}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{33.452, -21.3523}, {35.5872, -23.1316}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.3666, -26.3345}, {39.5018, -28.1138}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{34.1637, -29.5374}, {36.2989, -31.3167}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{38.0783, -32.0285}, {40.2135, -33.8078}}), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{19.2171, -25.6228}, {21.3523, -27.4021}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{23.8434, -31.6726}, {25.9786, -33.4519}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{19.9289, -33.8078}, {22.064, -35.5872}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{9.60857, -18.1495}, {11.7438, -19.9288}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.91462, -21.3523}, {6.04981, -23.1316}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{10.3203, -25.6228}, {12.4555, -27.4021}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.55874, -29.1815}, {5.69394, -30.9608}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{8.18508, -33.0961}, {10.3203, -34.8754}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{20.9965, -7.8292}, {23.4875, -9.6085}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-11.3879, 16.726}, {-9.25268, 14.9467}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{1.77938, 14.5907}, {3.91458, 12.8114}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{47.6869, 8.18503}, {49.8221, 6.40573}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-27.758, 15.6583}, {-25.6228, 13.879}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{17.7936, 13.879}, {19.9288, 12.0997}}), Rectangle(rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758, 1.42347}, {24.911, -0.355833}}), Line(points = {{-76.8683, 39.5018}, {-41.2811, 39.5018}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}));
  end nitri;

  model SecClarModTakacs "Secondary Clarifier ASM1 Model based on Takacs"
    extends WasteWater.Icons.SecClar;
    extends ASM1.SecClar.Takacs.Interfaces.ratios;
    package SCP = ASM1.SecClar.Takacs;
    package SI = Modelica.SIunits;
    package WI = WasteWater.ASM1.Interfaces;
    package WWU = WasteWater.WasteWaterUnits;
    parameter SI.Length hsc = 4.0 "height of secondary clarifier";
    parameter Integer n = 10 "number of layers of SC model";
    parameter SI.Length zm = hsc / (1.0 * n) "height of m-th secondary clarifier layer";
    parameter SI.Area Asc = 1500.0 "area of secondary clarifier";
    parameter WWU.MassConcentration Xt = 3000.0 "threshold for X";
    // total sludge concentration in clarifier feed
    WWU.MassConcentration Xf;
    Interfaces.WWFlowAsm1in Feed annotation(
      Placement(visible = true, transformation(origin = {-80.0154, 13.1227}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-80.0154, 13.1227}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Effluent annotation(
      Placement(visible = true, transformation(origin = {79.4152, 42.6601}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {79.4152, 42.6601}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Return annotation(
      Placement(visible = true, transformation(origin = {-41.5812, -79.404}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-41.5812, -79.404}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Waste annotation(
      Placement(visible = true, transformation(origin = {43.4721, -79.404}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {43.4721, -79.404}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    // layers 1 to 10
    SecClar.Takacs.bottom_layer S1(zm = zm, Asc = Asc, Xf = Xf, rXs = rXs, rXbh = rXbh, rXba = rXba, rXp = rXp, rXi = rXi, rXnd = rXnd) annotation(
      Placement(visible = true, transformation(origin = {-8.18505, -82.9181}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.feed_layer S6(zm = zm, Asc = Asc, Xf = Xf) annotation(
      Placement(visible = true, transformation(origin = {-8.54091, 13.879}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.upper_layer S7(zm = zm, Asc = Asc, Xf = Xf, Xt = Xt) annotation(
      Placement(visible = true, transformation(origin = {-8.54093, 32.7402}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.upper_layer S8(zm = zm, Asc = Asc, Xt = Xt, Xf = Xf) annotation(
      Placement(visible = true, transformation(origin = {-8.8968, 50.5338}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.upper_layer S9(zm = zm, Asc = Asc, Xf = Xf, Xt = Xt) annotation(
      Placement(visible = true, transformation(origin = {-8.8968, 69.7509}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.top_layer S10(zm = zm, Asc = Asc, Xf = Xf, Xt = Xt, rXs = rXs, rXbh = rXbh, rXba = rXba, rXp = rXp, rXi = rXi, rXnd = rXnd) annotation(
      Placement(visible = true, transformation(origin = {-8.54093, 87.5445}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.lower_layer S5(zm = zm, Asc = Asc, Xf = Xf) annotation(
      Placement(visible = true, transformation(origin = {-8.54092, -4.62632}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.lower_layer S4(zm = zm, Asc = Asc, Xf = Xf) annotation(
      Placement(visible = true, transformation(origin = {-8.54091, -23.4875}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.lower_layer S3(zm = zm, Asc = Asc, Xf = Xf) annotation(
      Placement(visible = true, transformation(origin = {-8.54092, -43.4164}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    SecClar.Takacs.lower_layer S2(zm = zm, Asc = Asc, Xf = Xf) annotation(
      Placement(visible = true, transformation(origin = {-8.54092, -64.4128}, extent = {{-8.19617, -8.19617}, {8.19617, 8.19617}}, rotation = 0)));
  equation
    connect(S4.Up, S5.Dn) annotation(
      Line(points = {{-8.45342, 2.46147}, {-8.54093, 2.46147}, {-8.54093, -30.9545}, {-8.48257, -30.9545}}));
    connect(S5.Up, S6.Dn) annotation(
      Line(points = {{-8.45342, 2.46147}, {-8.54093, 2.46147}, {-8.54093, 6.76205}, {-8.51174, 6.76205}}));
    connect(S3.Up, S4.Dn) annotation(
      Line(points = {{-8.45342, -36.3286}, {-8.54093, -36.3286}, {-8.54093, -30.9545}, {-8.48257, -30.9545}}));
    connect(S2.Up, S3.Dn) annotation(
      Line(points = {{-8.45342, -57.325}, {-8.54093, -57.325}, {-8.54093, -50.8834}, {-8.48258, -50.8834}}));
    connect(S1.Up, S2.Dn) annotation(
      Line(points = {{-8.21421, -76.3962}, {-8.8968, -76.3962}, {-8.8968, -71.8798}, {-8.48258, -71.8798}}));
    connect(S1.PQw, Waste) annotation(
      Line(points = {{-3.31402, -90.6301}, {-2.84698, -90.6301}, {-2.84698, -93.9502}, {27.4021, -93.9502}, {27.4021, -79.404}, {43.4721, -79.404}}));
    connect(S1.PQr, Return) annotation(
      Line(points = {{-13.1144, -90.6593}, {-13.1673, -90.6593}, {-13.1673, -93.9502}, {-24.5552, -93.9502}, {-24.5552, -79.404}, {-41.5812, -79.404}}));
    connect(S10.Out, Effluent) annotation(
      Line(points = {{-1.39481, 87.807}, {64.0569, 87.807}, {64.0569, 42.6601}, {79.4152, 42.6601}}));
    connect(Feed, S6.In) annotation(
      Line(points = {{-80.0154, 13.1227}, {-36.2989, 13.1227}, {-36.2989, 13.879}, {-15.8329, 13.879}, {-15.8329, 14.0832}}));
    connect(S9.Up, S10.Dn) annotation(
      Line(points = {{-8.5701, 80.5442}, {-8.8968, 80.5442}, {-8.8968, 76.9554}, {-8.86763, 76.9554}}));
    connect(S8.Up, S9.Dn) annotation(
      Line(points = {{-8.83846, 62.809}, {-8.8968, 62.809}, {-8.8968, 57.7383}, {-8.86763, 57.7383}}));
    connect(S7.Up, S8.Dn) annotation(
      Line(points = {{-8.83846, 43.5919}, {-8.54093, 43.5919}, {-8.54093, 39.9447}, {-8.51176, 39.9447}}));
    connect(S6.Up, S7.Dn) annotation(
      Line(points = {{-8.48259, 25.7983}, {-8.54093, 25.7983}, {-8.54093, 21.0543}, {-8.45341, 21.0543}}));
// total sludge concentration in clarifier feed
    Xf = 0.75 * (Feed.Xs + Feed.Xbh + Feed.Xba + Feed.Xp + Feed.Xi);
// ratios of solid components
    rXs = Feed.Xs / Xf;
    rXbh = Feed.Xbh / Xf;
    rXba = Feed.Xba / Xf;
    rXp = Feed.Xp / Xf;
    rXi = Feed.Xi / Xf;
    rXnd = Feed.Xnd / Xf;
    annotation(
      Documentation(info = "This component models an ASM1 10 - layer secondary clarifier model with 4 layers above the feed_layer (including top_layer)
and 5 layers below the feed_layer (including bottom_layer) based on Takac`s theory.

Parameters:
  hsc -  height of clarifier [m]
  n   -  number of layers
  Asc -  surface area of sec. clar. [m2]
  Xt  -  threshold value for Xtss [mg/l]

      "));
    annotation(
      Documentation(info = "Icon for a secondary clarifier"),
      Diagram,
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-56.5836, 46.6192}, {55.8719, 30.2491}}), Rectangle(rotation = 0, lineColor = {170, 170, 255}, fillColor = {170, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.8719, 29.8932}, {55.516, 13.879}}), Rectangle(rotation = 0, lineColor = {255, 255, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-56.9395, 13.879}, {54.8043, -14.9466}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2954, -15.3025}, {55.8719, -28.8256}}), Polygon(points = {{-56.5836, -28.4698}, {-56.5836, -35.9431}, {-17.4377, -50.1779}, {-4.62633, -62.6335}, {-4.62633, -75.4448}, {-29.5374, -75.4448}, {-29.5374, -81.1388}, {32.0285, -81.1388}, {32.0285, -74.7331}, {6.40569, -74.7331}, {6.40569, -62.9893}, {18.8612, -50.5338}, {56.2278, -36.2989}, {56.2278, -28.8256}, {-56.5836, -28.8256}, {-56.5836, -28.4698}}, rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Rectangle(rotation = 0, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{54.4484, 46.6192}, {67.6157, 41.637}}), Line(points = {{-56.5836, 47.331}, {-56.5836, 14.2349}, {-68.3274, 14.2349}, {-68.3274, 9.60854}, {-56.9395, 9.60854}, {-56.9395, -35.5872}, {-17.4377, -50.1779}, {-4.62633, -62.6335}, {-4.62633, -75.089}, {-29.5374, -75.089}, {-29.5374, -81.1388}, {32.0285, -81.1388}, {32.0285, -74.7331}, {6.04982, -74.7331}, {6.04982, -62.9893}, {18.1495, -50.8897}, {56.2278, -36.2989}, {56.2278, 41.2811}, {67.6157, 41.2811}, {67.6157, 45.9075}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{31.3167, -54.8043}, {63.7011, -63.3452}}, textString = "waste"), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-55.516, -55.516}, {-23.8434, -66.1922}}, textString = "return"), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936, 12.0996}, {1.77936, 8.54093}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936, 5.69395}, {1.77936, 2.13523}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936, -1.77936}, {1.77936, -5.33808}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936, -8.8968}, {1.77936, -12.4555}}), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-90.3915, 45.1957}, {-70.4626, 30.2491}}, textString = "Feed"), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{61.9217, 73.6655}, {92.8826, 61.5658}}, textString = "Effluent")}));
  end SecClarModTakacs;

  model blower "Blower for the aeration of the nitrification tanks"
    extends WasteWater.Icons.blower;
    package WWU = WasteWater.WasteWaterUnits;
    parameter WWU.VolumeFlowRate Q_max = 20000 "maximum blower capacity";
    parameter WWU.VolumeFlowRate Q_min = 0.0 "minimum blower capacity";
    Real H;
    // this is just a help variable to reduce expressions
    Interfaces.AirFlow AirOut annotation(
      Placement(visible = true, transformation(origin = {-13.5008, 68.4063}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-13.5008, 68.4063}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput u(unit = "1/min") annotation(
      Placement(visible = true, transformation(origin = {89.3873, -26.3183}, extent = {{12, 12}, {-12, -12}}, rotation = -180), iconTransformation(origin = {89.3873, -26.3183}, extent = {{9.01578, 9.01578}, {-9.01578, -9.01578}}, rotation = -180)));
  equation
    H = 0.5 * ((-Q_min) + Q_max) + u * 0.5 * ((-Q_min) + Q_max) + Q_min;
    AirOut.Q_air = -(if H > Q_max then Q_max else if H < Q_min then Q_min else H);
    annotation(
      Documentation(info = "This component models a blower of a wastewater treatment plant which generates an airflow that is needed
for the nitrification.
The blower is connected to the nitrification tank.
      "),
      Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 191, 191}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-86.8327, 0.355856}, {-15.6584, -60.1423}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{64.4128, -17.7936}, {55.1601, -35.2314}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{71.8861, -23.8435}, {64.7687, -29.1815}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{71.8862, -18.8612}, {76.5125, -33.0961}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-15.3025, 0.355872}, {55.1601, -60.1423}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 8.25, extent = {{-77.2242, -9.60854}, {-23.4875, -51.2456}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 8.25, extent = {{-7.11744, -8.8968}, {47.6868, -51.2456}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{-58.0071, -27.0462}, {-43.0605, -33.096}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{13.879, -26.3346}, {27.758, -32.7402}}), Polygon(points = {{-44.484, -25.6228}, {-28.1139, -20.6406}, {-41.637, -27.0463}, {-44.484, -25.6228}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-40.9252, -28.1139}, {-23.1317, -35.9431}, {-40.5694, -32.0285}, {-40.9252, -28.1139}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-41.637, -33.452}, {-37.0107, -48.3986}, {-46.9751, -35.2313}, {-41.637, -33.452}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-48.3986, -35.5872}, {-56.2278, -50.5338}, {-53.7367, -35.2313}, {-48.3986, -35.5872}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-53.7367, -35.2313}, {-75.4448, -39.8576}, {-58.363, -33.452}, {-51.9573, -35.9431}, {-53.7367, -35.2313}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-59.4306, -32.3843}, {-74.0214, -22.7758}, {-60.1423, -27.4021}, {-59.4306, -32.3843}, {-59.4306, -32.3843}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-58.7189, -27.4021}, {-54.4484, -8.8968}, {-53.0249, -24.1993}, {-54.4484, -24.5552}, {-58.7189, -27.4021}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-51.2456, -23.8434}, {-38.4342, -11.3879}, {-45.9075, -24.911}, {-51.2456, -23.8434}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{18.5053, -23.4875}, {31.6726, -10.6762}, {23.4875, -24.1993}, {18.5053, -23.4875}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{26.3345, -24.1993}, {41.9929, -19.573}, {28.8256, -26.3345}, {26.3345, -24.1993}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{30.2491, -27.758}, {46.6192, -35.9431}, {29.8932, -31.6726}, {30.2491, -27.758}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{29.1815, -33.0961}, {34.1637, -48.3986}, {24.1993, -35.2313}, {29.1815, -33.0961}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{18.1495, -34.8754}, {22.7758, -35.5872}, {14.5907, -50.1779}, {18.1495, -34.8754}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{16.3701, -35.2313}, {-4.98221, -39.8577}, {13.1673, -32.3843}, {16.3701, -35.2313}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{11.032, -31.3167}, {-3.20285, -21.7082}, {11.7438, -26.6904}, {11.032, -31.3167}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{12.8114, -25.9786}, {15.6584, -8.18505}, {17.7936, -24.1993}, {12.8114, -25.9786}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.3416, -20.9964}, {-17.0819, -23.8434}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975, -12.8114}, {-16.726, -14.9466}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975, -36.6548}, {-16.3701, -39.1459}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975, -46.2633}, {-16.726, -48.7544}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.9466, -12.8114}, {53.0249, -14.9466}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.5907, -20.9964}, {53.3808, -23.4875}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.2349, -36.6548}, {52.669, -39.1459}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.5231, -46.2633}, {53.0249, -48.7544}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-80.0712, -60.1423}, {-59.7865, -65.8363}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{28.8256, -60.4982}, {49.1103, -66.548}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-66.548, -1.77636e-15}, {-35.2313, 22.0641}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{4.98221, 22.7758}, {36.2989, 2.02061e-14}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-64.0569, 15.6584}, {-38.4342, 32.3843}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{6.76157, 15.6584}, {33.452, 31.6726}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-52.669, 34.5196}, {23.8434, 19.9288}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-29.8932, 34.1637}, {1.77936, 56.2278}}), Polygon(points = {{-64.4128, 3.55872}, {-39.1459, 3.55872}, {-39.1459, 22.4199}, {9.25267, 22.4199}, {9.25267, 4.27046}, {33.452, 4.27046}, {33.452, 22.7758}, {31.6726, 26.6904}, {28.1139, 30.9609}, {18.8612, 32.0285}, {-0.355872, 32.0285}, {-0.355872, 52.3132}, {-27.4021, 52.3132}, {-27.4021, 38.4342}, {-27.4021, 31.6726}, {-50.5338, 31.6726}, {-56.5836, 30.605}, {-61.9217, 27.4021}, {-64.4128, 24.1993}, {-64.4128, 24.1993}, {-64.4128, 3.55872}}, rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-55.516, 7.82918}, {-51.9573, 7.47331}, {-51.9573, 19.573}, {-48.7544, 19.573}, {-53.0249, 25.9786}, {-58.7189, 19.9288}, {-55.516, 19.9288}, {-55.516, 7.47331}, {-55.516, 7.82918}}, rotation = 0, lineColor = {255, 170, 0}, fillColor = {255, 170, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{17.4377, 7.47331}, {21.3523, 7.47331}, {21.3523, 20.2847}, {24.911, 19.9288}, {19.2171, 27.0463}, {13.879, 20.2847}, {17.4377, 20.6406}, {17.4377, 7.47331}}, rotation = 0, lineColor = {255, 170, 0}, fillColor = {255, 170, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-16.0142, 28.8256}, {-12.0996, 28.8256}, {-12.0996, 41.2811}, {-7.47331, 41.2811}, {-13.879, 48.7544}, {-20.6406, 41.637}, {-16.0142, 41.637}, {-16.0142, 28.8256}}, rotation = 0, lineColor = {255, 170, 0}, fillColor = {255, 170, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25)}),
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 191, 191}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-86.8327, 0.355856}, {-15.6584, -60.1423}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{64.4128, -17.7936}, {55.1601, -35.2314}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{71.8861, -23.8435}, {64.7687, -29.1815}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{71.8862, -18.8612}, {76.5125, -33.0961}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-15.3025, 0.355872}, {55.1601, -60.1423}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 8.25, extent = {{-77.2242, -9.60854}, {-23.4875, -51.2456}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 8.25, extent = {{-7.11744, -8.8968}, {47.6868, -51.2456}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{-58.0071, -27.0462}, {-43.0605, -33.096}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{13.879, -26.3346}, {27.758, -32.7402}}), Polygon(points = {{-44.484, -25.6228}, {-28.1139, -20.6406}, {-41.637, -27.0463}, {-44.484, -25.6228}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-40.9252, -28.1139}, {-23.1317, -35.9431}, {-40.5694, -32.0285}, {-40.9252, -28.1139}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-41.637, -33.452}, {-37.0107, -48.3986}, {-46.9751, -35.2313}, {-41.637, -33.452}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-48.3986, -35.5872}, {-56.2278, -50.5338}, {-53.7367, -35.2313}, {-48.3986, -35.5872}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-53.7367, -35.2313}, {-75.4448, -39.8576}, {-58.363, -33.452}, {-51.9573, -35.9431}, {-53.7367, -35.2313}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-59.4306, -32.3843}, {-74.0214, -22.7758}, {-60.1423, -27.4021}, {-59.4306, -32.3843}, {-59.4306, -32.3843}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-58.7189, -27.4021}, {-54.4484, -8.8968}, {-53.0249, -24.1993}, {-54.4484, -24.5552}, {-58.7189, -27.4021}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-51.2456, -23.8434}, {-38.4342, -11.3879}, {-45.9075, -24.911}, {-51.2456, -23.8434}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{18.5053, -23.4875}, {31.6726, -10.6762}, {23.4875, -24.1993}, {18.5053, -23.4875}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{26.3345, -24.1993}, {41.9929, -19.573}, {28.8256, -26.3345}, {26.3345, -24.1993}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{30.2491, -27.758}, {46.6192, -35.9431}, {29.8932, -31.6726}, {30.2491, -27.758}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{29.1815, -33.0961}, {34.1637, -48.3986}, {24.1993, -35.2313}, {29.1815, -33.0961}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{18.1495, -34.8754}, {22.7758, -35.5872}, {14.5907, -50.1779}, {18.1495, -34.8754}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{16.3701, -35.2313}, {-4.98221, -39.8577}, {13.1673, -32.3843}, {16.3701, -35.2313}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{11.032, -31.3167}, {-3.20285, -21.7082}, {11.7438, -26.6904}, {11.032, -31.3167}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{12.8114, -25.9786}, {15.6584, -8.18505}, {17.7936, -24.1993}, {12.8114, -25.9786}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.3416, -20.9964}, {-17.0819, -23.8434}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975, -12.8114}, {-16.726, -14.9466}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975, -36.6548}, {-16.3701, -39.1459}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975, -46.2633}, {-16.726, -48.7544}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.9466, -12.8114}, {53.0249, -14.9466}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.5907, -20.9964}, {53.3808, -23.4875}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.2349, -36.6548}, {52.669, -39.1459}}), Rectangle(rotation = 0, lineColor = {179, 179, 179}, fillColor = {207, 207, 207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.5231, -46.2633}, {53.0249, -48.7544}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-80.0712, -60.1423}, {-59.7865, -65.8363}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{28.8256, -60.4982}, {49.1103, -66.548}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-66.548, -1.77636e-15}, {-35.2313, 22.0641}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{4.98221, 22.7758}, {36.2989, 2.02061e-14}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-64.0569, 15.6584}, {-38.4342, 32.3843}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{6.76157, 15.6584}, {33.452, 31.6726}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-52.669, 34.5196}, {23.8434, 19.9288}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-29.8932, 34.1637}, {1.77936, 56.2278}}), Polygon(points = {{-64.4128, 3.55872}, {-39.1459, 3.55872}, {-39.1459, 22.4199}, {9.25267, 22.4199}, {9.25267, 4.27046}, {33.452, 4.27046}, {33.452, 22.7758}, {31.6726, 26.6904}, {28.1139, 30.9609}, {18.8612, 32.0285}, {-0.355872, 32.0285}, {-0.355872, 52.3132}, {-27.4021, 52.3132}, {-27.4021, 38.4342}, {-27.4021, 31.6726}, {-50.5338, 31.6726}, {-56.5836, 30.605}, {-61.9217, 27.4021}, {-64.4128, 24.1993}, {-64.4128, 24.1993}, {-64.4128, 3.55872}}, rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-55.516, 7.82918}, {-51.9573, 7.47331}, {-51.9573, 19.573}, {-48.7544, 19.573}, {-53.0249, 25.9786}, {-58.7189, 19.9288}, {-55.516, 19.9288}, {-55.516, 7.47331}, {-55.516, 7.82918}}, rotation = 0, lineColor = {255, 170, 0}, fillColor = {255, 170, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{17.4377, 7.47331}, {21.3523, 7.47331}, {21.3523, 20.2847}, {24.911, 19.9288}, {19.2171, 27.0463}, {13.879, 20.2847}, {17.4377, 20.6406}, {17.4377, 7.47331}}, rotation = 0, lineColor = {255, 170, 0}, fillColor = {255, 170, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-16.0142, 28.8256}, {-12.0996, 28.8256}, {-12.0996, 41.2811}, {-7.47331, 41.2811}, {-13.879, 48.7544}, {-20.6406, 41.637}, {-16.0142, 41.637}, {-16.0142, 28.8256}}, rotation = 0, lineColor = {255, 170, 0}, fillColor = {255, 170, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25)}));
  end blower;

  model pump "ASM1 wastewater pump"
    extends WasteWater.Icons.pump;
    package WWU = WasteWater.WasteWaterUnits;
    parameter WWU.VolumeFlowRate Q_min = 0.0 "minimum pump capacity";
    parameter WWU.VolumeFlowRate Q_max = 20000 "maximum pump capacity";
    Real H;
    // this is just a help variable to reduce expressions
    Modelica.Blocks.Interfaces.RealInput u annotation(
      Placement(visible = true, transformation(origin = {-85.3458, 21.0127}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-85.3458, 21.0127}, extent = {{-9.01578, -9.01578}, {9.01578, 9.01578}}, rotation = 0)));
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-69.3761, -14.1757}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {-69.3761, -14.1757}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Out annotation(
      Placement(visible = true, transformation(origin = {71.5337, 19.2763}, extent = {{-6.77369, -6.77369}, {6.77369, 6.77369}}, rotation = 0), iconTransformation(origin = {71.5337, 19.2763}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
  equation
    H = 0.5 * ((-Q_min) + Q_max) + u * 0.5 * ((-Q_min) + Q_max) + Q_min;
    Out.Q = -(if H > Q_max then Q_max else if H < Q_min then Q_min else H);
    Out.Q + In.Q = 0;
    Out.Si = In.Si;
    Out.Ss = In.Ss;
    Out.Xi = In.Xi;
    Out.Xs = In.Xs;
    Out.Xbh = In.Xbh;
    Out.Xba = In.Xba;
    Out.Xp = In.Xp;
    Out.So = In.So;
    Out.Sno = In.Sno;
    Out.Snh = In.Snh;
    Out.Snd = In.Snd;
    Out.Xnd = In.Xnd;
    Out.Salk = In.Salk;
    annotation(
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014, 35.2313}, {56.9395, -25.9786}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961, 25.2669}, {40.5694, -19.573}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-62.9893, -7.82918}, {-1.77936, -20.2847}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5053, 25.9787}, {64.7686, 12.4555}}), Line(points = {{-62.6335, -7.82915}, {-32.0284, -7.82915}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-62.6335, -20.6406}, {-8.8968, -20.6406}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{18.5054, 26.3345}, {65.1245, 26.3345}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{40.9253, 12.0996}, {65.1245, 12.0996}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.8718, -14.5907}, {-34.5195, -14.5907}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{41.2812, 19.573}, {60.1424, 19.573}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{-4.27046, 6.04982}, {12.0996, -0.711744}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.20285, 3.20285}, {4.27046, 2.84698}}), Polygon(points = {{1.42349, 8.54093}, {10.3202, 24.911}, {5.33807, 8.54093}, {1.42349, 8.54093}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{9.25267, 7.82918}, {24.5552, 18.8612}, {12.0996, 6.76157}, {9.25267, 7.82918}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{13.879, 4.62633}, {32.0285, 0.711744}, {14.5907, 1.06762}, {13.879, 4.62633}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{11.032, -1.77936}, {23.1317, -12.8114}, {7.11744, -2.84698}, {11.032, -1.77936}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{4.98221, -4.27046}, {-3.91459, -19.2171}, {1.42349, -3.20285}, {4.98221, -3.55872}, {4.98221, -4.27046}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-2.4911, -1.77936}, {-19.573, -10.3203}, {-5.69395, 0.711744}, {-2.4911, -1.77936}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-7.11744, 3.55872}, {-27.4021, 7.11744}, {-4.62633, 6.40569}, {-7.11744, 3.55872}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-2.4911, 7.82918}, {-13.1673, 19.573}, {1.06762, 8.18505}, {-2.4911, 7.82918}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-51.6014, 29.5374}, {-60.8541, 12.0996}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 171, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-60.8541, 23.4875}, {-67.9715, 18.1495}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-72.9537, 28.1139}, {-68.3274, 13.879}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.7224, 39.5018}, {-18.8612, 35.2313}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.0641, 39.5018}, {41.2811, 35.2313}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.7224, -25.9786}, {-18.8612, -30.605}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.0641, -25.9786}, {41.2811, -30.605}})}),
      Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014, 35.2313}, {56.9395, -25.9786}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961, 25.2669}, {40.5694, -19.573}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-62.9893, -7.82918}, {-1.77936, -20.2847}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5053, 25.9787}, {64.7686, 12.4555}}), Line(points = {{-62.6335, -7.82915}, {-32.0284, -7.82915}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-62.6335, -20.6406}, {-8.8968, -20.6406}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{18.5054, 26.3345}, {65.1245, 26.3345}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{40.9253, 12.0996}, {65.1245, 12.0996}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.8718, -14.5907}, {-34.5195, -14.5907}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{41.2812, 19.573}, {60.1424, 19.573}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{-4.27046, 6.04982}, {12.0996, -0.711744}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.20285, 3.20285}, {4.27046, 2.84698}}), Polygon(points = {{1.42349, 8.54093}, {10.3202, 24.911}, {5.33807, 8.54093}, {1.42349, 8.54093}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{9.25267, 7.82918}, {24.5552, 18.8612}, {12.0996, 6.76157}, {9.25267, 7.82918}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{13.879, 4.62633}, {32.0285, 0.711744}, {14.5907, 1.06762}, {13.879, 4.62633}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{11.032, -1.77936}, {23.1317, -12.8114}, {7.11744, -2.84698}, {11.032, -1.77936}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{4.98221, -4.27046}, {-3.91459, -19.2171}, {1.42349, -3.20285}, {4.98221, -3.55872}, {4.98221, -4.27046}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-2.4911, -1.77936}, {-19.573, -10.3203}, {-5.69395, 0.711744}, {-2.4911, -1.77936}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-7.11744, 3.55872}, {-27.4021, 7.11744}, {-4.62633, 6.40569}, {-7.11744, 3.55872}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-2.4911, 7.82918}, {-13.1673, 19.573}, {1.06762, 8.18505}, {-2.4911, 7.82918}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-51.6014, 29.5374}, {-60.8541, 12.0996}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 171, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-60.8541, 23.4875}, {-67.9715, 18.1495}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-72.9537, 28.1139}, {-68.3274, 13.879}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.7224, 39.5018}, {-18.8612, 35.2313}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.0641, 39.5018}, {41.2811, 35.2313}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.7224, -25.9786}, {-18.8612, -30.605}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.0641, -25.9786}, {41.2811, -30.605}})}),
      Documentation(info = "This component models an ASM1 wastewater pump. It generates a wastewater flow
      "));
  end pump;

  model FlowSource "Flowsource"
    extends WasteWater.Icons.FlowSource;
    Interfaces.WWFlowAsm1out Out annotation(
      extent = [88, -80; 108, -60]);
    Modelica.Blocks.Interfaces.InPort data(final n = 1) annotation(
      extent = [-100, -10; -80, 10]);
  equation
    Out.Q = -data.signal[1];
    annotation(
      Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
      Window(x = 0.45, y = 0.01, width = 0.35, height = 0.49),
      Diagram(Ellipse(extent = [-54, 54; 56, -54], style(color = 8, fillColor = 8)), Polygon(points = [-8, -54; -14, -52; -24, -48; -32, -44; -36, -40; -42, -34; -48, -26; -50, -20; 52, -20; 50, -26; 46, -32; 42, -36; 38, -40; 34, -44; 30, -46; 26, -48; 22, -50; 16, -52; 10, -54; 4, -54; 0, -54; -8, -54], style(pattern = 0, fillColor = 70)), Ellipse(extent = [-54, 54; 56, -54], style(color = 0, thickness = 2)), Rectangle(extent = [-4, -52; 4, -74], style(pattern = 0, fillColor = 70)), Rectangle(extent = [4, -74; 88, -68], style(pattern = 0, fillColor = 70)), Line(points = [-4, -54; -4, -74; 88, -74], style(color = 0, thickness = 2)), Line(points = [4, -54; 4, -68; 88, -68], style(color = 0, thickness = 2))),
      Documentation(info = "This component is used to feed an ASM1 wwtp model with flow data from measurement
when e.g. concentration is measured after the primary clarifier.

The dimension of InPort is 1.

  1 volumeflowrate Q of incoming wastewater [m3/d]"));
  end FlowSource;

  model WWSource "Wastewater source"
    extends WasteWater.Icons.WWSource;
    Interfaces.WWFlowAsm1out Out annotation(
      Placement(visible = true, transformation(origin = {69.0392, -51.6014}, extent = {{-10.9091, -10.9091}, {10.9091, 10.9091}}, rotation = 0), iconTransformation(origin = {69.0392, -51.6014}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    parameter Integer nin = 14 "Number of inputs";
    Modelica.Blocks.Interfaces.RealInput u[nin] "Connector of Real input signals" annotation(
      Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
  equation
    Out.Q = -u[1];
    Out.Si = u[2];
    Out.Ss = u[3];
    Out.Xi = u[4];
    Out.Xs = u[5];
    Out.Xbh = u[6];
    Out.Xba = u[7];
    Out.Xp = u[8];
    Out.So = u[9];
    Out.Sno = u[10];
    Out.Snh = u[11];
    Out.Snd = u[12];
    Out.Xnd = u[13];
    Out.Salk = u[14];
    annotation(
      Documentation(info = "This component provides all ASM1 data at the influent of a wastewater treatment plant.
The dimension of InPut is 14.

  1 volumeflowrate Q of incoming wastewater [m3/d]
  2 Si  [g COD/m3]
  3 Ss  [g COD/m3]
  4 Xi  [g COD/m3]
  5 Xs  [g COD/m3]
  6 Xbh [g COD/m3]
  7 Xba [g COD/m3]
  8 Xp  [g COD/m3]
  9 So  [g O2/m3]
 10 Sno [g N/m3]
 11 Snh [g N/m3]
 12 Snd [g N/m3]
 13 Xnd [g N/m3]
 14 Salk[mmol/l]
      "),
      Icon(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.0868, 52.0158}, {42.3845, -31.5497}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.7412, -32.9117}, {-4.67293, -52.6899}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.51829, -46.0047}, {57.3201, -52.6899}}), Polygon(points = {{-59.4306, -3.91459}, {41.9929, -3.91459}, {39.8577, -8.18505}, {36.2989, -13.5231}, {32.7402, -17.0819}, {27.758, -21.7082}, {23.1317, -25.2669}, {18.1495, -27.4021}, {12.8114, -29.5374}, {7.47331, -31.3167}, {1.06762, -32.7402}, {-2.84698, -33.0961}, {-14.2349, -33.452}, {-19.9288, -32.7402}, {-27.758, -30.605}, {-34.1637, -28.1139}, {-39.1459, -26.3345}, {-45.1957, -21.7082}, {-49.4662, -18.1495}, {-51.9573, -15.6584}, {-54.0925, -13.1673}, {-57.2954, -8.18505}, {-59.4306, -4.27046}, {-59.0747, -6.04982}, {-59.4306, -3.91459}}, rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-14.2349, -33.452}, {-14.2349, -52.669}, {58.0071, -52.669}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-4.62633, -33.8078}, {-4.62633, -45.5516}, {57.6512, -45.5516}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25)}),
      Diagram(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.0868, 52.0158}, {42.3845, -31.5497}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.7412, -32.9117}, {-4.67293, -52.6899}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.51829, -46.0047}, {57.3201, -52.6899}}), Polygon(points = {{-59.4306, -3.91459}, {41.9929, -3.91459}, {39.8577, -8.18505}, {36.2989, -13.5231}, {32.7402, -17.0819}, {27.758, -21.7082}, {23.1317, -25.2669}, {18.1495, -27.4021}, {12.8114, -29.5374}, {7.47331, -31.3167}, {1.06762, -32.7402}, {-2.84698, -33.0961}, {-14.2349, -33.452}, {-19.9288, -32.7402}, {-27.758, -30.605}, {-34.1637, -28.1139}, {-39.1459, -26.3345}, {-45.1957, -21.7082}, {-49.4662, -18.1495}, {-51.9573, -15.6584}, {-54.0925, -13.1673}, {-57.2954, -8.18505}, {-59.4306, -4.27046}, {-59.0747, -6.04982}, {-59.4306, -3.91459}}, rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-14.2349, -33.452}, {-14.2349, -52.669}, {58.0071, -52.669}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-4.62633, -33.8078}, {-4.62633, -45.5516}, {57.6512, -45.5516}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25)}));
  end WWSource;

  model Source "Wastewater source"
    extends WasteWater.Icons.WWSource;
    Interfaces.WWFlowAsm1out Out annotation(
      Placement(visible = true, transformation(origin = {69.0392, -51.6014}, extent = {{-10.9091, -10.9091}, {10.9091, 10.9091}}, rotation = 0), iconTransformation(origin = {69.0392, -51.6014}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  equation
    Out.Q = -18446;
    Out.Si = 30;
    Out.Ss = 69.5;
    Out.Xi = 51.2;
    Out.Xs = 202.32;
    Out.Xbh = 28.17;
    Out.Xba = 0;
    Out.Xp = 0;
    Out.So = 0;
    Out.Sno = 0;
    Out.Snh = 31.56;
    Out.Snd = 6.95;
    Out.Xnd = 10.59;
    Out.Salk = 7;
    annotation(
      Documentation(info = "This component provides all ASM1 data at the influent of a wastewater treatment plant.
The dimension of InPut is 14.

  1 volumeflowrate Q of incoming wastewater [m3/d]
  2 Si  [g COD/m3]
  3 Ss  [g COD/m3]
  4 Xi  [g COD/m3]
  5 Xs  [g COD/m3]
  6 Xbh [g COD/m3]
  7 Xba [g COD/m3]
  8 Xp  [g COD/m3]
  9 So  [g O2/m3]
 10 Sno [g N/m3]
 11 Snh [g N/m3]
 12 Snd [g N/m3]
 13 Xnd [g N/m3]
 14 Salk[mmol/l]
      "),
      Icon(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.0868, 52.0158}, {42.3845, -31.5497}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.7412, -32.9117}, {-4.67293, -52.6899}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.51829, -46.0047}, {57.3201, -52.6899}}), Polygon(points = {{-59.4306, -3.91459}, {41.9929, -3.91459}, {39.8577, -8.18505}, {36.2989, -13.5231}, {32.7402, -17.0819}, {27.758, -21.7082}, {23.1317, -25.2669}, {18.1495, -27.4021}, {12.8114, -29.5374}, {7.47331, -31.3167}, {1.06762, -32.7402}, {-2.84698, -33.0961}, {-14.2349, -33.452}, {-19.9288, -32.7402}, {-27.758, -30.605}, {-34.1637, -28.1139}, {-39.1459, -26.3345}, {-45.1957, -21.7082}, {-49.4662, -18.1495}, {-51.9573, -15.6584}, {-54.0925, -13.1673}, {-57.2954, -8.18505}, {-59.4306, -4.27046}, {-59.0747, -6.04982}, {-59.4306, -3.91459}}, rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-14.2349, -33.452}, {-14.2349, -52.669}, {58.0071, -52.669}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-4.62633, -33.8078}, {-4.62633, -45.5516}, {57.6512, -45.5516}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25)}),
      Diagram(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.0868, 52.0158}, {42.3845, -31.5497}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.7412, -32.9117}, {-4.67293, -52.6899}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.51829, -46.0047}, {57.3201, -52.6899}}), Polygon(points = {{-59.4306, -3.91459}, {41.9929, -3.91459}, {39.8577, -8.18505}, {36.2989, -13.5231}, {32.7402, -17.0819}, {27.758, -21.7082}, {23.1317, -25.2669}, {18.1495, -27.4021}, {12.8114, -29.5374}, {7.47331, -31.3167}, {1.06762, -32.7402}, {-2.84698, -33.0961}, {-14.2349, -33.452}, {-19.9288, -32.7402}, {-27.758, -30.605}, {-34.1637, -28.1139}, {-39.1459, -26.3345}, {-45.1957, -21.7082}, {-49.4662, -18.1495}, {-51.9573, -15.6584}, {-54.0925, -13.1673}, {-57.2954, -8.18505}, {-59.4306, -4.27046}, {-59.0747, -6.04982}, {-59.4306, -3.91459}}, rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-14.2349, -33.452}, {-14.2349, -52.669}, {58.0071, -52.669}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-4.62633, -33.8078}, {-4.62633, -45.5516}, {57.6512, -45.5516}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25)}));
  end Source;

  model EffluentSink "Receiving water (river)"
    // only for graphical termination in diagram layer, no equation needed
    extends WasteWater.Icons.EffluentSink;
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-92.0482, 23.1325}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0), iconTransformation(origin = {-92.0482, 23.1325}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    annotation(
      Documentation(info = "Icon for a water sink e.g. receiving water "),
      Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0, 255, 0}, fillColor = {0, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-83.2594, -23.2775}, {89.0613, -82.4418}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {198, 198, 198}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-83.8554, 10.6024}, {-10.1205, 35.1807}}), Line(points = {{-49.6386, 35.6627}, {-49.6386, 45.3012}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 4.75), Polygon(points = {{-48.6747, 45.3012}, {-40, 51.5663}, {-40, 41.4458}, {-40, 40.9639}, {-48.6747, 45.3012}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-51.0843, 45.7831}, {-59.2771, 52.0482}, {-59.2771, 40.9639}, {-49.1566, 46.2651}, {-51.0843, 45.7831}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-69.8795, -23.1325}, {-54.4578, -67.4699}, {59.759, -67.4699}, {77.1084, -23.1325}, {77.5904, -23.1325}, {-69.8795, -23.1325}}, rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-9.63855, 23.1325}, {-4.81928, 22.1687}, {2.40964, 16.3855}, {10.6024, 4.81928}, {14.4578, -6.26506}, {17.3494, -13.9759}, {18.7952, -22.6506}, {18.3133, -22.1687}}, rotation = 0, color = {0, 170, 255}, pattern = LinePattern.Solid, thickness = 3.25), Line(points = {{-9.63855, 18.7952}, {-5.3012, 18.3133}, {-0.481928, 14.4578}, {3.85542, 6.74699}, {7.71084, -1.44578}, {9.15663, -10.1205}, {10.6024, -14.9398}, {10.6024, -22.6506}, {10.6024, -22.6506}}, rotation = 0, color = {0, 170, 255}, pattern = LinePattern.Solid, thickness = 3.25), Line(points = {{-9.63855, 14.4578}, {-6.74699, 13.494}, {-3.37349, 11.0843}, {-0.481928, 3.85542}, {2.89157, -3.85542}, {3.85542, -11.5663}, {3.85542, -18.7952}, {3.85542, -23.1325}, {3.85542, -22.1687}}, rotation = 0, color = {0, 170, 255}, pattern = LinePattern.Solid, thickness = 3.75)}),
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 255, 0}, fillColor = {0, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-83.2594, -23.2775}, {89.0613, -82.4418}}), Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {198, 198, 198}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-83.8554, 10.6024}, {-10.1205, 35.1807}}), Line(points = {{-49.6386, 35.6627}, {-49.6386, 45.3012}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 4.75), Polygon(points = {{-48.6747, 45.3012}, {-40, 51.5663}, {-40, 41.4458}, {-40, 40.9639}, {-48.6747, 45.3012}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-51.0843, 45.7831}, {-59.2771, 52.0482}, {-59.2771, 40.9639}, {-49.1566, 46.2651}, {-51.0843, 45.7831}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-69.8795, -23.1325}, {-54.4578, -67.4699}, {59.759, -67.4699}, {77.1084, -23.1325}, {77.5904, -23.1325}, {-69.8795, -23.1325}}, rotation = 0, lineColor = {0, 170, 255}, fillColor = {0, 170, 255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-9.63855, 23.1325}, {-4.81928, 22.1687}, {2.40964, 16.3855}, {10.6024, 4.81928}, {14.4578, -6.26506}, {17.3494, -13.9759}, {18.7952, -22.6506}, {18.3133, -22.1687}}, rotation = 0, color = {0, 170, 255}, pattern = LinePattern.Solid, thickness = 3.25), Line(points = {{-9.63855, 18.7952}, {-5.3012, 18.3133}, {-0.481928, 14.4578}, {3.85542, 6.74699}, {7.71084, -1.44578}, {9.15663, -10.1205}, {10.6024, -14.9398}, {10.6024, -22.6506}, {10.6024, -22.6506}}, rotation = 0, color = {0, 170, 255}, pattern = LinePattern.Solid, thickness = 3.25), Line(points = {{-9.63855, 14.4578}, {-6.74699, 13.494}, {-3.37349, 11.0843}, {-0.481928, 3.85542}, {2.89157, -3.85542}, {3.85542, -11.5663}, {3.85542, -18.7952}, {3.85542, -23.1325}, {3.85542, -22.1687}}, rotation = 0, color = {0, 170, 255}, pattern = LinePattern.Solid, thickness = 3.75)}));
  end EffluentSink;

  model SludgeSink "Wastesludge sink"
    // only for graphical termination in diagram layer, no equation needed
    extends WasteWater.Icons.SludgeSink;
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-96.4224, -1.72018}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {-96.4224, -1.72018}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
    annotation(
      Documentation(info = "This component terminates the waste sludge stream of an ASM1 wastewater treatment plant model. Storage or further sludge treatment is not jet considered."),
      Icon(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.7523, 52.7275}, {68.719, -30.838}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-36.9026, -45.6488}, {70.8432, -76.5333}}), Line(points = {{-37.0107, -18.1494}, {-36.6548, -76.5125}, {70.4626, -76.5125}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Rectangle(rotation = 0, lineColor = {188, 193, 194}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.0107, 11.7438}, {70.8185, -46.2633}}), Rectangle(rotation = 0, lineColor = {149, 152, 153}, fillColor = {171, 175, 176}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-37.0107, 11.3879}, {-88.968, -17.4377}}), Rectangle(rotation = 0, lineColor = {188, 193, 194}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-100, -76.8683}, {99.6441, -98.9324}}), Line(points = {{71.1744, 7.82918}, {71.1744, -76.5125}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-36.6548, 11.3879}, {-88.968, 11.3879}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-89.3238, -17.4377}, {-36.6548, -17.4377}, {-36.6548, -46.9751}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{-71.1744, 29.1815}, {-71.1744, 16.0142}, {-64.4128, 22.7758}, {-71.1744, 29.1815}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-64.0569, 22.7758}, {-57.6512, 29.1815}, {-57.6512, 16.3701}, {-64.0569, 22.7758}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-64.0569, 23.1317}, {-64.0569, 11.7438}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 2.75), Polygon(points = {{35.9431, -40.5694}, {52.3132, -40.5694}, {44.484, -54.0925}, {35.9431, -40.5694}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {88, 88, 88}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{51.6014, -40.5694}, {71.1744, -40.5694}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-38.0783, -8.18505}, {-24.911, -16.3701}, {-16.726, -37.7224}, {-16.3701, -48.0427}, {-16.726, -47.6868}}, rotation = 0, color = {175, 85, 0}, pattern = LinePattern.Solid, thickness = 5.25), Line(points = {{-37.7224, -1.06762}, {-26.3345, -5.33808}, {-17.0819, -14.9466}, {-8.54093, -31.3167}, {-7.47331, -45.5516}}, rotation = 0, color = {175, 85, 0}, pattern = LinePattern.Solid, thickness = 5.25)}),
      Diagram(graphics = {Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.7523, 52.7275}, {68.719, -30.838}}), Rectangle(rotation = 0, lineColor = {170, 85, 0}, fillColor = {170, 85, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-36.9026, -45.6488}, {70.8432, -76.5333}}), Line(points = {{-37.0107, -18.1494}, {-36.6548, -76.5125}, {70.4626, -76.5125}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Rectangle(rotation = 0, lineColor = {188, 193, 194}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.0107, 11.7438}, {70.8185, -46.2633}}), Rectangle(rotation = 0, lineColor = {149, 152, 153}, fillColor = {171, 175, 176}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-37.0107, 11.3879}, {-88.968, -17.4377}}), Rectangle(rotation = 0, lineColor = {188, 193, 194}, fillColor = {188, 193, 194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-100, -76.8683}, {99.6441, -98.9324}}), Line(points = {{71.1744, 7.82918}, {71.1744, -76.5125}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-36.6548, 11.3879}, {-88.968, 11.3879}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-89.3238, -17.4377}, {-36.6548, -17.4377}, {-36.6548, -46.9751}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{-71.1744, 29.5374}, {-71.1744, 16.3701}, {-64.4128, 22.7758}, {-71.1744, 29.5374}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Polygon(points = {{-64.0569, 22.7758}, {-57.6512, 29.1815}, {-57.6512, 16.3701}, {-64.0569, 22.7758}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{-64.0569, 23.1317}, {-64.0569, 11.7438}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 2.75), Polygon(points = {{35.9431, -40.5694}, {52.3132, -40.5694}, {44.484, -54.0925}, {35.9431, -40.5694}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {88, 88, 88}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Line(points = {{51.6014, -40.5694}, {71.1744, -40.5694}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-38.0783, -8.18505}, {-24.911, -16.3701}, {-16.726, -37.7224}, {-16.3701, -48.0427}, {-16.726, -47.6868}}, rotation = 0, color = {175, 85, 0}, pattern = LinePattern.Solid, thickness = 5.25), Line(points = {{-37.7224, -1.06762}, {-26.3345, -5.33808}, {-17.0819, -14.9466}, {-8.54093, -31.3167}, {-7.47331, -45.5516}}, rotation = 0, color = {175, 85, 0}, pattern = LinePattern.Solid, thickness = 5.25)}));
  end SludgeSink;

  model ControlledDivider2 "Controlled flow divider"
    // divides one flow of wastewater into 2 Flows controlled by the
    // input signal u; u=1 means Out1.Q=In.Q and u=0 means Out2.Q=In.Q
    extends WasteWater.Icons.ControlledDivider2;
    Interfaces.WWFlowAsm1in In annotation(
      extent = [-111, -7; -91, 13]);
    Interfaces.WWFlowAsm1out Out1 annotation(
      extent = [90, 15; 110, 35]);
    Interfaces.WWFlowAsm1out Out2 annotation(
      extent = [90, -25; 110, -5]);
    Modelica.Blocks.Interfaces.InPort u(final n = 1) annotation(
      extent = [-10, -70; 10, -50],
      rotation = 90);
  equation
    Out1.Q = -In.Q * u.signal[1];
    Out2.Q = -In.Q * (1 - u.signal[1]);
    Out1.Si = In.Si;
    Out1.Ss = In.Ss;
    Out1.Xi = In.Xi;
    Out1.Xs = In.Xs;
    Out1.Xbh = In.Xbh;
    Out1.Xba = In.Xba;
    Out1.Xp = In.Xp;
    Out1.So = In.So;
    Out1.Sno = In.Sno;
    Out1.Snh = In.Snh;
    Out1.Snd = In.Snd;
    Out1.Xnd = In.Xnd;
    Out1.Salk = In.Salk;
    Out2.Si = In.Si;
    Out2.Ss = In.Ss;
    Out2.Xi = In.Xi;
    Out2.Xs = In.Xs;
    Out2.Xbh = In.Xbh;
    Out2.Xba = In.Xba;
    Out2.Xp = In.Xp;
    Out2.So = In.So;
    Out2.Sno = In.Sno;
    Out2.Snh = In.Snh;
    Out2.Snd = In.Snd;
    Out2.Xnd = In.Xnd;
    Out2.Salk = In.Salk;
    annotation(
      Coordsys(extent = [-100, -100; 100, 100], grid = [1, 1], component = [20, 20]),
      Window(x = 0.45, y = 0.01, width = 0.35, height = 0.49),
      Documentation(info = "This component divides one wastewater flow (ASM1) into two flows which are controlled by the signal u (0...1).
Is u.signal=1, the flow goes to output 1 (Out1) and is u.signal=0, the flow goes to output 2 (Out2). 
The concentrations of the outport-flows are equal to the concentration at inport."));
  end ControlledDivider2;

  model divider2 "Flowdivider"
    // divides one flow of wastewater into 2 Flows; one amout needs to be specified
    extends WasteWater.Icons.divider2;
    //parameter Real Qa=55338 "[m^3/d]";
    Interfaces.WWFlowAsm1out Out1 annotation(
      Placement(visible = true, transformation(origin = {86.1211, -7.82918}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {86.1211, -7.82918}, extent = {{-6.77369, -6.77369}, {6.77369, 6.77369}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Out2 annotation(
      Placement(visible = true, transformation(origin = {85.4093, 13.879}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {85.4093, 13.879}, extent = {{-6.77369, -6.77369}, {6.77369, 6.77369}}, rotation = 0)));
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-71.5302, 3.20285}, extent = {{-9.01578, -9.01578}, {9.01578, 9.01578}}, rotation = 0), iconTransformation(origin = {-71.5302, 3.20285}, extent = {{-9.91736, -9.91736}, {9.91736, 9.91736}}, rotation = 0)));
  equation
    In.Q + Out1.Q + Out2.Q = 0;
    Out1.Si = In.Si;
    Out1.Ss = In.Ss;
    Out1.Xi = In.Xi;
    Out1.Xs = In.Xs;
    Out1.Xbh = In.Xbh;
    Out1.Xba = In.Xba;
    Out1.Xp = In.Xp;
    Out1.So = In.So;
    Out1.Sno = In.Sno;
    Out1.Snh = In.Snh;
    Out1.Snd = In.Snd;
    Out1.Xnd = In.Xnd;
    Out1.Salk = In.Salk;
    Out2.Si = In.Si;
    Out2.Ss = In.Ss;
    Out2.Xi = In.Xi;
    Out2.Xs = In.Xs;
    Out2.Xbh = In.Xbh;
    Out2.Xba = In.Xba;
    Out2.Xp = In.Xp;
    Out2.So = In.So;
    Out2.Sno = In.Sno;
    Out2.Snh = In.Snh;
    Out2.Snd = In.Snd;
    Out2.Xnd = In.Xnd;
    Out2.Salk = In.Salk;
    annotation(
      Documentation(info = "This component divides one ASM1 wastewater flow into two ASM1 wastewater flows."),
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014, 35.2313}, {56.9395, -25.9786}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961, 25.2669}, {40.5694, -19.573}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5054, -2.13523}, {79.3594, -12.4555}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{30.605, 19.9288}, {78.6477, 9.25267}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.9217, 13.1673}, {-31.6726, -6.76157}}), Line(points = {{78.6477, 19.9288}, {31.6726, 19.9288}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{41.637, 8.8968}, {78.6477, 8.8968}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{41.9929, -1.77933}, {79.0036, -1.77933}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{34.5196, -12.8114}, {79.7153, -12.4556}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.2099, 13.1672}, {-31.6726, 13.1672}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.2099, -6.76157}, {-32.7402, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.8719, 3.91459}, {-38.0783, 3.91459}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{45.5516, -7.11742}, {66.9039, -7.11742}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.5053, -13.1673}, {-4.14051e-06, -13.1673}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-19.2171, 3.20285}, {1.42349, 3.20285}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.8612, 19.9288}, {0.355872, 19.9288}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.40569, 12.0996}, {26.6904, 12.0996}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.76157, -6.04982}, {26.3345, -6.04982}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{44.1282, 15.3025}, {62.9893, 15.3025}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25)}),
      Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014, 35.2313}, {56.9395, -25.9786}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961, 25.2669}, {40.5694, -19.573}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5054, -2.13523}, {79.3594, -12.4555}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{30.605, 19.9288}, {78.6477, 9.25267}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.9217, 13.1673}, {-31.6726, -6.76157}}), Line(points = {{78.6477, 19.9288}, {31.6726, 19.9288}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{41.637, 8.8968}, {78.6477, 8.8968}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{41.9929, -1.77933}, {79.0036, -1.77933}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{34.5196, -12.8114}, {79.7153, -12.4556}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.2099, 13.1672}, {-31.6726, 13.1672}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.2099, -6.76157}, {-32.7402, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.8719, 3.91459}, {-38.0783, 3.91459}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{45.5516, -7.11742}, {66.9039, -7.11742}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.5053, -13.1673}, {-4.14051e-06, -13.1673}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-19.2171, 3.20285}, {1.42349, 3.20285}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.8612, 19.9288}, {0.355872, 19.9288}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.40569, 12.0996}, {26.6904, 12.0996}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.76157, -6.04982}, {26.3345, -6.04982}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{44.1282, 15.3025}, {62.9893, 15.3025}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25)}));
  end divider2;

  model mixer2 "Mixer of two ASM1 characterised flows"
    extends WasteWater.Icons.mixer2;
    Interfaces.WWFlowAsm1in In1 annotation(
      extent = [-110, 15; -90, 35]);
    Interfaces.WWFlowAsm1in In2 annotation(
      extent = [-110, -25; -90, -5]);
    Interfaces.WWFlowAsm1out Out annotation(
      extent = [90, -5; 110, 15]);
  equation
    In1.Q + In2.Q + Out.Q = 0;
    Out.Si = (In1.Si * In1.Q + In2.Si * In2.Q) / (In1.Q + In2.Q);
    Out.Ss = (In1.Ss * In1.Q + In2.Ss * In2.Q) / (In1.Q + In2.Q);
    Out.Xi = (In1.Xi * In1.Q + In2.Xi * In2.Q) / (In1.Q + In2.Q);
    Out.Xs = (In1.Xs * In1.Q + In2.Xs * In2.Q) / (In1.Q + In2.Q);
    Out.Xbh = (In1.Xbh * In1.Q + In2.Xbh * In2.Q) / (In1.Q + In2.Q);
    Out.Xba = (In1.Xba * In1.Q + In2.Xba * In2.Q) / (In1.Q + In2.Q);
    Out.Xp = (In1.Xp * In1.Q + In2.Xp * In2.Q) / (In1.Q + In2.Q);
    Out.So = (In1.So * In1.Q + In2.So * In2.Q) / (In1.Q + In2.Q);
    Out.Sno = (In1.Sno * In1.Q + In2.Sno * In2.Q) / (In1.Q + In2.Q);
    Out.Snh = (In1.Snh * In1.Q + In2.Snh * In2.Q) / (In1.Q + In2.Q);
    Out.Snd = (In1.Snd * In1.Q + In2.Snd * In2.Q) / (In1.Q + In2.Q);
    Out.Xnd = (In1.Xnd * In1.Q + In2.Xnd * In2.Q) / (In1.Q + In2.Q);
    Out.Salk = (In1.Salk * In1.Q + In2.Salk * In2.Q) / (In1.Q + In2.Q);
    annotation(
      Coordsys(extent = [-100, -100; 100, 100], grid = [1, 1], component = [20, 20]),
      Window(x = 0.03, y = 0.19, width = 0.35, height = 0.49),
      Diagram,
      Documentation(info = "This component mixes two flows of wastewater (ASM1) of different concentration and different amount."));
  end mixer2;

  model mixer3 "Mixer of 3 ASM1 characterised flows"
    extends WasteWater.Icons.mixer3;
    Interfaces.WWFlowAsm1in In2 annotation(
      Placement(visible = true, transformation(origin = {-67.6156, -16.3701}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {-67.6156, -16.3701}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0)));
    Interfaces.WWFlowAsm1in In3 annotation(
      Placement(visible = true, transformation(origin = {-66.548, 4.27046}, extent = {{-6.77369, -6.77369}, {6.77369, 6.77369}}, rotation = 0), iconTransformation(origin = {-66.548, 4.27046}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0)));
    Interfaces.WWFlowAsm1out Out annotation(
      Placement(visible = true, transformation(origin = {79.3595, 2.4911}, extent = {{-10.9091, -10.9091}, {10.9091, 10.9091}}, rotation = 0), iconTransformation(origin = {79.3595, 2.4911}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Interfaces.WWFlowAsm1in In1 annotation(
      Placement(visible = true, transformation(origin = {-66.9039, 22.7758}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {-66.9039, 22.7758}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0)));
  equation
    In1.Q + In2.Q + In3.Q + Out.Q = 0;
    Out.Si = (In1.Si * In1.Q + In2.Si * In2.Q + In3.Si * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Ss = (In1.Ss * In1.Q + In2.Ss * In2.Q + In3.Ss * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Xi = (In1.Xi * In1.Q + In2.Xi * In2.Q + In3.Xi * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Xs = (In1.Xs * In1.Q + In2.Xs * In2.Q + In3.Xs * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Xbh = (In1.Xbh * In1.Q + In2.Xbh * In2.Q + In3.Xbh * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Xba = (In1.Xba * In1.Q + In2.Xba * In2.Q + In3.Xba * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Xp = (In1.Xp * In1.Q + In2.Xp * In2.Q + In3.Xp * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.So = (In1.So * In1.Q + In2.So * In2.Q + In3.So * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Sno = (In1.Sno * In1.Q + In2.Sno * In2.Q + In3.Sno * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Snh = (In1.Snh * In1.Q + In2.Snh * In2.Q + In3.Snh * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Snd = (In1.Snd * In1.Q + In2.Snd * In2.Q + In3.Snd * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Xnd = (In1.Xnd * In1.Q + In2.Xnd * In2.Q + In3.Xnd * In3.Q) / (In1.Q + In2.Q + In3.Q);
    Out.Salk = (In1.Salk * In1.Q + In2.Salk * In2.Q + In3.Salk * In3.Q) / (In1.Q + In2.Q + In3.Q);
    annotation(
      Documentation(info = "This component mixes 3 flows of wastewater (ASM1) of different concentration and different amount."),
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014, 35.2313}, {56.9395, -25.9786}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961, 25.2669}, {40.5694, -19.573}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.21, 27.758}, {0.355872, 17.7936}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.5658, -11.3879}, {-0.711748, -21.7082}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.4982, 9.25267}, {-12.4555, -1.42349}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.7224, 13.1673}, {67.9715, -6.76157}}), Line(points = {{0.711744, 27.758}, {-61.5658, 27.758}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.21, 17.7936}, {-27.758, 17.7936}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-60.1423, 9.60854}, {-33.8078, 9.60854}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-60.4982, -1.42349}, {-34.8754, -1.42349}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.5658, -11.032}, {-28.8256, -11.032}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.9217, -22.0641}, {-0.711744, -22.0641}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{38.4342, 13.5231}, {67.9715, 13.5231}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{39.8577, -6.76157}, {67.9715, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-54.8043, 23.1317}, {-32.0284, 23.1316}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.8719, 3.91459}, {-35.5872, 3.91459}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.1601, -17.4377}, {-33.8078, -17.4377}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.5053, -13.1673}, {-0.711748, -13.1673}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-19.2171, 3.20285}, {1.42349, 3.20285}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.8612, 19.9288}, {0.355872, 19.9288}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.40569, 12.0996}, {26.6904, 12.0996}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.76157, -6.04982}, {26.3345, -6.04982}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{38.4342, 3.91459}, {57.2954, 3.91459}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25)}),
      Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {170, 170, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014, 35.2313}, {56.9395, -25.9786}}), Ellipse(rotation = 0, lineColor = {0, 0, 0}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961, 25.2669}, {40.5694, -19.573}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.21, 27.758}, {0.355872, 17.7936}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.5658, -11.3879}, {-0.711748, -21.7082}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.4982, 9.25267}, {-12.4555, -1.42349}}), Rectangle(rotation = 0, lineColor = {191, 156, 127}, fillColor = {191, 156, 127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.7224, 13.1673}, {67.9715, -6.76157}}), Line(points = {{0.711744, 27.758}, {-61.5658, 27.758}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.21, 17.7936}, {-27.758, 17.7936}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-60.1423, 9.60854}, {-33.8078, 9.60854}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-60.4982, -1.42349}, {-34.8754, -1.42349}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.5658, -11.032}, {-28.8256, -11.032}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-61.9217, -22.0641}, {-0.711744, -22.0641}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{38.4342, 13.5231}, {67.9715, 13.5231}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{39.8577, -6.76157}, {67.9715, -6.76157}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-54.8043, 23.1317}, {-32.3843, 23.1316}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.8719, 3.91459}, {-36.2989, 3.91459}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-55.1601, -17.4377}, {-33.8078, -17.4377}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.5053, -13.1673}, {-0.355876, -13.1673}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-19.2171, 3.20285}, {1.42349, 3.20285}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-18.8612, 19.9288}, {0.355872, 19.9288}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.40569, 12.0996}, {26.6904, 12.0996}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{6.76157, -6.04982}, {26.3345, -6.04982}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{38.4342, 3.91459}, {57.2954, 3.91459}}, rotation = 0, color = {255, 170, 0}, pattern = LinePattern.Solid, thickness = 3.75)}));
  end mixer3;

  model sensor_COD "Ideal sensor to measure chemical oxygen demand (COD)"
    extends WasteWater.Icons.sensor_COD;
    Interfaces.WWFlowAsm1in In annotation(
      extent = [-10, -110; 10, -90]);
    Modelica.Blocks.Interfaces.OutPort COD(final n = 1) annotation(
      extent = [88, -10; 108, 10]);
  equation
    In.Q = 0.0;
    COD.signal[1] = In.Si + In.Ss + In.Xi + In.Xs + In.Xbh + In.Xba + In.Xp;
    annotation(
      Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
      Window(x = 0.45, y = 0.01, width = 0.35, height = 0.49),
      Documentation(info = "This component measures the chemical oxygen demand (COD) concentration [g/m3]
of ASM1 wastewater and provides the result as output signal (to be
further processed with blocks of the Modelica.Blocks library).
      "));
  end sensor_COD;

  model sensor_NH "Ideal sensor to measure ammonium nitrogen"
  
    extends WasteWater.Icons.sensor_NH;
    Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10,
              -110},{10,-90}})));
    Modelica.Blocks.Interfaces.RealOutput Snh annotation (Placement(
          transformation(extent={{88,-10},{108,10}})));
  equation
  
    In.Q = 0;
    Snh = In.Snh;
  
    annotation (
      Documentation(info="This component measures the ammonium nitrogen concentration [g/m3]
  of ASM1 wastewater and provides the result as output signal (to be
  further processed with blocks of the Modelica.Blocks library).
  "));
  end sensor_NH;

  model sensor_NO "Ideal sensor to measure nitrate nitrogen"
    extends WasteWater.Icons.sensor_NO;
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-3.352, -70.0793}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {-3.352, -70.0793}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput Sno annotation(
      Placement(visible = true, transformation(origin = {94.8952, 8.96451}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {94.8952, 8.96451}, extent = {{-9.01578, -9.01578}, {9.01578, 9.01578}}, rotation = 0)));
  equation
    In.Q = 0;
    Sno = In.Sno;
    annotation(
      Documentation(info = "This component measures the nitrate nitrogen concentration [g/m3]
of ASM1 wastewater and provides the result as output signal (to be
further processed with blocks of the Modelica.Blocks library).
      "),
      Icon,
      Diagram(graphics = {Ellipse(rotation = 0, lineColor = {255, 255, 255}, fillColor = {209, 209, 157}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-41.2811, 51.6014}, {34.1637, -27.758}}), Line(points = {{-43.3332, 8.54093}, {82.9181, 8.54093}, {82.9181, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-3.91459, 53.7367}, {-3.91459, 40.2135}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-34.5196, 37.7224}, {-26.6904, 30.2491}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{28.4698, 37.0107}, {-4.27046, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{20.9964, 30.605}, {18.5053, 20.6406}, {10.3203, 28.1139}, {20.9964, 30.605}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-10.3203, -0.355872}, {1.77936, -11.7438}}, textString = "NO", fontSize = 10), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694, 86.121}, {38.0783, 67.9715}}, textString = "%name", fontSize = 14), Line(points = {{-4.27046, -29.5374}, {-4.27046, -63.7011}, {-4.27046, -63.7011}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}));
  end sensor_NO;

  model sensor_O2 "Ideal sensor to measure dissolved oxygen concentration"
    extends WasteWater.Icons.sensor_O2;
    Modelica.Blocks.Interfaces.RealOutput So annotation(
      Placement(visible = true, transformation(origin = {95.3771, 8.00065}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {95.3771, 8.00065}, extent = {{-9.01578, -9.01578}, {9.01578, 9.01578}}, rotation = 0)));
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-3.83393, -70.0793}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {-3.83393, -70.0793}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
  equation
    In.Q = 0;
    So = In.So;
    annotation(
      Documentation(info = "This component measures the dissolved oxygen concentration [g/m3]
of ASM1 wastewater and provides the result as output signal (to be
further processed with blocks of the Modelica.Blocks library).
      "),
      Icon,
      Diagram(graphics = {Ellipse(rotation = 0, lineColor = {255, 255, 255}, fillColor = {209, 209, 157}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-41.2811, 51.6014}, {34.1637, -27.758}}), Line(points = {{-43.3332, 8.54093}, {82.9181, 8.54093}, {82.9181, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-3.91459, 53.7367}, {-3.91459, 40.2135}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-34.5196, 37.7224}, {-26.6904, 30.2491}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{28.4698, 37.0107}, {-4.27046, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{20.9964, 30.605}, {18.5053, 20.6406}, {10.3203, 28.1139}, {20.9964, 30.605}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-10.3203, -0.355872}, {1.77936, -11.7438}}, textString = "O2", fontSize = 10), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694, 86.121}, {38.0783, 67.9715}}, textString = "%name", fontSize = 14), Line(points = {{-4.27046, -29.5374}, {-4.27046, -63.7011}, {-4.27046, -63.7011}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}));
  end sensor_O2;

  model sensor_Q "Ideal sensor to measure the flow rate of an ASM1 wastewater stream"
    extends WasteWater.Icons.sensor_Q;
    Interfaces.WWFlowAsm1in In annotation(
      extent = [-110, -10; -90, 10]);
    Interfaces.WWFlowAsm1out Out annotation(
      extent = [90, -10; 110, 10]);
    Modelica.Blocks.Interfaces.OutPort Q(final n = 1) annotation(
      extent = [-10, -108; 10, -88],
      rotation = -90);
  equation
    In.Q + Out.Q = 0;
    Q.signal[1] = In.Q;
// eventually abs(In.Q) to be shure to have pos. signal
    In.Si = Out.Si;
    In.Ss = Out.Ss;
    In.Xi = Out.Xi;
    In.Xs = Out.Xs;
    In.Xbh = Out.Xbh;
    In.Xba = Out.Xba;
    In.Xp = Out.Xp;
    In.So = Out.So;
    In.Sno = Out.Sno;
    In.Snh = Out.Snh;
    In.Snd = Out.Snd;
    In.Xnd = Out.Xnd;
    In.Salk = Out.Salk;
    annotation(
      Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
      Window(x = 0.31, y = 0.2, width = 0.35, height = 0.49),
      Documentation(info = "This component measures the flow of an ASM1 wastewater stream and provides
the result as output signal (to be further processed with blocks of
the Modelica.Blocks library).
      "));
  end sensor_Q;

  model sensor_TKN "Ideal TKN and total nitrogen sensor"
    extends WasteWater.Icons.sensor_TKN;
    extends Interfaces.stoichiometry;
    Interfaces.WWFlowAsm1in In annotation(
      extent = [-10, -110; 10, -90]);
    Modelica.Blocks.Interfaces.OutPort TKN(final n = 2) annotation(
      extent = [88, -10; 108, 10]);
  equation
    In.Q = 0.0;
    TKN.signal[1] = In.Snh + In.Snd + In.Xnd + i_xb * (In.Xbh + In.Xba) + i_xp * (In.Xp + In.Xi);
    TKN.signal[2] = TKN.signal[1] + In.Sno;
    annotation(
      Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
      Window(x = 0.45, y = 0.01, width = 0.35, height = 0.49),
      Documentation(info = "This component measures the Total Kjeldal Nitrogen (TKN) and the
total nitrogen (N_total) concentration [g/m3] of ASM1 wastewater
and provides the result as output signal (to be further processed
with blocks of the Modelica.Blocks library).

signal[1] - TKN
signal[2] - N_total
      "));
  end sensor_TKN;

  model sensor_TSS "Ideal sensor to measure total suspended solids concentration (ASM1)"
    extends WasteWater.Icons.sensor_TSS;
    Interfaces.WWFlowAsm1in In annotation(
      extent = [-10, -110; 10, -90]);
    Modelica.Blocks.Interfaces.OutPort TSS(final n = 1) annotation(
      extent = [88, -10; 108, 10]);
  equation
    In.Q = 0;
    TSS.signal[1] = 0.75 * (In.Xs + In.Xbh + In.Xba + In.Xp + In.Xi);
// the factor 0.75 needs to be adapted due to plant dependency
// 0.75 is from the COST Benchmark configuration
    annotation(
      Coordsys(extent = [-100, -100; 100, 100], grid = [2, 2], component = [20, 20]),
      Window(x = 0.03, y = 0.01, width = 0.35, height = 0.49),
      Documentation(info = "This component measures the total suspended solids concentration [g/m3]
of ASM1 wastewater and provides the result as output signal (to be
further processed with blocks of the Modelica.Blocks library).
      "));
  end sensor_TSS;

  model ADsensor_Q "Advanced sensor to measure the flow rate and averages of solids of an ASM1 wastewater stream"
    extends WasteWater.Icons.sensor_Q;
    parameter Real avg_start = 0;//119;
    parameter Real avg_period = 1/24/60;//1 / 96;
    parameter Real gamma = 1;
    constant Real f_p = 0.08;
    constant Real i_xb = 0.08;
    constant Real i_xp = 0.06;
    constant Real ialpha_NH = 4;
    constant Real ialpha_TN = 2.7;
    constant Real ibeta_NH = 12;
    constant Real ibeta_TN = 8.1;
    constant Real beta0_NH = 2.7;
    constant Real beta0_TN = 1.4;
    constant Real limit_NH = 4;
    constant Real limit_TN = 12;
    Real Qm;
    Real Sim;
    Real Ssm;
    Real Xim;
    Real Xsm;
    Real Xbhm;
    Real Xbam;
    Real Xpm;
    Real Som;
    Real Snom;
    Real Snhm;
    Real Sndm;
    Real Xndm;
    Real Salkm;
    Real SPm;
    Real TSSs;
    Real CODs;
    Real BOD5s_e;
    Real BOD5s_0;
    Real TKNs;
    Real EQ;
    Real IQ;
    Real Ntot;
    Real TSS;
    Real COD;
    Real TKN;
    Real BOD5;
    Real Ntotvm;
    Real TSSvm;
    Real CODvm;
    Real BOD5vm;
    Real Snhvm;
    Real SP0m;
    Real EF_NH;
    Real EF_TN;
    Real EFs_NH;
    Real EFs_TN;
    Real EFm_NH;
    Real EFm_TN;
    discrete Real Qs;
    discrete Real Sis;
    discrete Real Sss;
    discrete Real Xis;
    discrete Real Xss;
    discrete Real Xbhs;
    discrete Real Xbas;
    discrete Real Xps;
    discrete Real Sos;
    discrete Real Snos;
    discrete Real Snhs;
    discrete Real Snds;
    discrete Real Xnds;
    discrete Real Salks;
    discrete Real n;
    discrete Real Ntotv;
    discrete Real CODv;
    discrete Real Snhv;
    discrete Real TSSv;
    discrete Real BOD5v;
    discrete Real TSS0s;
    Interfaces.WWFlowAsm1out Out annotation(
      Placement(visible = true, transformation(origin = {89.6832, 8.24427}, extent = {{-6.77369, -6.77369}, {6.77369, 6.77369}}, rotation = 0), iconTransformation(origin = {89.6832, 8.24427}, extent = {{-8.19616, -8.19616}, {8.19616, 8.19616}}, rotation = 0)));
    Interfaces.WWFlowAsm1in In annotation(
      Placement(visible = true, transformation(origin = {-92.5078, 8.24423}, extent = {{-6.1579, -6.1579}, {6.1579, 6.1579}}, rotation = 0), iconTransformation(origin = {-92.5078, 8.24423}, extent = {{-7.45106, -7.45106}, {7.45106, 7.45106}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput Q annotation(
      Placement(visible = true, transformation(origin = {-4.56288, -76.1403}, extent = {{-12, 12}, {12, -12}}, rotation = -90), iconTransformation(origin = {-4.56288, -76.1403}, extent = {{-9.01578, 9.01578}, {9.01578, -9.01578}}, rotation = -90)));
  equation
    when sample(avg_start, avg_period) then
      Qs = gamma * pre(Qs) + abs(In.Q);
      Sis = gamma * pre(Sis) + In.Si * abs(In.Q);
      Sss = gamma * pre(Sss) + In.Ss * abs(In.Q);
      Xis = gamma * pre(Xis) + In.Xi * abs(In.Q);
      Xss = gamma * pre(Xss) + In.Xs * abs(In.Q);
      Xbhs = gamma * pre(Xbhs) + In.Xbh * abs(In.Q);
      Xbas = gamma * pre(Xbas) + In.Xba * abs(In.Q);
      Xps = gamma * pre(Xps) + In.Xp * abs(In.Q);
      Sos = gamma * pre(Sos) + In.So * abs(In.Q);
      Snos = gamma * pre(Snos) + In.Sno * abs(In.Q);
      Snhs = gamma * pre(Snhs) + In.Snh * abs(In.Q);
      Snds = gamma * pre(Snds) + In.Snd * abs(In.Q);
      Xnds = gamma * pre(Xnds) + In.Xnd * abs(In.Q);
      Salks = gamma * pre(Salks) + In.Salk * abs(In.Q);
      n = gamma * pre(n) + 1;
      EF_NH = abs(In.Q) * (if In.Snh > limit_NH then ialpha_NH * limit_NH + beta0_NH + ibeta_NH * (In.Snh - limit_NH) else ialpha_NH * In.Snh) / 1000;
      EF_TN = abs(In.Q) * (if Ntot > limit_TN then ialpha_TN * limit_TN + beta0_TN + ibeta_TN * (Ntot - limit_TN) else ialpha_TN * Ntot) / 1000;
      EFs_NH = gamma * pre(EFs_NH) + EF_NH;
      EFs_TN = gamma * pre(EFs_TN) + EF_TN;
      Ntot = In.Sno + TKN;
      TSS = 0.75 * (In.Xs + In.Xi + In.Xbh + In.Xba + In.Xp);
      COD = In.Ss + In.Si + In.Xs + In.Xbh + In.Xba + In.Xp + In.Xi;
      TKN = In.Snh + In.Snd + In.Xnd + i_xb * (In.Xbh + In.Xba) + i_xp * (In.Xp + In.Xi);
      BOD5 = 0.25 * (In.Ss + In.Xs + (1 - f_p) * (In.Xbh + In.Xba));
      TSS0s = gamma * pre(TSS0s) + TSS * abs(In.Q);
      Ntotv = if Ntot < 18 then gamma * pre(Ntotv) else gamma * pre(Ntotv) + 1;
      CODv = if COD < 100 then gamma * pre(CODv) else gamma * pre(CODv) + 1;
      Snhv = if In.Snh < 4 then gamma * pre(Snhv) else gamma * pre(Snhv) + 1;
      TSSv = if TSS < 30 then gamma * pre(TSSv) else gamma * pre(TSSv) + 1;
      BOD5v = if BOD5 < 10 then gamma * pre(BOD5v) else gamma * pre(BOD5v) + 1;
      Qm = Qs / n;
      Sim = Sis / Qs;
      Ssm = Sss / Qs;
      Xim = Xis / Qs;
      Xsm = Xss / Qs;
      Xbhm = Xbhs / Qs;
      Xbam = Xbas / Qs;
      Xpm = Xps / Qs;
      Som = Sos / Qs;
      Snom = Snos / Qs;
      Snhm = Snhs / Qs;
      Sndm = Snds / Qs;
      Xndm = Xnds / Qs;
      Salkm = Salks / Qs;
      TSSs = 0.75 * (Xss + Xis + Xbhs + Xbas + Xps);
      CODs = Sss + Sis + Xss + Xbhs + Xbas + Xps + Xis;
      TKNs = Snhs + Snds + Xnds + i_xb * (Xbhs + Xbas) + i_xp * (Xps + Xis);
      BOD5s_e = 0.25 * (Sss + Xss + (1 - f_p) * (Xbhs + Xbas));
      BOD5s_0 = 0.65 * (Sss + Xss + (1 - f_p) * (Xbhs + Xbas));
      EQ = (2 * TSSs + CODs + 30 * TKNs + 10 * Snos + 2 * BOD5s_e) / (1000 * n);
      IQ = (2 * TSSs + CODs + 30 * TKNs + 10 * Snos + 2 * BOD5s_0) / (1000 * n);
      SPm = TSSs / n;
      SP0m = TSS0s / n;
      Ntotvm = Ntotv / n;
      CODvm = CODv / n;
      Snhvm = Snhv / n;
      TSSvm = TSSv / n;
      BOD5vm = BOD5v / n;
      EFm_NH = EFs_NH / n;
      EFm_TN = EFs_TN / n;
    end when;
    In.Q + Out.Q = 0;
    Q = In.Q;
    In.Si = Out.Si;
    In.Ss = Out.Ss;
    In.Xi = Out.Xi;
    In.Xs = Out.Xs;
    In.Xbh = Out.Xbh;
    In.Xba = Out.Xba;
    In.Xp = Out.Xp;
    In.So = Out.So;
    In.Sno = Out.Sno;
    In.Snh = Out.Snh;
    In.Snd = Out.Snd;
    In.Xnd = Out.Xnd;
    In.Salk = Out.Salk;
    annotation(
      Documentation(info = "
  
  Main Author:
   Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain
  
  The package is free software; it can be redistributed and /or modified under the terms of the Modelica license, see the license conditions and the accompanying
  disclaimer in the documentation of package Modelica in file /Modelica/package.mo/.
  
      "));
    annotation(
      Documentation(info = "Advanced sensor to measure the flow rate and averages of solids of an ASM1 wastewater stream"),
      Icon(graphics = {Ellipse(rotation = 0, lineColor = {255, 255, 255}, fillColor = {209, 209, 157}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-41.2811, 51.6014}, {34.1637, -27.758}}), Line(points = {{-87.1886, 8.54093}, {82.9181, 8.54093}, {82.9181, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-3.91459, 53.7367}, {-3.91459, 40.2135}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-34.5196, 37.7224}, {-26.6904, 30.2491}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{28.4698, 37.0107}, {-4.27046, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{20.9964, 30.605}, {18.5053, 20.6406}, {10.3203, 28.1139}, {20.9964, 30.605}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-10.3203, -0.355872}, {1.77936, -11.7438}}, textString = "Q", fontSize = 10), Line(points = {{-4.27046, -29.5374}, {-4.27046, -63.7011}, {-4.27046, -67.2598}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}),
      Diagram(graphics = {Ellipse(rotation = 0, lineColor = {255, 255, 255}, fillColor = {209, 209, 157}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-41.2811, 51.6014}, {34.1637, -27.758}}), Line(points = {{-87.1886, 8.54093}, {82.9181, 8.54093}, {82.9181, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-3.91459, 53.7367}, {-3.91459, 40.2135}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{-34.5196, 37.7224}, {-26.6904, 30.2491}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Line(points = {{28.4698, 37.0107}, {-4.27046, 8.54093}}, rotation = 0, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.25), Polygon(points = {{20.9964, 30.605}, {18.5053, 20.6406}, {10.3203, 28.1139}, {20.9964, 30.605}}, rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25), Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-10.3203, -0.355872}, {1.77936, -11.7438}}, textString = "Q", fontSize = 10), Line(points = {{-4.27046, -29.5374}, {-4.27046, -63.7011}, {-4.27046, -63.7011}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 0.25)}));
  end ADsensor_Q;

  model WWSignal "Wastewater source"
    extends Modelica.Blocks.Interfaces.SIMO(nout = 14);
    parameter String dir = "INF/";
    Modelica.Blocks.Sources.SawTooth Tiempo1(period = 14, amplitude = 14) annotation(
      Placement(visible = true, transformation(origin = {-74.7331, 73.6655}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Q(tableName = "Inf_Q", fileName = dir + "Q.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.355872, 84.6975}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Si(tableName = "Inf_Si", fileName = dir + "Si.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.355872, 62.6335}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Ss(tableName = "Inf_Ss", fileName = dir + "Ss.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.711744, 40.5694}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Xi(tableName = "Inf_Xi", fileName = dir + "Xi.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.711744, 18.1495}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Xs(tableName = "Inf_Xs", fileName = dir + "Xs.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.355872, -3.91459}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Xbh(tableName = "Inf_Xbh", fileName = dir + "Xbh.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.355872, -26.3345}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Snh(tableName = "Inf_Sh", fileName = dir + "Sh.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.355872, -48.3986}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Snd(tableName = "Inf_Snd", fileName = dir + "Snd.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.711744, -70.4626}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Tables.CombiTable2D Xnd(tableName = "Inf_Xnd", fileName = dir + "Xnd.txt", tableOnFile = true) annotation(
      Placement(visible = true, transformation(origin = {0.711744, -91.4591}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant Xba(k = 0) annotation(
      Placement(visible = true, transformation(origin = {56.5836, 76.1566}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant Xp(k = 0) annotation(
      Placement(visible = true, transformation(origin = {56.5836, 37.3665}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant So(k = 0) annotation(
      Placement(visible = true, transformation(origin = {56.5836, 1.06762}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant Sno(k = 0) annotation(
      Placement(visible = true, transformation(origin = {57.6512, -35.2313}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant Salk(k = 7) annotation(
      Placement(visible = true, transformation(origin = {60.1424, -73.3096}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  equation
    connect(Tiempo1.y, Q.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-55.1601, 73.6655}, {-55.1601, 93.2384}, {-14.0441, 93.2384}, {-14.0441, 91.8975}}));
    connect(Tiempo1.y, Si.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-55.516, 73.6655}, {-55.516, 69.395}, {-14.0441, 69.395}, {-14.0441, 69.8335}}));
    connect(Tiempo1.y, Ss.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-55.516, 73.6655}, {-55.516, 47.331}, {-13.6883, 47.331}, {-13.6883, 47.7694}}));
    connect(Tiempo1.y, Xi.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-54.8043, 73.6655}, {-54.8043, 25.9786}, {-13.6883, 25.9786}, {-13.6883, 25.3495}}));
    connect(Tiempo1.y, Xs.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-55.516, 73.6655}, {-55.516, 3.20285}, {-14.0441, 3.20285}, {-14.0441, 3.28541}}));
    connect(Tiempo1.y, Xbh.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-55.1601, 73.6655}, {-55.1601, -19.9288}, {-14.0441, -19.9288}, {-14.0441, -19.1345}}));
    connect(Tiempo1.y, Snh.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-55.1601, 73.6655}, {-55.1601, -41.9929}, {-14.0441, -41.9929}, {-14.0441, -41.1986}}));
    connect(Tiempo1.y, Snd.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-55.1601, 73.6655}, {-55.1601, -63.7011}, {-13.6883, -63.7011}, {-13.6883, -63.2626}}));
    connect(Tiempo1.y, Xnd.u1) annotation(
      Line(points = {{-61.5331, 73.6655}, {-54.8043, 73.6655}, {-54.8043, -83.9858}, {-13.6883, -83.9858}, {-13.6883, -84.2591}}));
    connect(u, Xnd.u2) annotation(
      Line(points = {{-120, 0}, {-40.9253, 0}, {-40.9253, -98.5765}, {-13.6883, -98.5765}, {-13.6883, -98.6591}}));
    connect(u, Snd.u2) annotation(
      Line(points = {{-120, 0}, {-40.5694, 0}, {-40.5694, -77.5801}, {-13.6883, -77.5801}, {-13.6883, -77.6626}}));
    connect(u, Snh.u2) annotation(
      Line(points = {{-120, 0}, {-40.9253, 0}, {-40.9253, -55.8719}, {-14.0441, -55.8719}, {-14.0441, -55.5986}}));
    connect(u, Xbh.u2) annotation(
      Line(points = {{-120, 0}, {-40.9253, 0}, {-40.9253, -33.0961}, {-14.0441, -33.0961}, {-14.0441, -33.5345}}));
    connect(u, Xs.u2) annotation(
      Line(points = {{-120, 0}, {-40.5694, 0}, {-40.5694, -11.7438}, {-14.0441, -11.7438}, {-14.0441, -11.1146}}));
    connect(u, Xi.u2) annotation(
      Line(points = {{-120, 0}, {-40.5694, 0}, {-40.5694, 10.3203}, {-13.6883, 10.3203}, {-13.6883, 10.9495}}));
    connect(u, Ss.u2) annotation(
      Line(points = {{-120, 0}, {-40.9253, 0}, {-40.9253, 33.452}, {-13.6883, 33.452}, {-13.6883, 33.3694}}));
    connect(u, Si.u2) annotation(
      Line(points = {{-120, 0}, {-40.5694, 0}, {-40.5694, 55.1601}, {-14.0441, 55.1601}, {-14.0441, 55.4335}}));
    connect(u, Q.u2) annotation(
      Line(points = {{-120, 0}, {-40.9253, 0}, {-40.9253, 77.5801}, {-14.0441, 77.5801}, {-14.0441, 77.4975}}));
    y[1] = Q.y;
    y[2] = Si.y;
    y[3] = Ss.y;
    y[4] = Xi.y;
    y[5] = Xs.y;
    y[6] = Xbh.y;
    y[7] = Xba.y;
    y[8] = Xp.y;
    y[9] = So.y;
    y[10] = Sno.y;
    y[11] = Snh.y;
    y[12] = Snd.y;
    y[13] = Xnd.y;
    y[14] = Salk.y;
    annotation(
      Documentation(info = "

Main Author:
   by Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain
  

The package is free software; it can be redistributed and /or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file /Modelica/package.mo/.

      "));
    annotation(
      Documentation(info = "This component provides all ASM1 data at the influent of a wastewater treatment plant.
The dimension of InPort is 14.

  1 volumeflowrate Q of incoming wastewater [m3/d]
  2 Si  [g COD/m3]
  3 Ss  [g COD/m3]
  4 Xi  [g COD/m3]
  5 Xs  [g COD/m3]
  6 Xbh [g COD/m3]
  7 Xba [g COD/m3]
  8 Xp  [g COD/m3]
  9 So  [g O2/m3]
 10 Sno [g N/m3]
 11 Snh [g N/m3]
 12 Snd [g N/m3]
 13 Xnd [g N/m3]
 14 Salk[mmol/l]
      "),
      Diagram,
      Icon(graphics = {Rectangle(rotation = 0, lineColor = {0, 0, 0}, fillColor = {255, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-26.3345, 82.9181}, {29.8932, 70.1068}}), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-13.1673, 81.4947}, {14.5907, 72.5979}}, textString = "STEADY"), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-77.9359, 86.4769}, {-33.0961, 66.9039}}, textString = "-1"), Ellipse(rotation = 0, lineColor = {255, 255, 0}, fillColor = {255, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-9.96441, 49.1103}, {17.7936, 22.4199}}), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-5.33808, 41.9929}, {14.9466, 29.8932}}, textString = "DRY"), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-64.7687, 45.1957}, {-37.3665, 24.1993}}, textString = "0"), Ellipse(rotation = 0, lineColor = {255, 255, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-16.726, -1.77936}, {23.4875, -15.3025}}), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-9.60854, -3.20285}, {17.0819, -13.879}}, textString = "RAIN"), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-72.9537, 2.4911}, {-29.1815, -18.8612}}, textString = "1"), Line(points = {{-16.0142, -17.0819}, {-21.7082, -24.1993}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Line(points = {{-15.3025, -23.4875}, {-23.8434, -33.8078}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Line(points = {{-4.98221, -21.3523}, {-11.7438, -29.5374}, {-12.0996, -29.5374}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Line(points = {{-11.7438, -33.452}, {-17.0819, -39.8577}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Line(points = {{5.69395, -18.8612}, {-0.355872, -25.9786}, {-0.355872, -25.9786}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Line(points = {{5.69395, -28.4698}, {-1.06762, -38.0783}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Line(points = {{18.5053, -14.9466}, {12.4555, -23.8434}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Line(points = {{21.3523, -23.1317}, {16.0142, -32.0285}}, rotation = 0, color = {0, 0, 255}, pattern = LinePattern.Solid, thickness = 1.75), Ellipse(rotation = 0, lineColor = {255, 255, 0}, fillColor = {189, 193, 195}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-16.3701, -48.3986}, {23.1317, -61.9217}}), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-9.60854, -49.4662}, {16.726, -61.5658}}, textString = "STORM"), Text(rotation = 0, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-63.7011, -45.9075}, {-38.79, -65.4804}}, textString = "2"), Polygon(points = {{7.11744, -64.0569}, {-16.726, -84.3416}, {0, -74.0214}, {-4.98221, -68.3274}, {7.11744, -64.0569}}, rotation = 0, lineColor = {255, 255, 0}, fillColor = {255, 255, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25)}));
  end WWSignal;

  model sensor_class_A
    extends Modelica.Blocks.Interfaces.SISO;
    constant Real T90 = 1 / 24 / 60;
    constant Real T = T90 / 3.89;
    Modelica.Blocks.Continuous.TransferFunction transferfunction2(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {6.66134e-16, -2.22045e-16}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction1(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {-56.8675, -0.481928}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  equation
    connect(transferfunction2.y, y) annotation(
      Line(points = {{13.2, -2.22045e-16}, {103.133, -2.22045e-16}, {103.133, 0}, {110, 0}}));
    connect(u, transferfunction1.u) annotation(
      Line(points = {{-120, 0}, {-73.253, 0}, {-73.253, -0.481928}, {-71.2675, -0.481928}}));
    connect(transferfunction1.y, transferfunction2.u) annotation(
      Line(points = {{-43.6675, -0.481928}, {-13.9759, -0.481928}, {-13.9759, -2.22045e-16}, {-14.4, -2.22045e-16}}));
    annotation(
      Documentation(info = "

Main Author:
   Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain
  

The package is free software; it can be redistributed and /or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file /Modelica/package.mo/.

      "));
    annotation(
      Icon(graphics = {Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-60.7229, 53.9759}, {48.6747, -42.8916}}, textString = "class A")}));
  end sensor_class_A;

  model sensor_class_B
    extends Modelica.Blocks.Interfaces.SISO;
    constant Real T90 = 10 / 24 / 60;
    constant Real T = T90 / 11.7724;
    Modelica.Blocks.Continuous.TransferFunction transferfunction8(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {62.1687, -34.2169}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction7(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {16.3855, -36.1446}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction6(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {-26.988, -37.1084}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction5(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {-67.9518, -37.5904}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction4(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {57.3494, 18.7952}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction3(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {13.494, 17.3494}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction2(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {-27.9518, 16.8675}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction1(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {-70.3615, 17.3494}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  equation
    connect(u, transferfunction1.u) annotation(
      Line(points = {{-120, 0}, {-85.7831, 0}, {-85.7831, 17.3494}, {-84.7615, 17.3494}}));
    connect(transferfunction8.y, y) annotation(
      Line(points = {{75.3687, -34.2169}, {87.2289, -34.2169}, {87.2289, 0.481928}, {110, 0.481928}, {110, 0}}));
    connect(transferfunction7.y, transferfunction8.u) annotation(
      Line(points = {{29.5855, -36.1446}, {46.747, -36.1446}, {46.747, -34.2169}, {47.7687, -34.2169}}));
    connect(transferfunction6.y, transferfunction7.u) annotation(
      Line(points = {{-13.788, -37.1084}, {-0.481928, -37.1084}, {-0.481928, -36.1446}, {1.9855, -36.1446}}));
    connect(transferfunction5.y, transferfunction6.u) annotation(
      Line(points = {{-54.7518, -37.5904}, {-42.4096, -37.5904}, {-42.4096, -37.1084}, {-41.388, -37.1084}}));
    connect(transferfunction4.y, transferfunction5.u) annotation(
      Line(points = {{70.5494, 18.7952}, {79.5181, 18.7952}, {79.5181, -13.9759}, {-89.6386, -13.9759}, {-89.6386, -37.1084}, {-82.3518, -37.1084}, {-82.3518, -37.5904}}));
    connect(transferfunction3.y, transferfunction4.u) annotation(
      Line(points = {{26.694, 17.3494}, {41.9277, 17.3494}, {41.9277, 18.7952}, {42.9494, 18.7952}}));
    connect(transferfunction2.y, transferfunction3.u) annotation(
      Line(points = {{-14.7518, 16.8675}, {-0.481928, 16.8675}, {-0.481928, 17.3494}, {-0.906, 17.3494}}));
    connect(transferfunction1.y, transferfunction2.u) annotation(
      Line(points = {{-43.6675, -0.481928}, {-13.9759, -0.481928}, {-13.9759, -2.22045e-16}, {-14.4, -2.22045e-16}}));
    annotation(
      Documentation(info = "

Main Author:
   Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain
  
The package is free software; it can be redistributed and /or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file /Modelica/package.mo/.

      "));
    annotation(
      Icon(graphics = {Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-60.7229, 53.9759}, {48.6747, -42.8916}}, textString = "class B")}));
  end sensor_class_B;

  model KLA_dynamics
    extends Modelica.Blocks.Interfaces.SISO;
    constant Real T90 = 4 / 24 / 60;
    constant Real T = T90 / 3.89;
    Modelica.Blocks.Continuous.TransferFunction transferfunction2(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {6.66134e-16, -2.22045e-16}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferfunction1(a = {T, 1}) annotation(
      Placement(visible = true, transformation(origin = {-56.8675, -0.481928}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  equation
    connect(transferfunction2.y, y) annotation(
      Line(points = {{13.2, -2.22045e-16}, {103.133, -2.22045e-16}, {103.133, 0}, {110, 0}}));
    connect(u, transferfunction1.u) annotation(
      Line(points = {{-120, 0}, {-73.253, 0}, {-73.253, -0.481928}, {-71.2675, -0.481928}}));
    connect(transferfunction1.y, transferfunction2.u) annotation(
      Line(points = {{-43.6675, -0.481928}, {-13.9759, -0.481928}, {-13.9759, -2.22045e-16}, {-14.4, -2.22045e-16}}));
    annotation(
      Documentation(info = "

Main Author:
   Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain
  
The package is free software; it can be redistributed and /or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file /Modelica/package.mo/.

      "));
    annotation(
      Icon(graphics = {Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-60.7229, 53.9759}, {48.6747, -42.8916}}, textString = "class A")}));
  end KLA_dynamics;

  model Noise
    extends Modelica.Blocks.Interfaces.SISO;
    parameter Real ymax = 1;
    parameter Real delta = 1;
    parameter Real nl = 0.025;
    parameter Real noise_start = 0;
    parameter Real noise_sampling = 1 / 24 / 60;
  protected
    discrete Real n(start = 0);

    function RandomNormal
      output Real y;
      input Real u;
    
      external "C" y = ext_RandomNormal(u) annotation(
        Include = "#include \"c:\\..../WasteWaterPFC/BSM1/RandomNormal/ext_RandNormal.c\"");
    end RandomNormal;
  equation
    when sample(noise_start, noise_sampling) then
      n = RandomNormal(time) * delta * ymax * nl;
    end when;
    y = u + n;
    annotation(
      Documentation(info = "

 Main Author:
   Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain
  
The package is free software; it can be redistributed and /or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file /Modelica/package.mo/.

      "));
    annotation(
      Icon(graphics = {Text(rotation = 0, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-60.7229, 53.9759}, {48.6747, -42.8916}}, textString = "Noise")}));
  end Noise;








  annotation(
    Documentation(info = "This library contains components to build models of biological municipal
wastewater treatment plants based on the Activated Sludge Model No.1 (ASM1) by the
International Association on Water Quality (IAWQ) [1,2].


The library currently is structured in following sub-libraries.

 - Interfaces (partial ASM1 models and connectors)
 - PreClar (primary clarifier models)
 - SecClar (several secondary settling tank models)
 - Examples (wastewater treatment plant models)

Main Author:
   Gerald Reichl
   Technische Universitaet Ilmenau
   Faculty of Informatics and Automation
   Department Dynamics and Simulation of ecological Systems
   P.O. Box 10 05 65
   98684 Ilmenau
   Germany
   email: gerald.reichl@tu-ilmenau.de


References:

[1] M. Henze and C.P.L. Grady Jr and W. Gujer and G.v.R. Marais and T. Matsuo:
    Activated Sludge Model No.1. IAWQ, 1987.
[2] M. Henze and W.Gujer and T. Mino and. M.v. Loosdrecht: Activated Sludge
    Models ASM1, ASM2, ASM2d, and ASM3. IWA Task Group on Mathematical Modelling
    for Design and Operation of Biological Wastewater Treatment, 2000.


This package is free software; it can be redistributed and/or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file \"Modelica/package.mo\".

Copyright (C) 2000 - 2002, Gerald Reichl

Modelica Version 3.3 adapted by:
   Carmen Prieto Estravid FYP
   led by Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain

Copyright (C) 2013

    "));
end ASM1;
