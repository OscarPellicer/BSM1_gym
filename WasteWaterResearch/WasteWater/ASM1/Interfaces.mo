within WasteWater.ASM1 ;
package Interfaces 
  "Connectors and partial ASM1 model for Wastewater Treatment Modelling"   
  extends Modelica.Icons.Library;
  
  connector WWFlowAsm1in "Inflow connector of ASM1 components"
      package WWU = WasteWater.WasteWaterUnits;
      flow WWU.VolumeFlowRate Q;
      input WWU.MassConcentration Si;
      input WWU.MassConcentration Ss;
      input WWU.MassConcentration Xi;
      input WWU.MassConcentration Xs;
      input WWU.MassConcentration Xbh;
      input WWU.MassConcentration Xba;
      input WWU.MassConcentration Xp;
      input WWU.MassConcentration So;
      input WWU.MassConcentration Sno;
      input WWU.MassConcentration Snh;
      input WWU.MassConcentration Snd;
      input WWU.MassConcentration Xnd;
      WWU.Alkalinity Salk;
      annotation(Documentation(info = "This package provides special convention for units and types for use with the activated sludge models."), 
	  Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.8217,95.2646},{93.5933,-92.4791}}),Text(rotation = 0, lineColor = {255,255,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.3649,88.5794},{87.4652,-83.5655}}, textString = "In", fontSize = 48)}), 
	  Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.8217,95.2646},{93.5933,-92.4791}}),Text(rotation = 0, lineColor = {255,255,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.3649,88.5794},{87.4652,-83.5655}}, textString = "In", fontSize = 48)}));
      annotation(Documentation(info = "The connector consists of one flow variable, 12 input variables (ASM1 concentrations), and 1 potential variable."));
    end WWFlowAsm1in;
  connector WWFlowAsm1out "Outflow connector of ASM1 components"
      package WWU = WasteWater.WasteWaterUnits;
      flow WWU.VolumeFlowRate Q;
      output WWU.MassConcentration Si;
      output WWU.MassConcentration Ss;
      output WWU.MassConcentration Xi;
      output WWU.MassConcentration Xs;
      output WWU.MassConcentration Xbh;
      output WWU.MassConcentration Xba;
      output WWU.MassConcentration Xp;
      output WWU.MassConcentration So;
      output WWU.MassConcentration Sno;
      output WWU.MassConcentration Snh;
      output WWU.MassConcentration Snd;
      output WWU.MassConcentration Xnd;
      WWU.Alkalinity Salk;
      annotation(Documentation(info = "This package provides special convention for units and types
for use with the activated sludge models."), 
Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {1,1}), graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-95.8217,93.5933},{96.3788,-76.8802}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.922,88.0223},{88.5794,-63.5097}}, textString = "Out", fontSize = 48)}), 
Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}, grid = {1,1}), graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-95.8217,93.5933},{96.3788,-76.8802}}),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-91.922,88.0223},{88.5794,-63.5097}}, textString = "Out", fontSize = 48)}));
      annotation(Documentation(info = "The connector consists of one flow variable, 12 output variables (ASM1 concentrations), and 1 potential variable."));
    end WWFlowAsm1out;
 connector AirFlow "Airflow connector"
      package WWU = WasteWater.WasteWaterUnits;
      flow WWU.VolumeFlowRate Q_air;
	  WWU.VolumeFlowRate Q_b "dummy variable required to compensate flow variables in Modelica V.3";
      annotation(Documentation(info = "The Airflow connector consits of a flow variable describing the exchange of
air between blower and nitrification tank."), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-93.5943,94.6619},{96.4413,-95.0178}}),Text(rotation = 0, lineColor = {255,255,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-81.4946,78.6477},{86.8327,-86.8327}}, textString = "Air")}), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-93.5943,94.6619},{96.4413,-95.0178}}),Text(rotation = 0, lineColor = {255,255,255}, fillColor = {255,255,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-83.9858,82.5623},{86.8327,-86.8327}}, textString = "Air")}));
    end AirFlow;
	
  partial model stoichiometry "ASM1 stoichiometric coefficients"
      // Stoichiometric parameters based on the original ASM1 publication//
      parameter Real Y_h = 0.67 "Heterotrophic Yield [g Xbh COD formed/(g COD utilised)]";
      parameter Real Y_a = 0.24 "Autotrophic Yield [g Xba COD formed/(g N utilised)]";
      parameter Real f_p = 0.08 "Fraction of biomass to particulate products [-]";
      parameter Real i_xb = 0.08 "Fraction nitrogen in biomass [g N/(g COD)]";
      parameter Real i_xp = 0.06 "Fraction nitrogen in particulate products [g N/(g COD)]";
      annotation(Documentation(info = "This is a partial model providing the stoichiometric coefficients of the ASM1 model."));
    end stoichiometry;
 partial model ASM1base "Base class of WWTP modelling by ASM1"
      extends Interfaces.stoichiometry;
      package WWU = WasteWater.WasteWaterUnits;
      // parameters based on the original ASM1 publication based on 15 deg C    
      Real mu_h "Maximum heterotrophic growth rate f(T) [day^-1]";
      Real b_h "Heterotrophic decay rate f(T) [day^-1]";
      Real mu_a "Maximum autotrophic growth rate f(T) [day^-1]";
      //Real K_nh "Half-saturation (auto. growth) f(T) [g NH-N/m3]";
      Real b_a "Autotrophic decay rate f(T) [day^-1]";
      Real k_a "Ammonification rate f(T) [m3/(g COD day)]";
      Real k_h "Maximum specific hydrolysis rate f(T) [g Xs/(g Xbh COD day)]";
      Real K_x "Half-saturation (hydrolysis) f(T) [g Xs/(g Xbh COD)]";
      parameter Real mu_h_T = 4.0 "Maximum heterotrophic growth rate at T=15 deg C [day^-1]";
      parameter Real b_h_T = 0.3 "Heterotrophic decay rate at T=15 deg C [day^-1]";
      parameter Real mu_a_T = 0.5 "Maximum autotrophic growth rate at T=15 deg C[day^-1]";
      parameter Real b_a_T = 0.05 "Autotrophic decay rate at T=15 deg C [day^-1]";
      parameter Real k_a_T = 0.05 "Ammonification rate at T=15 deg C [m3/(g COD day)]";
      parameter Real k_h_T = 3.0 "Maximum specific hydrolysis rate at T=15 deg C [g Xs/(g Xbh COD day)]";
      parameter Real K_x_T = 0.1 "Half-saturation (hydrolysis) at T=15 deg C [g Xs/(g Xbh COD)]";
      parameter Real K_nh = 1.0 "Half-saturation (auto. growth) [g NH-N/m3]";
      parameter Real K_s = 10.0 "Half-saturation (hetero. growth) [g COD/m3]";
      parameter Real K_oh = 0.2 "Half-saturation (hetero. oxygen) [g O/m3]";
      parameter Real K_no = 0.5 "Half-saturation (nitrate) [g NO-N/m3]";
      parameter Real K_oa = 0.4 "Half-saturation (auto. oxygen) [g O/m3]";
      parameter Real ny_g = 0.8 "Anoxic growth rate correction factor [-]";
      parameter Real ny_h = 0.8 "Anoxic hydrolysis rate correction factor [-]";
      WWU.MassConcentration Si "Soluble inert organic matter";
      WWU.MassConcentration Ss "Readily biodegradable substrate";
      WWU.MassConcentration Xi "Particulate inert organic matter";
      WWU.MassConcentration Xs "Slowly biodegradable substrate";
      WWU.MassConcentration Xbh "Active heterotrophic biomass";
      WWU.MassConcentration Xba "Active autotrophic biomass";
      WWU.MassConcentration Xp "Particulate products from biomass decay";
      WWU.MassConcentration So "Dissolved oxygen";
      WWU.MassConcentration Sno "Nitrate and nitrite nitrogen";
      WWU.MassConcentration Snh "Ammonium nitrogen";
      WWU.MassConcentration Snd "Soluble biodegradable organic nitrogen";
      WWU.MassConcentration Xnd "Particulate biodegradable organic nitrogen";
      WWU.Alkalinity Salk "Alkalinity";
      Real p1;
      Real p2;
      Real p3;
      Real p4;
      Real p5;
      Real p6;
      Real p7;
      Real p8;
      Real r1;
      Real r2;
      Real r3;
      Real r4;
      Real r5;
      Real r6;
      Real r7;
      Real r8;
      Real r9;
      Real r10;
      Real r11;
      Real r12;
      Real r13;
      Real inputSi;
      Real inputSs;
      Real inputXi;
      Real inputXs;
      Real inputXbh;
      Real inputXba;
      Real inputXp;
      Real inputSo;
      Real inputSno;
      Real inputSnh;
      Real inputSnd;
      Real inputXnd;
      Real inputSalk;
      Real aeration;
      //WasteWater.ASM1.Interfaces.WWFlowAsm1in In;
      //WasteWater.ASM1.Interfaces.WWFlowAsm1out Out;
      //WasteWater.ASM1.Interfaces.WWFlowAsm1out MeasurePort;
      Modelica.Blocks.Interfaces.RealInput T;
      annotation(Documentation(info = "This partial model provides connectors and equations that are needed in the biological 
components (nitrification and denitrification tank) for ASM1 wastewater treatment plant models.
Parameters are coded according the ASM1 [1,2] standard distribution.
Changes to this parameters are subject to the modeller.

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
disclaimer in the documentation of package Modelica in file Modelica/package.mo.

Copyright (C) 2000 - 2002, Gerald Reichl


"));
    equation
      mu_h = mu_h_T * exp(0.069 * (T - 15));
      b_h = b_h_T * exp(0.069 * (T - 15));
      mu_a = mu_a_T * exp(0.098 * (T - 15));
      b_a = b_a_T * exp(0.08 * (T - 15));
      k_a = k_a_T * exp(0.069 * (T - 15));
      k_h = k_h_T * exp(0.11 * (T - 15));
      K_x = K_x_T * exp(0.11 * (T - 15));
      p1 = ((mu_h * Ss) / (K_s + Ss) * So) / (K_oh + So) * Xbh;
      p2 = (((mu_h * Ss) / (K_s + Ss) * K_oh) / (K_oh + So) * Sno) / (K_no + Sno) * ny_g * Xbh;
      p3 = ((mu_a * Snh) / (K_nh + Snh) * So) / (K_oa + So) * Xba;
      p4 = b_h * Xbh;
      p5 = b_a * Xba;
      p6 = k_a * Snd * Xbh;
      p7 = (k_h * Xs) / Xbh / (K_x + Xs / Xbh) * (So / (K_oh + So) + ((ny_h * K_oh) / (K_oh + So) * Sno) / (K_no + Sno)) * Xbh;
      p8 = (p7 * Xnd) / Xs;
      r1 = 0;
      r2 = (-p1 - p2) / Y_h + p7;
      r3 = 0;
      r4 = (1 - f_p) * (p4 + p5) - p7;
      r5 = p1 + p2 - p4;
      r6 = p3 - p5;
      r7 = f_p * (p4 + p5);
      r8 = -(1 - Y_h) / Y_h * p1 - (4.57 - Y_a) / Y_a * p3;
      r9 = -(1 - Y_h) / (2.86 * Y_h) * p2 + p3 / Y_a;
      r10 = -i_xb * (p1 + p2) - (i_xb + 1 / Y_a) * p3 + p6;
      r11 = -p6 + p8;
      r12 = (i_xb - f_p * i_xp) * (p4 + p5) - p8;
      r13 = -i_xb / 14 * p1 + ((1 - Y_h) / (14 * 2.86 * Y_h) - i_xb / 14) * p2 - (i_xb / 14 + 1 / (7 * Y_a)) * p3 + p6 / 14;
      der(Si) = inputSi + r1;
      der(Ss) = inputSs + r2;
      der(Xi) = inputXi + r3;
      der(Xs) = inputXs + r4;
      der(Xbh) = inputXbh + r5;
      der(Xba) = inputXba + r6;
      der(Xp) = inputXp + r7;
      der(So) = inputSo + r8 + aeration;
      der(Sno) = inputSno + r9;
      der(Snh) = inputSnh + r10;
      der(Snd) = inputSnd + r11;
      der(Xnd) = inputXnd + r12;
      der(Salk) = inputSalk + r13;
      Out.Q + In.Q = 0;
      Out.Si = Si;
      Out.Ss = Ss;
      Out.Xi = Xi;
      Out.Xs = Xs;
      Out.Xbh = Xbh;
      Out.Xba = Xba;
      Out.Xp = Xp;
      Out.So = So;
      Out.Sno = Sno;
      Out.Snh = Snh;
      Out.Snd = Snd;
      Out.Xnd = Xnd;
      Out.Salk = Salk;
      MeasurePort.Si = Si;
      MeasurePort.Ss = Ss;
      MeasurePort.Xi = Xi;
      MeasurePort.Xs = Xs;
      MeasurePort.Xbh = Xbh;
      MeasurePort.Xba = Xba;
      MeasurePort.Xp = Xp;
      MeasurePort.So = So;
      MeasurePort.Sno = Sno;
      MeasurePort.Snh = Snh;
      MeasurePort.Snd = Snd;
      MeasurePort.Xnd = Xnd;
      MeasurePort.Salk = Salk;
    end ASM1base;
  annotation (
    Coordsys(
      extent=[0, 0; 442, 386], 
      grid=[1, 1], 
      component=[20, 20]), 
    Window(
      x=0.45, 
      y=0.01, 
      width=0.44, 
      height=0.65, 
      library=1, 
      autolayout=1), 
    Documentation(info="This package contains connectors and interfaces (partial models) for
wastewater treatment components based on the Acticated Sludge Model No.1 (ASM1).

Main Author:
   Gerald Reichl
   Technische Universitaet Ilmenau
   Faculty of Informatics and Automation
   Department Dynamics and Simulation of ecological Systems
   P.O. Box 10 05 65
   98684 Ilmenau
   Germany

This package is free software; it can be redistributed and/or modified under the terms of the Modelica license, see the license conditions and the accompanying
disclaimer in the documentation of package Modelica in file \"Modelica/package.mo\".

Copyright (C) 2000 - 2001, Gerald Reichl


Modelica Version 3.3 adapted by:
   Carmen Prieto Estravid FYP
   led by Ph.D. Felix Hernandez del Olmo
   Faculty of Informatics
   National Distance University (UNED)
   Madrid
   Spain

Copyright (C) 2013

"));
end Interfaces;
