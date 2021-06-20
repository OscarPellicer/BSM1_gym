within WasteWater;
package Icons "Icon definitions for the WasteWater library" 
  
  extends Modelica.Icons.Library;
  
  annotation (
    Coordsys(
      extent=[0, 0; 442, 386], 
      grid=[2, 2], 
      component=[20, 20]), 
    Window(
      x=0.45, 
      y=0.01, 
      width=0.44, 
      height=0.65, 
      library=1, 
      autolayout=1), 
    Documentation(info="This package is part of the WasteWater Library and contains
definitions for the graphical layout of components which are
used within the sub-libraries ASM1, ASM2d and ASM3.

Main Author:
   Gerald Reichl
   Technische Universitaet Ilmenau
   Faculty of Informatics and Automation
   Department Dynamics and Simulation of ecological Systems
   P.O. Box 10 05 65
   98684 Ilmenau
   Germany
   email: gerald.reichl@tu-ilmenau.de


This package is free software; it can be redistributed and/or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file \"Modelica/package.mo\".

Copyright (C) 2003, Gerald Reichl

Modelica Version 3.3 adapted by:
   Carmen Prieto Estravid FYP
   led by Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain

Copyright (C) 2013
"));
partial block deni "Icon for a denitrification tank"
      annotation(Documentation(info = "Icon for a denitrification tank "), Diagram(graphics = {
Rectangle(rotation = 0, lineColor = {255,255,255}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.1423,20.2847},{60.4982,-48.7545}}),
Line(points = {{-60.1423,19.9289},{-60.1423,-0.355872},{-79.0035,-0.355872},{-79.3594,-0.355872}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
Line(points = {{-79.3594,-6.76157},{-60.1423,-6.76157},{-60.1423,-48.7545},{60.8541,-48.7545},{60.8541,-6.76157},{79.7153,-6.76157}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
Line(points = {{60.4982,20.2847},{60.1423,0.355872},{80.427,0}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-40.9253,39.5018},{-37.7224,-1.06762}}),
Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{38.0783,39.8577},{41.637,-1.06762}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-42.7046,-3.20285},{-36.2989,-9.25267}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{37.0107,-3.20285},{43.7722,-9.60854}}),
Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.06762,49.8221},{1.06762,-27.4021}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-0.355872,-27.4021},{0.711744,-27.758}}),
Line(points = {{-19.5729,-27.758},{20.2847,-27.758}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.75),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {85,85,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-46.2633,-27.758},{-22.4199,-28.1139}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {85,85,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758,-27.0463},{46.6192,-28.1139}}),
Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-79.7153,-0.355872},{-60.1423,-6.40569}}),
Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{60.4982,-0.355872},{79.7153,-6.04982}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-53.0249,14.2349},{-53.3808,13.879}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-24.1993,6.04982},{-23.8434,6.76157}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{12.0996,-   11.7438},{   11.7438,-12.0996}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-36.6548,-37.3665},{-36.2989,-38.0783}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.3025,-33.0961},{-14.9466,-33.8078}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{13.5231,-36.6548},{14.2349,-37.7224}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{49.8221,-38.4342},{50.1779,-39.5018}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{25.9786,7.11744},{26.6904,6.76157}}),
Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),
Line(points = {{-90.7473,39.5018},{-41.637,39.5018},{-41.637,39.5018}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}),
Icon(graphics = {
Rectangle(rotation = 0, lineColor = {255,255,255}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.1423,20.2847},{60.4982,-48.7545}}),
Line(points = {{-60.1423,19.9289},{-60.1423,-0.355872},{-79.0035,-0.355872},{-79.3594,-0.355872}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
Line(points = {{-79.3594,-6.76157},{-60.1423,-6.76157},{-60.1423,-48.7545},{60.8541,-48.7545},{60.8541,-6.76157},{79.7153,-6.76157}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
Line(points = {{60.4982,20.2847},{60.1423,0.355872},{80.427,0}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-40.9253,39.5018},{-37.7224,-1.06762}}),
Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{38.0783,39.8577},{41.637,-1.06762}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-42.7046,-3.20285},{-36.2989,-9.25267}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{37.0107,-3.20285},{43.7722,-9.60854}}),
Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.06762,49.8221},{1.06762,-27.4021}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-0.355872,-27.4021},{0.711744,-27.758}}),
Line(points = {{-19.5729,-27.758},{20.2847,-27.758}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.75),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {85,85,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-46.2633,-27.758},{-22.4199,-28.1139}}),
Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {85,85,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758,-27.0463},{46.6192,-28.1139}}),
Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-79.7153,-0.355872},{-60.1423,-6.40569}}),
Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{60.4982,-0.355872},{79.7153,-6.04982}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-53.0249,14.2349},{-53.3808,13.879}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-24.1993,6.04982},{-23.8434,6.76157}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{12.0996,-   11.7438},{   11.7438,-12.0996}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-36.6548,-37.3665},{-36.2989,-38.0783}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-15.3025,-33.0961},{-14.9466,-33.8078}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{13.5231,-36.6548},{14.2349,-37.7224}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{49.8221,-38.4342},{50.1779,-39.5018}}),
Ellipse(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{25.9786,7.11744},{26.6904,6.76157}}),
Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),
Line(points = {{-41.2811,39.5018},{-91.1031,39.5018}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.75)}));
 end deni;
  partial model nitri "Icon for a nitrification tank"
      annotation(Icon(graphics = {
	  Rectangle(rotation = 0, lineColor = {255,255,255}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.1423,20.2847},{60.4982,-48.7545}}),
	  Line(points = {{-60.1423,19.9289},{-60.1423,-0.355872},{-79.0035,-0.355872},{-79.3594,-0.355872}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
	  Line(points = {{-79.3594,-6.76157},{-60.1423,-6.76157},{-60.1423,-48.7545},{60.8541,-48.7545},{60.8541,-6.76157},{79.7153,-6.76157}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
	  Line(points = {{60.4982,20.2847},{60.1423,0.355872},{80.427,0}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 1.25),
	  Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-40.9253,39.5018},{-37.7224,-1.06762}}),
	  Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{38.0783,39.8577},{41.637,-1.06762}}),
	  Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{-42.7046,-3.20285},{-36.2989,-9.25267}}),
	  Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.75, extent = {{37.0107,-3.20285},{43.7722,-9.60854}}),
	  Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{60.1423,-0.355872},{80.427,-6.04982}}),
	  Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-79.3594,-0.711744},{-59.4306,-6.04982}}),
	  Line(points = {{-59.7865,-39.5018},{60.4982,-39.8577}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),
	  Polygon(points = {{-54.0926,-39.5018},{-56.2278,-37.0107},{-48.0427,-37.0107},{-50.178,-39.5018},{-54.0926,-39.5018}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Polygon(points = {{-38.0784,-39.5018},{-40.2136,-37.0107},{-32.0285,-37.0107},{-34.1638,-39.5018},{-38.0784,-39.5018}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Polygon(points = {{20.9964,-39.8577},{18.8612,-37.3666},{27.0463,-37.3666},{24.911,-39.8577},{20.9964,-39.8577}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Polygon(points = {{6.04975,-39.8577},{3.91455,-37.3666},{12.0996,-37.3666},{9.96435,-39.8577},{6.04975,-39.8577}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Polygon(points = {{-9.25274,-39.5018},{-   11.3879,-37.0107},{-3.20284,-37.0107},{-5.69402,-39.5018},{-9.25274,-39.5018}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Polygon(points = {{-23.8435,-39.5018},{-25.9787,-37.0107},{-17.7936,-37.0107},{-19.9289,-39.5018},{-23.8435,-39.5018}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Polygon(points = {{48.3985,-39.8577},{46.2633,-37.3666},{54.4484,-37.3666},{52.3131,-39.8577},{48.3985,-39.8577}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Polygon(points = {{35.943,-39.8577},{33.8078,-37.3666},{41.637,-37.3666},{39.8576,-39.8577},{35.943,-39.8577}}, rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25),
	  Line(points = {{0.355872,-39.8577},{0.355872,-60.1423}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-52.3132,-27.4022},{-50.178,-29.1815}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-10.3203,-5.33806},{-8.18507,-7.11736}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-8.18498,7.82916},{-6.04978,6.04986}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-38.79,-18.5054},{-36.6548,-20.2847}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-34.8754,-23.1317},{-32.7402,-24.911}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-40.2135,-28.8256},{-38.0783,-30.6049}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-35.2313,-31.3167},{-33.0961,-33.096}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-49.1103,-32.3844},{-46.9751,-34.1637}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-52.3131,-6.76161},{-50.1779,-8.54091}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2953,-13.1673},{-55.1601,-14.9466}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-50.8897,-19.2171},{-48.3986,-20.9964}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.516,-23.8434},{-53.3808,-25.6227}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.516,-31.6726},{-53.3808,-33.4519}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-21.7082,-23.1317},{-19.573,-24.911}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-26.3345,-7.47333},{-28.4698,-9.25263}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-22.7757,-1.77938},{-20.2847,-3.55868}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-7.82916,-13.5232},{-5.69396,-15.3025}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-5.69393,-21.3523},{-3.55873,-23.1316}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-23.4875,-15.6584},{-21.3523,-17.4377}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-8.89677,-25.9787},{-7.11745,-28.1138}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-24.1993,-27.0463},{-21.7082,-28.8256}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.98218,-29.8933},{-2.84698,-31.6726}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-10.6761,-31.6726},{-8.54093,-33.4519}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-25.6228,-32.3844},{-23.4876,-34.1637}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-20.9964,-32.3844},{-18.8612,-34.5195}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{32.3844,12.8114},{34.1637,   11.0321}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{51.9573,-3.20287},{54.0925,-4.98217}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5054,-16.726},{20.6406,-18.5053}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{5.3381,0.711724},{7.4733,-1.06758}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-26.6904,4.62631},{-24.5552,2.84701}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{50.8897,-17.0819},{53.0249,-18.8612}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{47.331,-28.4698},{49.1103,-30.6049}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{50.8897,-24.1993},{53.0249,-25.9786}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{46.2634,-33.0961},{48.3986,-34.8754}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{51.2456,-33.0961},{53.3808,-34.8754}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-49.822,9.60852},{-47.6868,7.82922}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2953,-2.49112},{-55.1602,-4.27042}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{4.62636,-9.96443},{6.76156,-   11.7437}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758,-19.9288},{25.2669,-21.7081}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.3666,-13.5232},{39.8576,-15.3025}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{33.452,-21.3523},{35.5872,-23.1316}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.3666,-26.3345},{39.5018,-28.1138}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{34.1637,-29.5374},{36.2989,-31.3167}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{38.0783,-32.0285},{40.2135,-33.8078}}),
	  Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{19.2171,-25.6228},{21.3523,-27.4021}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{23.8434,-31.6726},{25.9786,-33.4519}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{19.9289,-33.8078},{22.064,-35.5872}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{9.60857,-18.1495},{   11.7438,-19.9288}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.91462,-21.3523},{6.04981,-23.1316}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{10.3203,-25.6228},{12.4555,-27.4021}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.55874,-29.1815},{5.69394,-30.9608}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{8.18508,-33.0961},{10.3203,-34.8754}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{20.9965,-7.8292},{23.4875,-9.6085}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-   11.3879,16.726},{-9.25268,14.9467}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{1.77938,14.5907},{3.91458,12.8114}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{47.6869,8.18503},{49.8221,6.40573}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-27.758,15.6583},{-25.6228,13.879}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{17.7936,13.879},{19.9288,12.0997}}),
	  Rectangle(rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.7758,1.42347},{24.911,-0.355833}}),
	  Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14)}));
    end nitri;
  partial model preclar1 "Icon for a dynamic preclarifier tank" 
    
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Rectangle(extent=[-90, 6; -80, -6], style(color=47, fillColor=47)), 
        Rectangle(extent=[80, 6; 90, -6], style(color=47, fillColor=47)), 
        Line(points=[-90, -6; -80, -6], style(color=0, thickness=2)), 
        Line(points=[-90, 6; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 6; 90, 6], style(color=0, thickness=2)), 
        Line(points=[80, -6; 90, -6], style(color=0, thickness=2)), 
        Rectangle(extent=[-80, 84; 80, -80], style(gradient=2, fillColor=47)), 
        Rectangle(extent=[-90, 86; 84, 28], style(color=7, fillColor=7)), 
        Line(points=[-80, -6; -80, -80; 80, -80; 80, -6], style(color=0, 
              thickness=2)), 
        Line(points=[-44, -48; 50, -48], style(color=0)), 
        Line(points=[-38, 12; -38, -52], style(color=0)), 
        Rectangle(extent=[-80, 28; 80, 8], style(color=47, fillColor=47)), 
        Line(points=[-80, 28; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 28; 80, 6], style(color=0, thickness=2)), 
        Line(points=[-38, -48; -36, -44; -34, -40; -32, -36; -30, -32; -26, -26
              ; -24, -24; -22, -22; -18, -18; -14, -14; -12, -12; -10, -10; -6
              , -8; -2, -6; 2, -4; 8, -2; 14, 0; 20, 0; 24, 0; 28, 0], style(
              color=0)), 
        Line(points=[38, 90; 38, 14], style(color=9)), 
        Text(extent=[-100, 80; 38, 40], string="%name")), 
      Documentation(info="Icon for a dynamic preclarifier tank "), 
      Diagram(
        Rectangle(extent=[-90, 6; -80, -6], style(color=47, fillColor=47)), 
        Rectangle(extent=[80, 6; 90, -6], style(color=47, fillColor=47)), 
        Line(points=[-90, -6; -80, -6], style(color=0, thickness=2)), 
        Line(points=[-90, 6; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 6; 90, 6], style(color=0, thickness=2)), 
        Line(points=[80, -6; 90, -6], style(color=0, thickness=2)), 
        Rectangle(extent=[-80, 84; 80, -80], style(gradient=2, fillColor=47)), 
        Line(points=[-80, -6; -80, -80; 80, -80; 80, -6], style(color=0, 
              thickness=2)), 
        Line(points=[-44, -48; 50, -48], style(color=0)), 
        Line(points=[-38, 12; -38, -52], style(color=0)), 
        Rectangle(extent=[-80, 28; 80, 8], style(color=47, fillColor=47)), 
        Line(points=[-80, 28; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 28; 80, 6], style(color=0, thickness=2)), 
        Line(points=[-38, -48; -36, -44; -34, -40; -32, -36; -30, -32; -26, -26
              ; -24, -24; -22, -22; -18, -18; -14, -14; -12, -12; -10, -10; -6
              , -8; -2, -6; 2, -4; 8, -2; 14, 0; 20, 0; 24, 0; 28, 0], style(
              color=0)), 
        Rectangle(extent=[-90, 86; 84, 28], style(color=7, fillColor=7)), 
        Text(extent=[-100, 80; 38, 40], string="%name"), 
        Line(points=[38, 90; 38, 14], style(color=9))));
  end preclar1;
  partial model preclar2 "Icon for a static preclarifier tank" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Rectangle(extent=[-90, 6; -80, -6], style(color=47, fillColor=47)), 
        Rectangle(extent=[80, 6; 90, -6], style(color=47, fillColor=47)), 
        Line(points=[-90, -6; -80, -6], style(color=0, thickness=2)), 
        Line(points=[-90, 6; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 6; 90, 6], style(color=0, thickness=2)), 
        Line(points=[80, -6; 90, -6], style(color=0, thickness=2)), 
        Rectangle(extent=[-80, 84; 80, -80], style(gradient=2, fillColor=47)), 
        Rectangle(extent=[-90, 86; 84, 28], style(color=7, fillColor=7)), 
        Line(points=[-80, -6; -80, -80; 80, -80; 80, -6], style(color=0, 
              thickness=2)), 
        Line(points=[-44, -48; 50, -48], style(color=0)), 
        Line(points=[-38, 12; -38, -52], style(color=0)), 
        Rectangle(extent=[-80, 28; 80, 8], style(color=47, fillColor=47)), 
        Line(points=[-80, 28; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 28; 80, 6], style(color=0, thickness=2)), 
        Line(points=[-38, -14; 40, -14], style(color=0, fillColor=0)), 
        Line(points=[38, 90; 38, 14], style(color=9)), 
        Text(extent=[-100, 80; 40, 40], string="%name")), 
      Documentation(info="Icon for a static preclarifier tank "), 
      Diagram(
        Rectangle(extent=[-90, 6; -80, -6], style(color=47, fillColor=47)), 
        Rectangle(extent=[80, 6; 90, -6], style(color=47, fillColor=47)), 
        Line(points=[-90, -6; -80, -6], style(color=0, thickness=2)), 
        Line(points=[-90, 6; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 6; 90, 6], style(color=0, thickness=2)), 
        Line(points=[80, -6; 90, -6], style(color=0, thickness=2)), 
        Rectangle(extent=[-80, 84; 80, -80], style(gradient=2, fillColor=47)), 
        Rectangle(extent=[-90, 86; 84, 28], style(color=7, fillColor=7)), 
        Line(points=[-80, -6; -80, -80; 80, -80; 80, -6], style(color=0, 
              thickness=2)), 
        Line(points=[-44, -48; 50, -48], style(color=0)), 
        Line(points=[-38, 12; -38, -52], style(color=0)), 
        Rectangle(extent=[-80, 28; 80, 8], style(color=47, fillColor=47)), 
        Line(points=[-80, 28; -80, 6], style(color=0, thickness=2)), 
        Line(points=[80, 28; 80, 6], style(color=0, thickness=2)), 
        Line(points=[-38, -14; 40, -14], style(color=0, fillColor=0)), 
        Line(points=[38, 90; 38, 14], style(color=9)), 
        Text(extent=[-98, 80; 38, 40], string="%name")));
  end preclar2;
  partial model precipitation "Icon for a precipitation tank" 
    
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[1, 1], 
        component=[20, 20]), 
      Icon(
        Rectangle(extent=[-60, 20; 60, -50], style(color=7, fillColor=48)), 
        Line(points=[-60, -6; -60, -50; 60, -50; 60, -6], style(color=0, 
              thickness=2)), 
        Line(points=[-60, 6; -60, 19], style(color=0, thickness=2)), 
        Line(points=[59, 5; 59, 19], style(color=0, thickness=2)), 
        Rectangle(extent=[-90, 6; -59, -6], style(color=48, fillColor=48)), 
        Rectangle(extent=[56, 6; 90, -6], style(color=48, fillColor=48)), 
        Line(points=[-90, -6; -60, -6], style(color=0, thickness=2)), 
        Line(points=[-90, 6; -60, 6], style(color=0, thickness=2)), 
        Line(points=[59, 6; 90, 6], style(color=0, thickness=2)), 
        Line(points=[60, -6; 90, -6], style(color=0, thickness=2)), 
        Text(extent=[-100, -59; 100, -100], string="%name"), 
        Polygon(points=[-49, -36; -47, -40; -45, -40; -39, -38; -43, -36; -47, 
              -32; -49, -36], style(color=9, fillColor=9)), 
        Polygon(points=[-26, -6; -24, -10; -22, -10; -16, -8; -18, -4; -24, -2
              ; -26, -6], style(color=9, fillColor=9)), 
        Polygon(points=[-30, -28; -28, -32; -24, -32; -24, -28; -20, -26; -28, 
              -24; -30, -28], style(color=9, fillColor=9)), 
        Polygon(points=[-1, -11; 5, -7; 5, -14; 0, -1; -1, -11], style(color=9
              , fillColor=9)), 
        Polygon(points=[40, -34; 42, -38; 46, -38; 46, -34; 50, -32; 42, -30; 
              40, -34], style(color=9, fillColor=9)), 
        Polygon(points=[12, -35; 14, -39; 18, -39; 18, -35; 22, -33; 16, -33; 
              12, -35], style(color=9, fillColor=9)), 
        Polygon(points=[15, -17; 17, -23; 21, -23; 21, -17; 23, -15; 15, -15; 
              15, -17], style(color=9, fillColor=9)), 
        Rectangle(extent=[-6, 57; 6, 5], style(gradient=1, fillColor=8)), 
        Polygon(points=[-30, 85; 30, 85; 6, 57; -6, 57; -30, 85], style(color=8
              , fillColor=8)), 
        Line(points=[-30, 85; -6, 57], style(color=0)), 
        Line(points=[30, 85; 6, 57], style(color=0)), 
        Rectangle(extent=[-46, -6; -43, 40], style(color=0, fillColor=8)), 
        Ellipse(extent=[-50, -6; -40, -16], style(
            color=0, 
            thickness=2, 
            fillColor=8)), 
        Line(points=[-90, 40; -43, 40], style(color=0)), 
        Rectangle(extent=[44, -6; 47, 44], style(color=0, fillColor=8)), 
        Ellipse(extent=[41, -6; 51, -16], style(
            color=0, 
            thickness=2, 
            fillColor=8)), 
        Line(points=[44, 44; 50, 44], style(color=0))), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Diagram(
        Rectangle(extent=[-60, 20; 60, -50], style(color=7, fillColor=48)), 
        Line(points=[-60, -6; -60, -50; 60, -50; 60, -6], style(color=0, 
              thickness=2)), 
        Line(points=[-60, 6; -60, 19], style(color=0, thickness=2)), 
        Line(points=[59, 5; 59, 19], style(color=0, thickness=2)), 
        Rectangle(extent=[-90, 6; -59, -6], style(color=48, fillColor=48)), 
        Rectangle(extent=[56, 6; 90, -6], style(color=48, fillColor=48)), 
        Line(points=[-90, -6; -60, -6], style(color=0, thickness=2)), 
        Line(points=[-90, 6; -60, 6], style(color=0, thickness=2)), 
        Line(points=[59, 6; 90, 6], style(color=0, thickness=2)), 
        Line(points=[60, -6; 90, -6], style(color=0, thickness=2)), 
        Text(extent=[-101, -59; 99, -98], string="%name"), 
        Polygon(points=[-49, -36; -47, -40; -45, -40; -39, -38; -43, -36; -47, 
              -32; -49, -36], style(color=9, fillColor=9)), 
        Polygon(points=[-26, -6; -24, -10; -22, -10; -16, -8; -18, -4; -24, -2
              ; -26, -6], style(color=9, fillColor=9)), 
        Polygon(points=[-30, -28; -28, -32; -24, -32; -24, -28; -20, -26; -28, 
              -24; -30, -28], style(color=9, fillColor=9)), 
        Polygon(points=[-1, -11; 5, -7; 5, -14; 0, -1; -1, -11], style(color=9
              , fillColor=9)), 
        Polygon(points=[40, -34; 42, -38; 46, -38; 46, -34; 50, -32; 42, -30; 
              40, -34], style(color=9, fillColor=9)), 
        Polygon(points=[12, -35; 14, -39; 18, -39; 18, -35; 22, -33; 16, -33; 
              12, -35], style(color=9, fillColor=9)), 
        Polygon(points=[15, -17; 17, -23; 21, -23; 21, -17; 23, -15; 15, -15; 
              15, -17], style(color=9, fillColor=9)), 
        Rectangle(extent=[-6, 57; 6, 5], style(gradient=1, fillColor=8)), 
        Polygon(points=[-30, 85; 30, 85; 6, 57; -6, 57; -30, 85], style(color=8
              , fillColor=8)), 
        Line(points=[-30, 85; -6, 57], style(color=0)), 
        Line(points=[30, 85; 6, 57], style(color=0)), 
        Rectangle(extent=[-46, -6; -43, 40], style(color=0, fillColor=8)), 
        Ellipse(extent=[-50, -6; -40, -16], style(
            color=0, 
            thickness=2, 
            fillColor=8)), 
        Line(points=[-90, 40; -43, 40], style(color=0)), 
        Rectangle(extent=[44, -6; 47, 44], style(color=0, fillColor=8)), 
        Ellipse(extent=[41, -6; 51, -16], style(
            color=0, 
            thickness=2, 
            fillColor=8)), 
        Line(points=[44, 44; 50, 44], style(color=0))), 
      Documentation(info="Icon for a precipitation tank"));
  end precipitation;
  partial model SecClar "Icon for a secondary clarifier"
      annotation(Documentation(info = "Icon for a secondary clarifier"), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-56.5836,46.6192},{55.8719,30.2491}}),Rectangle(rotation = 0, lineColor = {170,170,255}, fillColor = {170,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-55.8719,29.8932},{55.516,13.879}}),Rectangle(rotation = 0, lineColor = {255,255,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-56.9395,13.879},{54.8043,-14.9466}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-57.2954,-15.3025},{55.8719,-28.8256}}),Polygon(points = {{-56.5836,-28.4698},{-56.5836,-35.9431},{-17.4377,-50.1779},{-4.62633,-62.6335},{-4.62633,-75.4448},{-29.5374,-75.4448},{-29.5374,-81.1388},{32.0285,-81.1388},{32.0285,-74.7331},{6.40569,-74.7331},{6.40569,-62.9893},{18.8612,-50.5338},{56.2278,-36.2989},{56.2278,-28.8256},{-56.5836,-28.8256},{-56.5836,-28.4698}}, rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Rectangle(rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{54.4484,46.6192},{67.6157,41.637}}),Line(points = {{-56.5836,47.331},{-56.5836,14.2349},{-68.3274,14.2349},{-68.3274,9.60854},{-56.9395,9.60854},{-56.9395,-35.5872},{-17.4377,-50.1779},{-4.62633,-62.6335},{-4.62633,-75.089},{-29.5374,-75.089},{-29.5374,-81.1388},{32.0285,-81.1388},{32.0285,-74.7331},{6.04982,-74.7331},{6.04982,-62.9893},{18.1495,-50.8897},{56.2278,-36.2989},{56.2278,41.2811},{67.6157,41.2811},{67.6157,45.9075}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),
	Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),	 
    Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{31.3167,-54.8043},{63.7011,-63.3452}}, textString = "waste"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-55.516,-55.516},{-23.8434,-66.1922}}, textString = "return"),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936,12.0996},{1.77936,8.54093}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936,5.69395},{1.77936,2.13523}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936,-1.77936},{1.77936,-5.33808}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-1.77936,-8.8968},{1.77936,-12.4555}})}));
    end SecClar;
  partial model SecClarKrebs 
    "Icon for a secondary clarifier based on Krebs model" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Polygon(points=[-20, -70; 20, -70; 4, -84; -4, -84; -20, -70], style(
              pattern=0, fillColor=48)), 
        Rectangle(extent=[-4, -84; 4, -92], style(pattern=0, fillColor=48)), 
        Polygon(points=[-80, -48; -36, -64; 38, -64; 80, -48; -80, -48], style(
              pattern=0, fillColor=48)), 
        Rectangle(extent=[-80, 62; 80, 16], style(color=69, fillColor=69)), 
        Rectangle(extent=[-80, 16; 80, -40], style(color=48, fillColor=48)), 
        Text(extent=[-100, 100; 100, 60], string="%name"), 
        Polygon(points=[-36, -64; 38, -64; 20, -70; -20, -70; -36, -64], style(
              pattern=0, fillColor=48)), 
        Line(points=[4, -92; 4, -84; 20, -70; 80, -48], style(color=0, 
              thickness=2)), 
        Rectangle(extent=[-80, -40; 80, -48], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[80, 62; 92, 54], style(color=69, fillColor=69)), 
        Line(points=[80, 54; 92, 54], style(color=0, thickness=2)), 
        Line(points=[-4, -92; -4, -84; -20, -70; -80, -48; -80, 10], style(
              color=0, thickness=2)), 
        Line(points=[-80, 62; -80, 16], style(
            color=0, 
            thickness=2, 
            fillColor=0)), 
        Line(points=[-80, 10; -90, 10], style(color=0, thickness=2)), 
        Line(points=[-80, 16; -90, 16], style(color=0, thickness=2)), 
        Rectangle(extent=[-20, -92; 20, -98], style(pattern=0, fillColor=48)), 
        Line(points=[-20, -92; -4, -92], style(
            color=0, 
            thickness=2, 
            fillColor=0)), 
        Line(points=[-20, -98; 20, -98], style(color=0, thickness=2)), 
        Line(points=[20, -92; 4, -92], style(color=0, thickness=2)), 
        Line(points=[80, -48; 80, 54], style(color=0, thickness=2)), 
        Text(extent=[-100, -60; -40, -80], string="return"), 
        Text(extent=[40, -60; 100, -80], string="waste"), 
        Polygon(points=[-30, -10; -26, -10; -26, -26; -20, -24; -28, -38; -36, 
              -24; -30, -26; -30, -10], style(pattern=0, fillColor=46)), 
        Polygon(points=[18, -28; 22, -28; 22, -44; 28, -42; 20, -56; 12, -42; 
              18, -44; 18, -28], style(pattern=0, fillColor=46)), 
        Rectangle(extent=[-90, 16; -80, 10], style(pattern=0, fillColor=48))), 
      Documentation(info="Icon for a secondary clarifier"));
  end SecClarKrebs;
  partial model SecClarSimple 
    "Icon for a secondary clarifier based on simple model" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Polygon(points=[-20, -70; 20, -70; 4, -84; -4, -84; -20, -70], style(
              pattern=0, fillColor=48)), 
        Rectangle(extent=[-4, -84; 4, -92], style(pattern=0, fillColor=48)), 
        Polygon(points=[-80, -48; -36, -64; 38, -64; 80, -48; -80, -48], style(
              pattern=0, fillColor=48)), 
        Rectangle(extent=[-80, 62; 80, -40], style(color=48, fillColor=48)), 
        Text(extent=[-98, 100; 100, 60], string="%name"), 
        Polygon(points=[-36, -64; 38, -64; 20, -70; -20, -70; -36, -64], style(
              pattern=0, fillColor=48)), 
        Line(points=[4, -92; 4, -84; 20, -70; 80, -48], style(color=0, 
              thickness=2)), 
        Rectangle(extent=[-80, -40; 80, -48], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[80, 62; 92, 54], style(color=69, fillColor=69)), 
        Line(points=[80, 54; 92, 54], style(color=0, thickness=2)), 
        Line(points=[-4, -92; -4, -84; -20, -70; -80, -48; -80, 10], style(
              color=0, thickness=2)), 
        Line(points=[-80, 62; -80, 16], style(
            color=0, 
            thickness=2, 
            fillColor=0)), 
        Line(points=[-80, 10; -90, 10], style(color=0, thickness=2)), 
        Line(points=[-80, 16; -90, 16], style(color=0, thickness=2)), 
        Rectangle(extent=[-20, -92; 20, -98], style(pattern=0, fillColor=48)), 
        Line(points=[-20, -92; -4, -92], style(
            color=0, 
            thickness=2, 
            fillColor=0)), 
        Line(points=[-20, -98; 20, -98], style(color=0, thickness=2)), 
        Line(points=[20, -92; 4, -92], style(color=0, thickness=2)), 
        Line(points=[80, -48; 80, 54], style(color=0, thickness=2)), 
        Text(extent=[-100, -60; -40, -80], string="return"), 
        Text(extent=[40, -60; 100, -80], string="waste"), 
        Polygon(points=[16, 44; 33, 44; 31, 52; 48, 42; 31, 31; 33, 39; 16, 39
              ; 16, 44], style(pattern=0, fillColor=69)), 
        Polygon(points=[-46, 32; -29, 32; -31, 40; -14, 30; -31, 19; -29, 27; -
              46, 27; -46, 32], style(pattern=0, fillColor=69)), 
        Polygon(points=[18, -26; 22, -26; 22, -42; 28, -40; 20, -54; 12, -40; 
              18, -42; 18, -26], style(pattern=0, fillColor=46)), 
        Polygon(points=[-32, -10; -28, -10; -28, -26; -22, -24; -30, -38; -38, 
              -24; -32, -26; -32, -10], style(pattern=0, fillColor=46)), 
        Rectangle(extent=[-90, 16; -80, 10], style(pattern=0, fillColor=48))), 
      Documentation(info="Icon for a secondary clarifier"));
  end SecClarSimple;
 partial block blower "Icon for an air blower"
      annotation(Documentation(info = "Icon for an air blower "), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {191,191,191}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-86.8327,0.355856},{-15.6584,-60.1423}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{64.4128,-17.7936},{55.1601,-35.2314}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{71.8861,-23.8435},{64.7687,-29.1815}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{71.8862,-18.8612},{76.5125,-33.0961}}),
	  Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),	 
	  Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-15.3025,0.355872},{55.1601,-60.1423}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 8.25, extent = {{-77.2242,-9.60854},{-23.4875,-51.2456}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 8.25, extent = {{-7.11744,-8.8968},{47.6868,-51.2456}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{-58.0071,-27.0462},{-43.0605,-33.096}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{13.879,-26.3346},{27.758,-32.7402}}),Polygon(points = {{-44.484,-25.6228},{-28.1139,-20.6406},{-41.637,-27.0463},{-44.484,-25.6228}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-40.9252,-28.1139},{-23.1317,-35.9431},{-40.5694,-32.0285},{-40.9252,-28.1139}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-41.637,-33.452},{-37.0107,-48.3986},{-46.9751,-35.2313},{-41.637,-33.452}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-48.3986,-35.5872},{-56.2278,-50.5338},{-53.7367,-35.2313},{-48.3986,-35.5872}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-53.7367,-35.2313},{-75.4448,-39.8576},{-58.363,-33.452},{-51.9573,-35.9431},{-53.7367,-35.2313}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-59.4306,-32.3843},{-74.0214,-22.7758},{-60.1423,-27.4021},{-59.4306,-32.3843},{-59.4306,-32.3843}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-58.7189,-27.4021},{-54.4484,-8.8968},{-53.0249,-24.1993},{-54.4484,-24.5552},{-58.7189,-27.4021}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-51.2456,-23.8434},{-38.4342,-   11.3879},{-45.9075,-24.911},{-51.2456,-23.8434}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{18.5053,-23.4875},{31.6726,-10.6762},{23.4875,-24.1993},{18.5053,-23.4875}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{26.3345,-24.1993},{41.9929,-19.573},{28.8256,-26.3345},{26.3345,-24.1993}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{30.2491,-27.758},{46.6192,-35.9431},{29.8932,-31.6726},{30.2491,-27.758}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{29.1815,-33.0961},{34.1637,-48.3986},{24.1993,-35.2313},{29.1815,-33.0961}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{18.1495,-34.8754},{22.7758,-35.5872},{14.5907,-50.1779},{18.1495,-34.8754}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{16.3701,-35.2313},{-4.98221,-39.8577},{13.1673,-32.3843},{16.3701,-35.2313}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{   11.032,-31.3167},{-3.20285,-21.7082},{   11.7438,-26.6904},{   11.032,-31.3167}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{12.8114,-25.9786},{15.6584,-8.18505},{17.7936,-24.1993},{12.8114,-25.9786}}, rotation = 0, lineColor = {0,0,0}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.3416,-20.9964},{-17.0819,-23.8434}}),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975,-12.8114},{-16.726,-14.9466}}),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975,-36.6548},{-16.3701,-39.1459}}),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-84.6975,-46.2633},{-16.726,-48.7544}}),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.9466,-12.8114},{53.0249,-14.9466}}),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.5907,-20.9964},{53.3808,-23.4875}}),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-14.2349,-36.6548},{52.669,-39.1459}}),Rectangle(rotation = 0, lineColor = {179,179,179}, fillColor = {207,207,207}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.5231,-46.2633},{53.0249,-48.7544}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-80.0712,-60.1423},{-59.7865,-65.8363}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{28.8256,-60.4982},{49.1103,-66.548}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {189,193,195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-66.548,-1.77636e-15},{-35.2313,22.0641}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {189,193,195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{4.98221,22.7758},{36.2989,2.02061e-14}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {189,193,195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-64.0569,15.6584},{-38.4342,32.3843}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {189,193,195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{6.76157,15.6584},{33.452,31.6726}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {189,193,195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-52.669,34.5196},{23.8434,19.9288}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {189,193,195}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-29.8932,34.1637},{1.77936,56.2278}}),Polygon(points = {{-64.4128,3.55872},{-39.1459,3.55872},{-39.1459,22.4199},{9.25267,22.4199},{9.25267,4.27046},{33.452,4.27046},{33.452,22.7758},{31.6726,26.6904},{28.1139,30.9609},{18.8612,32.0285},{-0.355872,32.0285},{-0.355872,52.3132},{-27.4021,52.3132},{-27.4021,38.4342},{-27.4021,31.6726},{-50.5338,31.6726},{-56.5836,30.605},{-61.9217,27.4021},{-64.4128,24.1993},{-64.4128,24.1993},{-64.4128,3.55872}}, rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-55.516,7.82918},{-51.9573,7.47331},{-51.9573,19.573},{-48.7544,19.573},{-53.0249,25.9786},{-58.7189,19.9288},{-55.516,19.9288},{-55.516,7.47331},{-55.516,7.82918}}, rotation = 0, lineColor = {255,170,0}, fillColor = {255,170,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{17.4377,7.47331},{21.3523,7.47331},{21.3523,20.2847},{24.911,19.9288},{19.2171,27.0463},{13.879,20.2847},{17.4377,20.6406},{17.4377,7.47331}}, rotation = 0, lineColor = {255,170,0}, fillColor = {255,170,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-16.0142,28.8256},{-12.0996,28.8256},{-12.0996,41.2811},{-7.47331,41.2811},{-13.879,48.7544},{-20.6406,41.637},{-16.0142,41.637},{-16.0142,28.8256}}, rotation = 0, lineColor = {255,170,0}, fillColor = {255,170,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25)}));
    end blower;
   partial model pump "Icon for a wastewater pump"
      annotation(Documentation(info = "Icon for a wastewater pump "), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014,35.2313},{56.9395,-25.9786}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961,25.2669},{40.5694,-19.573}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-62.9893,-7.82918},{-1.77936,-20.2847}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5053,25.9787},{64.7686,12.4555}}),Line(points = {{-62.6335,-7.82915},{-32.0284,-7.82915}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-62.6335,-20.6406},{-8.8968,-20.6406}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{18.5054,26.3345},{65.1245,26.3345}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{40.9253,12.0996},{65.1245,12.0996}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-55.8718,-14.5907},{-34.5195,-14.5907}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{41.2812,19.573},{60.1424,19.573}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),
	 	Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),	 
        Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Sphere, lineThickness = 0.25, extent = {{-4.27046,6.04982},{12.0996,-0.711744}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{3.20285,3.20285},{4.27046,2.84698}}),Polygon(points = {{1.42349,8.54093},{10.3202,24.911},{5.33807,8.54093},{1.42349,8.54093}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{9.25267,7.82918},{24.5552,18.8612},{12.0996,6.76157},{9.25267,7.82918}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{13.879,4.62633},{32.0285,0.711744},{14.5907,1.06762},{13.879,4.62633}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{   11.032,-1.77936},{23.1317,-12.8114},{7.11744,-2.84698},{   11.032,-1.77936}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{4.98221,-4.27046},{-3.91459,-19.2171},{1.42349,-3.20285},{4.98221,-3.55872},{4.98221,-4.27046}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-2.4911,-1.77936},{-19.573,-10.3203},{-5.69395,0.711744},{-2.4911,-1.77936}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-7.11744,3.55872},{-27.4021,7.11744},{-4.62633,6.40569},{-7.11744,3.55872}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-2.4911,7.82918},{-13.1673,19.573},{1.06762,8.18505},{-2.4911,7.82918}}, rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-51.6014,29.5374},{-60.8541,12.0996}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,171,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-60.8541,23.4875},{-67.9715,18.1495}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-72.9537,28.1139},{-68.3274,13.879}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.7224,39.5018},{-18.8612,35.2313}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.0641,39.5018},{41.2811,35.2313}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.7224,-25.9786},{-18.8612,-30.605}}),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{22.0641,-25.9786},{41.2811,-30.605}})}));
    end pump;
  partial model FlowSource "Icon for a flow source" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Icon(
        Ellipse(extent=[-54, 54; 56, -54], style(color=8, fillColor=8)), 
        Polygon(points=[-8, -54; -14, -52; -24, -48; -32, -44; -36, -40; -42, -
              34; -48, -26; -50, -20; 52, -20; 50, -26; 46, -32; 42, -36; 38, -
              40; 34, -44; 30, -46; 26, -48; 22, -50; 16, -52; 10, -54; 4, -54
              ; 0, -54; -8, -54], style(pattern=0, fillColor=70)), 
        Ellipse(extent=[-54, 54; 56, -54], style(color=0, thickness=2)), 
        Rectangle(extent=[-4, -52; 4, -74], style(pattern=0, fillColor=70)), 
        Rectangle(extent=[4, -74; 88, -68], style(pattern=0, fillColor=70)), 
        Line(points=[-4, -54; -4, -74; 88, -74], style(color=0, thickness=2)), 
        Line(points=[4, -54; 4, -68; 88, -68], style(color=0, thickness=2)), 
        Text(extent=[-98, 98; 98, 60], string="%name")), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Documentation(info="Icon for a flow source"), 
      Diagram(
        Ellipse(extent=[-54, 54; 56, -54], style(color=8, fillColor=8)), 
        Polygon(points=[-8, -54; -14, -52; -24, -48; -32, -44; -36, -40; -42, -
              34; -48, -26; -50, -20; 52, -20; 50, -26; 46, -32; 42, -36; 38, -
              40; 34, -44; 30, -46; 26, -48; 22, -50; 16, -52; 10, -54; 4, -54
              ; 0, -54; -8, -54], style(pattern=0, fillColor=70)), 
        Ellipse(extent=[-54, 54; 56, -54], style(color=0, thickness=2)), 
        Rectangle(extent=[-4, -52; 4, -74], style(pattern=0, fillColor=70)), 
        Rectangle(extent=[4, -74; 88, -68], style(pattern=0, fillColor=70)), 
        Line(points=[-4, -54; -4, -74; 88, -74], style(color=0, thickness=2)), 
        Line(points=[4, -54; 4, -68; 88, -68], style(color=0, thickness=2)), 
        Text(extent=[-98, 98; 98, 60], string="%name")));
  end FlowSource;
partial model WWSource "Icon for a wastewater source"
      annotation(Documentation(info = "Icon for a water sink source "), Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.0868,52.0158},{42.3845,-31.5497}}),Rectangle(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-13.7412,-32.9117},{-4.67293,-52.6899}}),Rectangle(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-4.51829,-46.0047},{57.3201,-52.6899}}),
		Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),	 
	  Polygon(points = {{-59.4306,-3.91459},{41.9929,-3.91459},{39.8577,-8.18505},{36.2989,-13.5231},{32.7402,-17.0819},{27.758,-21.7082},{23.1317,-25.2669},{18.1495,-27.4021},{12.8114,-29.5374},{7.47331,-31.3167},{1.06762,-32.7402},{-2.84698,-33.0961},{-14.2349,-33.452},{-19.9288,-32.7402},{-27.758,-30.605},{-34.1637,-28.1139},{-39.1459,-26.3345},{-45.1957,-21.7082},{-49.4662,-18.1495},{-51.9573,-15.6584},{-54.0925,-13.1673},{-57.2954,-8.18505},{-59.4306,-4.27046},{-59.0747,-6.04982},{-59.4306,-3.91459}}, rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-14.2349,-33.452},{-14.2349,-52.669},{58.0071,-52.669}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-4.62633,-33.8078},{-4.62633,-45.5516},{57.6512,-45.5516}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25)}));
    end WWSource;
  partial model EffluentSink "Icon for a water sink e.g. receiving water"
      annotation(Documentation(info = "Icon for a water sink e.g. receiving water "), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,255,0}, fillColor = {0,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-83.2594,-23.2775},{89.0613,-82.4418}}),
		Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),	 
	  Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {198,198,198}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-83.8554,10.6024},{-10.1205,35.1807}}),Line(points = {{-49.6386,35.6627},{-49.6386,45.3012}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 4.75),Polygon(points = {{-48.6747,45.3012},{-40,51.5663},{-40,41.4458},{-40,40.9639},{-48.6747,45.3012}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-51.0843,45.7831},{-59.2771,52.0482},{-59.2771,40.9639},{-49.1566,46.2651},{-51.0843,45.7831}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-69.8795,-23.1325},{-54.4578,-67.4699},{59.759,-67.4699},{77.1084,-23.1325},{77.5904,-23.1325},{-69.8795,-23.1325}}, rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-9.63855,23.1325},{-4.81928,22.1687},{2.40964,16.3855},{10.6024,4.81928},{14.4578,-6.26506},{17.3494,-13.9759},{18.7952,-22.6506},{18.3133,-22.1687}}, rotation = 0, color = {0,170,255}, pattern = LinePattern.Solid, thickness = 3.25),Line(points = {{-9.63855,18.7952},{-5.3012,18.3133},{-0.481928,14.4578},{3.85542,6.74699},{7.71084,-1.44578},{9.15663,-10.1205},{10.6024,-14.9398},{10.6024,-22.6506},{10.6024,-22.6506}}, rotation = 0, color = {0,170,255}, pattern = LinePattern.Solid, thickness = 3.25),Line(points = {{-9.63855,14.4578},{-6.74699,13.494},{-3.37349,   11.0843},{-0.481928,3.85542},{2.89157,-3.85542},{3.85542,-   11.5663},{3.85542,-18.7952},{3.85542,-23.1325},{3.85542,-22.1687}}, rotation = 0, color = {0,170,255}, pattern = LinePattern.Solid, thickness = 3.75)}), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,255,0}, fillColor = {0,255,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-83.2594,-23.2775},{89.0613,-82.4418}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-27.2981,83.5655},{59.61,54.5961}}, textString = "Effluent", fontSize = 16),Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {198,198,198}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-83.8554,10.6024},{-10.1205,35.1807}}),Line(points = {{-49.6386,35.6627},{-49.6386,45.3012}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 4.75),Polygon(points = {{-48.6747,45.3012},{-40,51.5663},{-40,41.4458},{-40,40.9639},{-48.6747,45.3012}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-51.0843,45.7831},{-59.2771,52.0482},{-59.2771,40.9639},{-49.1566,46.2651},{-51.0843,45.7831}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-69.8795,-23.1325},{-54.4578,-67.4699},{59.759,-67.4699},{77.1084,-23.1325},{77.5904,-23.1325},{-69.8795,-23.1325}}, rotation = 0, lineColor = {0,170,255}, fillColor = {0,170,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-9.63855,23.1325},{-4.81928,22.1687},{2.40964,16.3855},{10.6024,4.81928},{14.4578,-6.26506},{17.3494,-13.9759},{18.7952,-22.6506},{18.3133,-22.1687}}, rotation = 0, color = {0,170,255}, pattern = LinePattern.Solid, thickness = 3.25),Line(points = {{-9.63855,18.7952},{-5.3012,18.3133},{-0.481928,14.4578},{3.85542,6.74699},{7.71084,-1.44578},{9.15663,-10.1205},{10.6024,-14.9398},{10.6024,-22.6506},{10.6024,-22.6506}}, rotation = 0, color = {0,170,255}, pattern = LinePattern.Solid, thickness = 3.25),Line(points = {{-9.63855,14.4578},{-6.74699,13.494},{-3.37349,   11.0843},{-0.481928,3.85542},{2.89157,-3.85542},{3.85542,-   11.5663},{3.85542,-18.7952},{3.85542,-23.1325},{3.85542,-22.1687}}, rotation = 0, color = {0,170,255}, pattern = LinePattern.Solid, thickness = 3.75)}));
    end EffluentSink;
  partial model SludgeSink "Icon for a wastewater sink"
      annotation(Documentation(info = "Icon for a wastewater sink"), Icon(graphics = {Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.7523,52.7275},{68.719,-30.838}}),Rectangle(rotation = 0, lineColor = {170,85,0}, fillColor = {170,85,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-36.9026,-45.6488},{70.8432,-76.5333}}),
	  	Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),	 
	  Line(points = {{-37.0107,-18.1494},{-36.6548,-76.5125},{70.4626,-76.5125}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Rectangle(rotation = 0, lineColor = {188,193,194}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-37.0107,   11.7438},{70.8185,-46.2633}}),Rectangle(rotation = 0, lineColor = {149,152,153}, fillColor = {171,175,176}, pattern = LinePattern.Solid, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.25, extent = {{-37.0107,   11.3879},{-88.968,-17.4377}}),Rectangle(rotation = 0, lineColor = {188,193,194}, fillColor = {188,193,194}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-100,-76.8683},{99.6441,-98.9324}}),Line(points = {{71.1744,7.82918},{71.1744,-76.5125}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-36.6548,   11.3879},{-88.968,   11.3879}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-89.6797,-17.7936},{-37.0107,-17.7936},{-37.0107,-47.331}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{-71.1744,29.1815},{-71.1744,16.0142},{-64.4128,22.7758},{-71.1744,29.1815}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-64.0569,22.7758},{-57.6512,29.1815},{-57.6512,16.3701},{-64.0569,22.7758}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{-64.0569,23.1317},{-64.0569,   11.7438}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 2.75),Polygon(points = {{35.9431,-40.5694},{52.3132,-40.5694},{44.484,-54.0925},{35.9431,-40.5694}}, rotation = 0, lineColor = {0,0,0}, fillColor = {88,88,88}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Line(points = {{51.6014,-40.5694},{71.1744,-40.5694}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-38.0783,-8.18505},{-24.911,-16.3701},{-16.726,-37.7224},{-16.3701,-48.0427},{-16.726,-47.6868}}, rotation = 0, color = {175,85,0}, pattern = LinePattern.Solid, thickness = 5.25),Line(points = {{-37.7224,-1.06762},{-26.3345,-5.33808},{-17.0819,-14.9466},{-8.54093,-31.3167},{-7.47331,-45.5516}}, rotation = 0, color = {175,85,0}, pattern = LinePattern.Solid, thickness = 5.25)}));
    end SludgeSink;
  partial model ControlledDivider2 "Icon for a controlled divider into 2 flows"
     
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[1, 1], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Rectangle(extent=[-45, 47; 47, -37], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[90, 40; 2, 10], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Rectangle(extent=[90, 0; 3, -30], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Ellipse(extent=[-40, 40; 40, -30], style(gradient=3, fillColor=8)), 
        Rectangle(extent=[-91, 20; 8, -14], style(gradient=2, fillColor=8)), 
        Ellipse(extent=[-38, 38; 38, -28], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[3, 37; 90, 13], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[5, -3; 90, -27], style(pattern=0, fillColor=48)), 
        Polygon(points=[-29, -3; 29, 18; 29, 15; -29, -6; -29, -3], style(color
              =0, fillColor=8)), 
        Rectangle(extent=[-2, 38; 2, -28], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[-3, -48; 3, -44], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[-10, -47; 10, -50], style(gradient=3, fillColor=9)), 
        Rectangle(extent=[-91, 16; -32, -10], style(pattern=0, fillColor=48)), 
        Polygon(points=[24, -21; 43, -21; 42, -19; 48, -22; 42, -25; 43, -23; 
              24, -23; 24, -21], style(pattern=0, fillColor=46)), 
        Polygon(points=[59, 23; 78, 23; 77, 25; 83, 22; 77, 19; 78, 21; 59, 21
              ; 59, 23], style(pattern=0, fillColor=46)), 
        Polygon(points=[51, -8; 70, -8; 69, -6; 75, -9; 69, -12; 70, -10; 51, -
              10; 51, -8], style(pattern=0, fillColor=46)), 
        Polygon(points=[-46, 11; -27, 11; -28, 13; -22, 10; -28, 7; -27, 9; -46
              , 9; -46, 11], style(pattern=0, fillColor=46)), 
        Polygon(points=[-81, 1; -62, 1; -63, 3; -57, 0; -63, -3; -62, -1; -81, 
              -1; -81, 1], style(pattern=0, fillColor=46)), 
        Polygon(points=[17, 32; 36, 32; 35, 34; 41, 31; 35, 28; 36, 30; 17, 30
              ; 17, 32], style(pattern=0, fillColor=46)), 
        Rectangle(extent=[-20, -37; 20, -44], style(gradient=1, fillColor=8)), 
        Text(extent=[-100, 90; 99, 51], string="%name"), 
        Documentation(info="Icon for a controlled divider into 2 flows")), 
      Window(
        x=0.4, 
        y=0.31, 
        width=0.6, 
        height=0.6), 
      Diagram(
        Rectangle(extent=[-45, 47; 47, -37], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[90, 40; 2, 10], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Rectangle(extent=[90, 0; 3, -30], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Ellipse(extent=[-40, 40; 40, -30], style(gradient=3, fillColor=8)), 
        Rectangle(extent=[-91, 20; 8, -14], style(gradient=2, fillColor=8)), 
        Ellipse(extent=[-38, 38; 38, -28], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[3, 37; 90, 13], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[5, -3; 90, -27], style(pattern=0, fillColor=48)), 
        Polygon(points=[-29, -3; 29, 18; 29, 15; -29, -6; -29, -3], style(color
              =0, fillColor=8)), 
        Rectangle(extent=[-2, 38; 2, -28], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[-3, -48; 3, -44], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[-10, -47; 10, -50], style(gradient=3, fillColor=9)), 
        Rectangle(extent=[-91, 16; -32, -10], style(pattern=0, fillColor=48)), 
        Polygon(points=[24, -21; 43, -21; 42, -19; 48, -22; 42, -25; 43, -23; 
              24, -23; 24, -21], style(pattern=0, fillColor=46)), 
        Polygon(points=[59, 23; 78, 23; 77, 25; 83, 22; 77, 19; 78, 21; 59, 21
              ; 59, 23], style(pattern=0, fillColor=46)), 
        Polygon(points=[51, -8; 70, -8; 69, -6; 75, -9; 69, -12; 70, -10; 51, -
              10; 51, -8], style(pattern=0, fillColor=46)), 
        Polygon(points=[-46, 11; -27, 11; -28, 13; -22, 10; -28, 7; -27, 9; -46
              , 9; -46, 11], style(pattern=0, fillColor=46)), 
        Polygon(points=[-81, 1; -62, 1; -63, 3; -57, 0; -63, -3; -62, -1; -81, 
              -1; -81, 1], style(pattern=0, fillColor=46)), 
        Polygon(points=[17, 32; 36, 32; 35, 34; 41, 31; 35, 28; 36, 30; 17, 30
              ; 17, 32], style(pattern=0, fillColor=46)), 
        Rectangle(extent=[-20, -37; 20, -44], style(gradient=1, fillColor=8)), 
        Text(extent=[-99, 90; 100, 50], string="%name")), 
      Documentation(info="Icon for a controlled divider into 2 flows"));
  end ControlledDivider2;
  partial model divider2 "Icon for a flow divider into 2 flows"
      annotation(Documentation(info = "Icon for a flow divider into 2 flows"), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014,35.2313},{56.9395,-25.9786}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961,25.2669},{40.5694,-19.573}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{18.5054,-2.13523},{79.3594,-12.4555}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{30.605,19.9288},{78.6477,9.25267}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.9217,13.1673},{-31.6726,-6.76157}}),Line(points = {{78.6477,19.9288},{31.6726,19.9288}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{41.637,8.8968},{78.6477,8.8968}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{41.9929,-1.77933},{79.0036,-1.77933}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{34.5196,-12.8114},{79.7153,-12.4556}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-61.2099,13.1672},{-31.6726,13.1672}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-61.2099,-6.76157},{-32.7402,-6.76157}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-55.8719,3.91459},{-38.0783,3.91459}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{45.5516,-7.11742},{66.9039,-7.11742}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.5053,-13.1673},{-4.14051e-06,-13.1673}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-19.2171,3.20285},{1.42349,3.20285}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.8612,19.9288},{0.355872,19.9288}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{6.40569,12.0996},{26.6904,12.0996}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{6.76157,-6.04982},{26.3345,-6.04982}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{44.1282,15.3025},{62.9893,15.3025}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),
	  	Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14)  }));
    end divider2;
  partial model mixer2 "Icon for a mixer of 2 flows" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[1, 1], 
        component=[20, 20]), 
      Documentation(info="Icon for a mixer of 2 flows"), 
      Icon(
        Text(extent=[-99, 98; 99, 50], string="%name"), 
        Rectangle(extent=[-46, 47; 45, -37], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[-2, 40; -90, 10], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Rectangle(extent=[-3, 0; -90, -30], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Ellipse(extent=[-40, 40; 40, -30], style(gradient=3, fillColor=8)), 
        Rectangle(extent=[10, 21; 90, -12], style(gradient=2, fillColor=8)), 
        Ellipse(extent=[-38, 38; 38, -28], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[-90, 37; -4, 13], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[-90, -3; -5, -27], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[31, 18; 90, -9], style(pattern=0, fillColor=48)), 
        Polygon(points=[-74, -19; -55, -19; -56, -17; -50, -20; -56, -23; -55, 
              -21; -74, -21; -74, -19], style(pattern=0, fillColor=46)), 
        Polygon(points=[-18, 24; 1, 24; 0, 26; 6, 23; 0, 20; 1, 22; -18, 22; -
              18, 24], style(pattern=0, fillColor=46)), 
        Polygon(points=[-28, -12; -9, -12; -10, -10; -4, -13; -10, -16; -9, -14
              ; -28, -14; -28, -12], style(pattern=0, fillColor=46)), 
        Polygon(points=[22, 10; 41, 10; 40, 12; 46, 9; 40, 6; 41, 8; 22, 8; 22
              , 10], style(pattern=0, fillColor=46)), 
        Polygon(points=[57, -2; 76, -2; 75, 0; 81, -3; 75, -6; 76, -4; 57, -4; 
              57, -2], style(pattern=0, fillColor=46)), 
        Polygon(points=[-74, 30; -55, 30; -56, 32; -50, 29; -56, 26; -55, 28; -
              74, 28; -74, 30], style(pattern=0, fillColor=46))), 
      Window(
        x=0.46, 
        y=0.09, 
        width=0.35, 
        height=0.49), 
      Diagram(
        Text(extent=[-98, 99; 99, 51], string="%name"), 
        Rectangle(extent=[-46, 47; 45, -37], style(gradient=1, fillColor=10)), 
        Rectangle(extent=[-2, 40; -90, 10], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Rectangle(extent=[-3, 0; -90, -30], style(
            pattern=0, 
            gradient=2, 
            fillColor=8)), 
        Ellipse(extent=[-40, 40; 40, -30], style(gradient=3, fillColor=8)), 
        Rectangle(extent=[10, 21; 90, -12], style(gradient=2, fillColor=8)), 
        Ellipse(extent=[-38, 38; 38, -28], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[-90, 37; -4, 13], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[-90, -3; -5, -27], style(pattern=0, fillColor=48)), 
        Rectangle(extent=[31, 18; 90, -9], style(pattern=0, fillColor=48)), 
        Polygon(points=[-74, -19; -55, -19; -56, -17; -50, -20; -56, -23; -55, 
              -21; -74, -21; -74, -19], style(pattern=0, fillColor=46)), 
        Polygon(points=[-18, 24; 1, 24; 0, 26; 6, 23; 0, 20; 1, 22; -18, 22; -
              18, 24], style(pattern=0, fillColor=46)), 
        Polygon(points=[-28, -12; -9, -12; -10, -10; -4, -13; -10, -16; -9, -14
              ; -28, -14; -28, -12], style(pattern=0, fillColor=46)), 
        Polygon(points=[22, 10; 41, 10; 40, 12; 46, 9; 40, 6; 41, 8; 22, 8; 22
              , 10], style(pattern=0, fillColor=46)), 
        Polygon(points=[57, -2; 76, -2; 75, 0; 81, -3; 75, -6; 76, -4; 57, -4; 
              57, -2], style(pattern=0, fillColor=46)), 
        Polygon(points=[-74, 30; -55, 30; -56, 32; -50, 29; -56, 26; -55, 28; -
              74, 28; -74, 30], style(pattern=0, fillColor=46))));
  end mixer2;
    partial model mixer3 "Icon for a mixer of 3 flows"
      annotation(Documentation(info = "Icon for a mixer of 3 flows"), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,0}, fillColor = {170,170,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.VerticalCylinder, lineThickness = 0.25, extent = {{-51.6014,35.2313},{56.9395,-25.9786}}),Ellipse(rotation = 0, lineColor = {0,0,0}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-33.0961,25.2669},{40.5694,-19.573}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.21,27.758},{0.355872,17.7936}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-61.5658,-   11.3879},{-0.711748,-21.7082}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-60.4982,9.25267},{-12.4555,-1.42349}}),Rectangle(rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{37.7224,13.1673},{67.9715,-6.76157}}),Line(points = {{0.711744,27.758},{-61.5658,27.758}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-61.21,17.7936},{-27.758,17.7936}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-60.1423,9.60854},{-33.8078,9.60854}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-60.4982,-1.42349},{-34.8754,-1.42349}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-61.5658,-   11.032},{-28.8256,-   11.032}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-61.9217,-22.0641},{-0.711744,-22.0641}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{38.4342,13.5231},{67.9715,13.5231}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{39.8577,-6.76157},{67.9715,-6.76157}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-54.8043,23.1317},{-32.3843,23.1317}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-55.8719,3.91459},{-38.0783,3.91459}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-55.1601,-17.4377},{-33.8078,-17.4377}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.5053,-13.1673},{-4.14051e-06,-13.1673}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-19.2171,3.20285},{1.42349,3.20285}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-18.8612,19.9288},{0.355872,19.9288}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{6.40569,12.0996},{26.6904,12.0996}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{6.76157,-6.04982},{26.3345,-6.04982}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{38.4342,3.91459},{57.2954,3.91459}}, rotation = 0, color = {255,170,0}, pattern = LinePattern.Solid, thickness = 0.25),
	Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14) }));
    end mixer3;
  partial model sensor_COD "Icon for a chemical oxygen demand sensor" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-100, 100; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="COD"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))), 
      Documentation(info="Icon for a chemical oxygen demand sensor "), 
      Diagram(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-100, 100; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="COD"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))));
  end sensor_COD;
  partial model sensor_NH "Icon for an ammonium nitrogen sensor" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-98, 98; 98, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="NH"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))), 
      Documentation(info="Icon for an ammonium nitrogen sensor "), 
      Diagram(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-100, 100; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="NH"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))));
  end sensor_NH;
partial model sensor_O2 "Icon for an oxygen sensor"
      annotation(Documentation(info = "Icon for a flow sensor"), Icon(graphics = {
	  Ellipse(rotation = 0, lineColor = {255,255,255}, fillColor = {209,209,157}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-41.2811,51.6014},{34.1637,-27.758}}),
	  Line(points = {{-43.3332,8.54093},{82.9181,8.54093},{82.9181,8.54093}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),
	  Line(points = {{-3.91459,53.7367},{-3.91459,40.2135}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),
	  Line(points = {{-34.5196,37.7224},{-26.6904,30.2491}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),
	  Line(points = {{28.4698,37.0107},{-4.27046,8.54093}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),
	  Polygon(points = {{20.9964,30.605},{18.5053,20.6406},{10.3203,28.1139},{20.9964,30.605}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),
	  Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-10.3203,-0.355872},{1.77936,-11.7438}}, textString = "O2", fontSize = 10),
	  Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),
	  Line(points = {{-4.27046,-29.5374},{-4.27046,-63.7011},{-4.27046,-63.7011}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}));
    end sensor_O2;
    partial model sensor_NO "Icon for a nitrate nitrogen sensor"
      annotation(Documentation(info = "Icon for a flow sensor"), Icon(graphics = {Ellipse(rotation = 0, lineColor = {255,255,255}, fillColor = {209,209,157}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-41.2811,51.6014},{34.1637,-27.758}}),Line(points = {{-43.3332,8.059},{82.9181,8.54093},{82.9181,8.54093}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-3.91459,53.7367},{-3.91459,40.2135}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-34.5196,37.7224},{-26.6904,30.2491}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{28.4698,37.0107},{-4.27046,8.54093}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{20.9964,30.605},{18.5053,20.6406},{10.3203,28.1139},{20.9964,30.605}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-10.3203,-0.355872},{1.77936,-11.7438}}, textString = "NO", fontSize = 10),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),Line(points = {{-4.27046,-29.5374},{-4.27046,-63.7011},{-4.27046,-63.7011}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}));
    end sensor_NO;
  partial model sensor_PO "Icon for a phosphate sensor" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-98, 98; 98, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="PO"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))), 
      Documentation(info="Icon for a phosphate sensor "), 
      Diagram(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-98, 98; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="PO"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))));
  end sensor_PO;
   partial model sensor_Q "Icon for a flow sensor"
      annotation(Documentation(info = "Icon for a flow sensor"), Icon(graphics = {Ellipse(rotation = 0, lineColor = {255,255,255}, fillColor = {209,209,157}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-41.2811,51.6014},{34.1637,-27.758}}),Line(points = {{-87.1886,8.54093},{82.9181,8.54093},{82.9181,8.54093}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-3.91459,53.7367},{-3.91459,40.2135}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{-34.5196,37.7224},{-26.6904,30.2491}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Line(points = {{28.4698,37.0107},{-4.27046,8.54093}}, rotation = 0, color = {0,0,0}, pattern = LinePattern.Solid, thickness = 0.25),Polygon(points = {{20.9964,30.605},{18.5053,20.6406},{10.3203,28.1139},{20.9964,30.605}}, rotation = 0, lineColor = {0,0,0}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),
	  Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-10.3203,-0.355872},{1.77936,-   11.7438}}, textString = "Q", fontSize = 10),
	  	Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-40.5694,86.121},{38.0783,67.9715}}, textString = "%name", fontSize = 14),	 
	  Line(points = {{-4.27046,-29.5374},{-4.27046,-63.7011},{-4.27046,-63.7011}}, rotation = 0, color = {0,0,255}, pattern = LinePattern.Solid, thickness = 0.25)}));
    end sensor_Q;
  partial model sensor_TKN 
    "Icon for a Kjeldal nitrogen and total nitrogen sensor" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-98, 100; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="TKN"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))), 
      Documentation(info=
            "Icon for a Kjeldal nitrogen and total nitrogen sensor "), 
      Diagram(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-98, 98; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="TKN"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))));
  end sensor_TKN;
  partial model sensor_TP "Icon for a total phosphorus sensor" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-100, 100; 98, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="TP"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))), 
      Documentation(info="Icon for a total phosphorus sensor "), 
      Diagram(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-98, 100; 98, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="TP"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))));
  end sensor_TP;
  partial model sensor_TSS "Icon for a total suspended solids sensor" 
    annotation (
      Coordsys(
        extent=[-100, -100; 100, 100], 
        grid=[2, 2], 
        component=[20, 20]), 
      Window(
        x=0.45, 
        y=0.01, 
        width=0.35, 
        height=0.49), 
      Icon(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-100, 100; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="TSS"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))), 
      Documentation(info="Icon for a total suspended solids sensor "), 
      Diagram(
        Ellipse(extent=[-50, 50; 50, -50], style(
            color=0, 
            thickness=2, 
            fillColor=52)), 
        Text(extent=[-98, 100; 100, 60], string="%name"), 
        Line(points=[0, 50; 0, 38], style(color=0, thickness=2)), 
        Line(points=[-50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[50, 0; 38, 0], style(color=0, thickness=2)), 
        Line(points=[-36, 34; -28, 26], style(color=0, thickness=2)), 
        Line(points=[34, 36; 26, 28], style(color=0, thickness=2)), 
        Line(points=[0, 0; 26, 28], style(color=0, thickness=2)), 
        Polygon(points=[30, 32; 10, 24; 24, 12; 30, 32], style(color=0, 
              fillColor=0)), 
        Text(extent=[-36, -10; 36, -32], string="TSS"), 
        Line(points=[0, -50; 0, -90], style(color=0, thickness=2)), 
        Line(points=[50, 0; 88, 0], style(color=0))));
  end sensor_TSS;
end Icons;
