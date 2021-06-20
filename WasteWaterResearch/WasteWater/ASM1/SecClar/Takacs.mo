within WasteWater.ASM1.SecClar ;
package Takacs "Secondary settling tank modelling by Takacs" 
  extends Modelica.Icons.Library;
  
  annotation (
    Documentation(info="This package contains classes (layer models) to built ASM1 secondary clarifier models, an Interfaces sub-library
and provides an ASM1 10-layer secondary clarifier model all bases on Takacs [1] 
double exponential sedimentation velocity function.

A secondary clarifier layer model needs at least a top_layer, a feed_layer and a bottom_layer
and may have several upper_layer in between above the feed_layer and several lower_layer in
between below the feed_layer.

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

[1] I. Takacs and G.G. Patry and D. Nolasco: A dynamic model of the clarification-thickening
    process. Water Research. 25 (1991) 10, pp 1263-1271.

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
  package Interfaces 
    "Connectors and partial models for Secondary Clarifier Model by Takacs" 
    
    extends Modelica.Icons.Library;
    
    connector UpperLayerPin "Connector above influent layer" 
      
      import WWU = WasteWater.WasteWaterUnits;
      
      // effluent flow
      flow WWU.VolumeFlowRate Qe;
      // sedimentation flux
      flow WWU.SedimentationFlux SedFlux;
      
      
        // total sludge concentration and sink velocity in (m-1)-th layer (dn=down)
      input WWU.MassConcentration X_dn;
      WWU.SedimentationVelocity vS_dn;
      
      // soluble components
      input WWU.MassConcentration Si;
      input WWU.MassConcentration Ss;
      input WWU.MassConcentration So;
      input WWU.MassConcentration Sno;
      input WWU.MassConcentration Snh;
      input WWU.MassConcentration Snd;
      WWU.Alkalinity Salk;
       annotation(Documentation(info = "Connector for ASM1 information and mass exchange between layers above the influent layer (feed_layer)."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}));
    end UpperLayerPin;
    connector LowerLayerPin "Connector below influent layer" 
      
      import WWU = WasteWater.WasteWaterUnits;
      
      // return and waste sludge flow Qr, Qw
      flow WWU.VolumeFlowRate Qr;
      flow WWU.VolumeFlowRate Qw;
      
      // sedimentation flux
      flow WWU.SedimentationFlux SedFlux;
      
      // total sludge concentration in m-th layer
      WWU.MassConcentration X;
      
      
        // total sludge concentration and sink velocity in(m-1)-th layer (dn=down)
      output WWU.MassConcentration X_dn;
      WWU.SedimentationVelocity vS_dn;
      
      // soluble components
      input WWU.MassConcentration Si;
      input WWU.MassConcentration Ss;
      input WWU.MassConcentration So;
      input WWU.MassConcentration Sno;
      input WWU.MassConcentration Snh;
      input WWU.MassConcentration Snd;
      WWU.Alkalinity Salk;
       annotation(Documentation(info = "Connector for ASM1 information and mass exchange between layers below the influent layer (feed_layer)."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}));
    end LowerLayerPin;
	
	connector UpperLayerPinIn "In connector above influent layer" 
      
      import WWU = WasteWater.WasteWaterUnits;
      
      // effluent flow
      flow WWU.VolumeFlowRate Qe;
      // sedimentation flux
      flow WWU.SedimentationFlux SedFlux;
      
      
        // total sludge concentration and sink velocity in (m-1)-th layer (dn=down)
      input WWU.MassConcentration X_dn;
      WWU.SedimentationVelocity vS_dn;
      
      // soluble components
      input WWU.MassConcentration Si;
      input WWU.MassConcentration Ss;
      input WWU.MassConcentration So;
      input WWU.MassConcentration Sno;
      input WWU.MassConcentration Snh;
      input WWU.MassConcentration Snd;
      WWU.Alkalinity Salk;
       annotation(Documentation(info = "In connector for ASM1 information and mass exchange between layers above the influent layer (feed_layer)."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}));
    end UpperLayerPinIn;
	
	connector UpperLayerPinOut "Out connector above influent layer" 
      
      import WWU = WasteWater.WasteWaterUnits;
      
      // effluent flow
      flow WWU.VolumeFlowRate Qe;
      // sedimentation flux
      flow WWU.SedimentationFlux SedFlux;
      
      
        // total sludge concentration and sink velocity in (m-1)-th layer (dn=down)
      output WWU.MassConcentration X_dn;
      WWU.SedimentationVelocity vS_dn;
      
      // soluble components
      output WWU.MassConcentration Si;
      output WWU.MassConcentration Ss;
      output WWU.MassConcentration So;
      output WWU.MassConcentration Sno;
      output WWU.MassConcentration Snh;
      output WWU.MassConcentration Snd;
      WWU.Alkalinity Salk;
       annotation(Documentation(info = "Out connector for ASM1 information and mass exchange between layers above the influent layer (feed_layer)."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}));
    end UpperLayerPinOut;
	
	connector LowerLayerPinIn "In connector below influent layer" 
      
      import WWU = WasteWater.WasteWaterUnits;
      
      // return and waste sludge flow Qr, Qw
      flow WWU.VolumeFlowRate Qr;
      flow WWU.VolumeFlowRate Qw;
      
      // sedimentation flux
      flow WWU.SedimentationFlux SedFlux;
      
      // total sludge concentration in m-th layer
      WWU.MassConcentration X;
      
      
        // total sludge concentration and sink velocity in(m-1)-th layer (dn=down)
      input WWU.MassConcentration X_dn;
      WWU.SedimentationVelocity vS_dn;
      
      // soluble components
      input WWU.MassConcentration Si;
      input WWU.MassConcentration Ss;
      input WWU.MassConcentration So;
      input WWU.MassConcentration Sno;
      input WWU.MassConcentration Snh;
      input WWU.MassConcentration Snd;
      WWU.Alkalinity Salk;
       annotation(Documentation(info = "In connector for ASM1 information and mass exchange between layers below the influent layer (feed_layer)."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}));
    end LowerLayerPinIn;
	
	connector LowerLayerPinOut "Out connector below influent layer" 
      
      import WWU = WasteWater.WasteWaterUnits;
      
      // return and waste sludge flow Qr, Qw
      flow WWU.VolumeFlowRate Qr;
      flow WWU.VolumeFlowRate Qw;
      
      // sedimentation flux
      flow WWU.SedimentationFlux SedFlux;
      
      // total sludge concentration in m-th layer
      WWU.MassConcentration X;
      
      
        // total sludge concentration and sink velocity in(m-1)-th layer (dn=down)
      output WWU.MassConcentration X_dn;
      WWU.SedimentationVelocity vS_dn;
      
      // soluble components
      output WWU.MassConcentration Si;
      output WWU.MassConcentration Ss;
      output WWU.MassConcentration So;
      output WWU.MassConcentration Sno;
      output WWU.MassConcentration Snh;
      output WWU.MassConcentration Snd;
      WWU.Alkalinity Salk;
       annotation(Documentation(info = "Out connector for ASM1 information and mass exchange between layers below the influent layer (feed_layer)."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25, extent = {{-95.7295,96.0854},{98.2206,-97.153}})}));
    end LowerLayerPinOut;
	
    partial model SCParam "partial model providing clarifier parameters" 
      import SI = Modelica.SIunits;
      parameter SI.Length zm;
      parameter SI.Area Asc;
      
      annotation (
        Coordsys(
          extent=[-100, -100; 100, 100], 
          grid=[2, 2], 
          component=[20, 20]), 
        Window(
          x=0.06, 
          y=0.05, 
          width=0.35, 
          height=0.49), 
        Documentation(info="partial model providing clarifier parameters"));
    end SCParam;
    partial model SCVar "partial models providing variables" 
      
      import WWU = WasteWater.WasteWaterUnits;
      
      WWU.MassConcentration X "total sludge concentration in m-th layer";
      WWU.MassConcentration Xf "total sludge concentration in clarifier feed";
      WWU.SedimentationVelocity vS "sink velocity in m-th layer";
      WWU.SedimentationFlux Jsm "sedimentation flux m-th layer";
      
      WWU.MassConcentration Si "Soluble inert organic matter";
      WWU.MassConcentration Ss "Readily biodegradable substrate";
      WWU.MassConcentration So "Dissolved oxygen";
      WWU.MassConcentration Sno "Nitrate and nitrite nitrogen";
      WWU.MassConcentration Snh "Ammonium nitrogen";
      WWU.MassConcentration Snd "Soluble biodegradable organic nitrogen";
      WWU.Alkalinity Salk "Alkalinity";
      annotation (
        Coordsys(
          extent=[-100, -100; 100, 100], 
          grid=[2, 2], 
          component=[20, 20]), 
        Window(
          x=0.07, 
          y=0.04, 
          width=0.35, 
          height=0.49), 
        Documentation(info="partial models providing ASM1 variables"));
    end SCVar;
    partial model ratios "partial model for ratios of solid components" 
      
      // ratios of solid components
      Real rXi;
      Real rXs;
      Real rXbh;
      Real rXba;
      Real rXp;
      Real rXnd;
      annotation (
        Coordsys(
          extent=[-100, -100; 100, 100], 
          grid=[2, 2], 
          component=[20, 20]), 
        Window(
          x=0.02, 
          y=0.03, 
          width=0.35, 
          height=0.49), 
        Documentation(info="partial model for ASM1 ratios of solid components")
        );
    end ratios;
    function vSfun "Sedimentation velocity function" 
      
      // total sludge concentration in m-th layer in g/m3 or mg/l
      input Real X;
      // total sludge concentration in clarifier feed in g/m3 or mg/l
      input Real Xf;
      // sink velocity in m/d
      output Real vS;
      
      protected parameter Real v0slash=250.0 "max. settling velocity in m/d";
      protected parameter Real v0=474.0 "max. Vesilind settl. veloc. in m/d";
      protected parameter Real rh=0.000576 "hindered zone settl. param. in m3/(g SS)";
      protected parameter Real rp=0.00286 "flocculant zone settl. param. in m3/(g SS)";
      protected parameter Real fns=0.00228 "non-settleable fraction in -";
      annotation (
        Coordsys(
          extent=[-100, -100; 100, 100], 
          grid=[2, 2], 
          component=[20, 20]), 
        Window(
          x=0.01, 
          y=0.07, 
          width=0.35, 
          height=0.49), 
        Documentation(info=
              "Takacs double-exponential sedimentation velocity function."));
    algorithm 
      
      // computation of sink velocity
      vS := max(0.0, min(v0slash, v0*(exp(-rh*(X - fns*Xf)) - exp(-rp*(X - fns*
        Xf)))));
      
    end vSfun;
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
the ASM1 secondary clarifier model based on Takacs [1] (double-exponential settling velocity).

References:

[1] I. Takacs and G.G. Patry and D. Nolasco: A dynamic model of the clarification-thickening
    process. Water Research. 25 (1991) 10, pp 1263-1271.

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
  model SecClarModTakacs "Secondary Clarifier ASM1 Model based on Takacs" 
    
    extends WasteWater.Icons.SecClar;
    extends ASM1.SecClar.Takacs.Interfaces.ratios;
    import SCP = ASM1.SecClar.Takacs;
    import SI = Modelica.SIunits;
    import WI = WasteWater.ASM1.Interfaces;
    import WWU = WasteWater.WasteWaterUnits;
    
    parameter SI.Length hsc=4.0 "height of secondary clarifier";
    parameter Integer n=10 "number of layers of SC model";
    parameter SI.Length zm=hsc/(1.0*n) 
      "height of m-th secondary clarifier layer";
    parameter SI.Area Asc=1500.0 "area of secondary clarifier";
    parameter WWU.MassConcentration Xt=3000.0 "threshold for X";
    
    // total sludge concentration in clarifier feed
    WWU.MassConcentration Xf;
    
    WI.WWFlowAsm1in Feed annotation (extent=[-110, 4; -90, 24]);
    WI.WWFlowAsm1out Effluent annotation (extent=[92, 47; 112, 67]);
    WI.WWFlowAsm1out Return annotation (extent=[-40, -106; -20, -86]);
    WI.WWFlowAsm1out Waste annotation (extent=[20, -106; 40, -86]);
    
    // layers 1 to 10
    SecClar.Takacs.bottom_layer S1(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf, 
      rXs=rXs, 
      rXbh=rXbh, 
      rXba=rXba, 
      rXp=rXp, 
      rXi=rXi, 
      rXnd=rXnd) annotation (extent=[-35, -93; 35, -78]);
    SecClar.Takacs.lower_layer S2(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf) annotation (extent=[-35, -74; 35, -59]);
    SecClar.Takacs.lower_layer S3(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf) annotation (extent=[-35, -55; 35, -40]);
    SecClar.Takacs.lower_layer S4(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf) annotation (extent=[-35, -36; 35, -21]);
    SecClar.Takacs.lower_layer S5(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf) annotation (extent=[-35, -17; 35, -2]);
    SecClar.Takacs.feed_layer S6(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf) annotation (extent=[-35, 2; 35, 17]);
    SecClar.Takacs.upper_layer S7(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf, 
      Xt=Xt) annotation (extent=[-35, 21; 35, 36]);
    SecClar.Takacs.upper_layer S8(
      zm=zm, 
      Asc=Asc, 
      Xt=Xt, 
      Xf=Xf) annotation (extent=[-35, 40; 35, 55]);
    SecClar.Takacs.upper_layer S9(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf, 
      Xt=Xt) annotation (extent=[-35, 59; 35, 74]);
    SecClar.Takacs.top_layer S10(
      zm=zm, 
      Asc=Asc, 
      Xf=Xf, 
      Xt=Xt, 
      rXs=rXs, 
      rXbh=rXbh, 
      rXba=rXba, 
      rXp=rXp, 
      rXi=rXi, 
      rXnd=rXnd) annotation (extent=[-35, 78; 35, 93]);
  equation 
    
    connect(S1.Up, S2.Dn) annotation (points=[-2.22045e-15, -78; -2.22045e-15, 
          -74]);
    connect(S2.Up, S3.Dn) annotation (points=[-2.22045e-15, -59; -2.22045e-15, 
          -55]);
    connect(S3.Up, S4.Dn) annotation (points=[-2.22045e-15, -40; -2.22045e-15, 
          -36]);
    connect(S5.Up, S6.Dn) annotation (points=[-2.22045e-15, -2; -2.22045e-15, 2
          ]);
    connect(S6.Up, S7.Dn) annotation (points=[-2.22045e-15, 17; -2.22045e-15, 
          21]);
    connect(S7.Up, S8.Dn) annotation (points=[-2.22045e-15, 36; -2.22045e-15, 
          40]);
    connect(S9.Up, S10.Dn) annotation (points=[-2.22045e-15, 74; -2.22045e-15, 
          78]);
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
      Documentation(info="This component models an ASM1 10 - layer secondary clarifier model with 4 layers above the feed_layer (including top_layer)
and 5 layers below the feed_layer (including bottom_layer) based on Takac`s theory.

Parameters:
  hsc -  height of clarifier [m]
  n   -  number of layers
  Asc -  surface area of sec. clar. [m2]
  Xt  -  threshold value for Xtss [mg/l]

"));
    connect(S4.Up, S5.Dn) annotation (points=[-2.22045e-15, -21; -2.22045e-15, 
          -17]);
    connect(S8.Up, S9.Dn) annotation (points=[-2.22045e-15, 55; -2.22045e-15, 
          59]);
    connect(Feed, S6.In) annotation (points=[-100, 10; -67.5, 10; -67.5, 9.8; -
          35, 9.8]);
    connect(S1.PQw, Waste) annotation (points=[17.5, -93; 17.5, -100; 30, -100]
      );
    connect(S10.Out, Effluent) annotation (points=[35, 85.5; 67.5, 85.5; 67.5, 
          57; 100, 57]);
    connect(S1.PQr, Return) annotation (points=[-21, -93; -21, -100; -30, -100]
      );
    
    // total sludge concentration in clarifier feed
    Xf = 0.75*(Feed.Xs + Feed.Xbh + Feed.Xba + Feed.Xp + Feed.Xi);
    
    // ratios of solid components
    rXs = Feed.Xs/Xf;
    rXbh = Feed.Xbh/Xf;
    rXba = Feed.Xba/Xf;
    rXp = Feed.Xp/Xf;
    rXi = Feed.Xi/Xf;
    rXnd = Feed.Xnd/Xf;
  end SecClarModTakacs;
  model bottom_layer "Bottom layer of Takac`s SC model" 
    
    import WWSC = WasteWater.ASM1.SecClar.Takacs.Interfaces;
    extends WWSC.SCParam;
    extends WWSC.SCVar;
    extends WWSC.ratios;
    annotation(Documentation(info = "This class models the lowest layer of an ASM1 secondary clarifier based on Takacs.

No sedimentation flux (mass exchange) with underneath but hydraulic and sedimentation flux (same direction)
with above layer.
From here return and waste sludge is removed.
"), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.3238,91.1032},{92.8826,-88.2563}}),Polygon(points = {{-65.4804,69.395},{-65.4804,53.3808},{-73.6655,53.3808},{-59.4306,42.7046},{-45.9075,53.3808},{-53.7367,53.3808},{-53.7367,69.395},{-65.4804,69.395}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-66.1922,-21.7082},{-66.1922,-39.1459},{-74.7331,-39.1459},{-59.4306,-49.8221},{-46.2633,-39.1459},{-54.0925,-39.1459},{-54.0925,-21.7082},{-66.1922,-21.7082}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{74.3772,54.0925},{66.548,54.0925},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-71.1744,-76.5125},{-48.3986,-67.9715}}, textString = "PQr"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{48.0427,-65.4804},{71.8861,-77.2242}}, textString = "PQw"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-6.76157,75.8007},{8.18505,67.6157}}, textString = "Up")}), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.3238,90.0356},{92.8826,-86.8328}}),Polygon(points = {{-65.4804,69.395},{-65.4804,53.3808},{-73.6655,53.3808},{-59.4306,42.7046},{-45.9075,53.3808},{-53.7367,53.3808},{-53.7367,69.395},{-65.4804,69.395}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-66.1922,-21.7082},{-66.1922,-39.1459},{-74.7331,-39.1459},{-59.4306,-49.8221},{-46.2633,-39.1459},{-54.0925,-39.1459},{-54.0925,-21.7082},{-66.1922,-21.7082}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{74.3772,54.0925},{66.548,54.0925},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-71.1744,-76.5125},{-48.3986,-67.9715}}, textString = "PQr"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{48.7544,-67.6156},{69.395,-77.2242}}, textString = "PQw"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-9.25267,72.9537},{10.6762,61.9217}}, textString = "Up")}));
      WasteWater.ASM1.Interfaces.WWFlowAsm1out PQw annotation(Placement(visible = true, transformation(origin = {59.4306,-85.4093}, extent = {{-6.1579,-6.1579},{6.1579,6.1579}}, rotation = 0), iconTransformation(origin = {59.4306,-85.4093}, extent = {{-6.77369,-6.77369},{6.77369,6.77369}}, rotation = 0)));
      WasteWater.ASM1.Interfaces.WWFlowAsm1out PQr annotation(Placement(visible = true, transformation(origin = {-60.1423,-85.7651}, extent = {{-6.1579,-6.1579},{6.1579,6.1579}}, rotation = 0), iconTransformation(origin = {-60.1423,-85.7651}, extent = {{-6.77369,-6.77369},{6.77369,6.77369}}, rotation = 0)));
      WWSC.LowerLayerPinIn Up annotation(Placement(visible = true, transformation(origin = {-0.355795,88.2563}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-0.355795,88.2563}, extent = {{-8.19617,-8.19617},{8.19617,8.19617}}, rotation = 0)));

  equation 
    
    // sink velocity
    vS = WWSC.vSfun(X, Xf);
    Jsm = 0.0;
    
    // ODE of solid component
    der(X) = ((Up.Qr + Up.Qw)/Asc*(Up.X - X) + Up.SedFlux)/zm;
    
    // ODEs of soluble components
    der(Si) = (Up.Qr + Up.Qw)*(Up.Si - Si)/(Asc*zm);
    der(Ss) = (Up.Qr + Up.Qw)*(Up.Ss - Ss)/(Asc*zm);
    der(So) = (Up.Qr + Up.Qw)*(Up.So - So)/(Asc*zm);
    der(Sno) = (Up.Qr + Up.Qw)*(Up.Sno - Sno)/(Asc*zm);
    der(Snh) = (Up.Qr + Up.Qw)*(Up.Snh - Snh)/(Asc*zm);
    der(Snd) = (Up.Qr + Up.Qw)*(Up.Snd - Snd)/(Asc*zm);
    der(Salk) = (Up.Qr + Up.Qw)*(Up.Salk - Salk)/(Asc*zm);
    
    // upward connection
    Up.vS_dn = vS;
    Up.X_dn = X;
    
    // return and waste sludge volume flow rates
    PQr.Q + Up.Qr = 0;
    PQw.Q + Up.Qw = 0;
    
    // return sludge flow, solid and soluble components (ASM1)
    PQr.Si = Si;
    PQr.Ss = Ss;
    PQr.Xi = rXi*X;
    PQr.Xs = rXs*X;
    PQr.Xbh = rXbh*X;
    PQr.Xba = rXba*X;
    PQr.Xp = rXp*X;
    PQr.So = So;
    PQr.Sno = Sno;
    PQr.Snh = Snh;
    PQr.Snd = Snd;
    PQr.Xnd = rXnd*X;
    PQr.Salk = Salk;
    
    // waste sludge flow, solid and soluble components (ASM1)
    PQw.Si = Si;
    PQw.Ss = Ss;
    PQw.Xi = rXi*X;
    PQw.Xs = rXs*X;
    PQw.Xbh = rXbh*X;
    PQw.Xba = rXba*X;
    PQw.Xp = rXp*X;
    PQw.So = So;
    PQw.Sno = Sno;
    PQw.Snh = Snh;
    PQw.Snd = Snd;
    PQw.Xnd = rXnd*X;
    PQw.Salk = Salk;
    
  end bottom_layer;
  model lower_layer "Layer below influent of Takac`s SC model" 
    
    import WWSC = WasteWater.ASM1.SecClar.Takacs.Interfaces;
    extends WWSC.SCParam;
    extends WWSC.SCVar;
   annotation(Documentation(info = "This class models the layers between the influent layer (feed_layer) and the lowest layer (bottom_layer)
of an ASM1 secondary clarifier based on Takacs.

Hydraulic and sedimentation flux (mass exchange in same direction) with above and underneath layer.

Sedimentation flux is calculated based on the double-exponential sedimentation velocity
function by Takacs."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-65.4804,69.395},{-65.4804,53.3808},{-73.6655,53.3808},{-59.4306,42.7046},{-45.9075,53.3808},{-53.7367,53.3808},{-53.7367,69.395},{-65.4804,69.395}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-66.1922,-21.7082},{-66.1922,-39.1459},{-74.7331,-39.1459},{-59.4306,-49.8221},{-45.9074,-39.1459},{-54.0925,-39.1459},{-54.0925,-21.7082},{-66.1922,-21.7082}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{75.0889,54.8042},{66.548,54.8042},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-6.76157,75.8007},{8.18505,67.6157}}, textString = "Up")}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-65.4804,69.395},{-65.4804,53.3808},{-73.6655,53.3808},{-59.4306,42.7046},{-45.9075,53.3808},{-53.7367,53.3808},{-53.7367,69.395},{-65.4804,69.395}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-66.1922,-21.7082},{-66.1922,-39.1459},{-74.7331,-39.1459},{-59.4306,-49.8221},{-45.9074,-39.1459},{-54.0925,-39.1459},{-54.0925,-21.7082},{-66.1922,-21.7082}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{75.0889,54.8042},{66.548,54.8042},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-6.76157,75.8007},{8.18505,67.6157}}, textString = "Up")}));
   	  WWSC.LowerLayerPinIn Up annotation(Placement(visible = true, transformation(origin = {-0.711744,91.1032}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-0.711744,91.1032}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      WWSC.LowerLayerPinOut Dn annotation(Placement(visible = true, transformation(origin = {-1.06761,-86.4769}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-1.06761,-86.4769}, extent = {{-12,-12},{12,12}}, rotation = 0)));
    
  equation 
    
    // sink velocity
    vS = WWSC.vSfun(X, Xf);
    
    // sedimentation flux in m-th layer sinking to lower layer
    Jsm = min(vS*X, Dn.vS_dn*Dn.X_dn);
    
    // ODE of solid component
    der(X) = ((Up.Qr + Up.Qw)/Asc*(Up.X - X) + Up.SedFlux - Jsm)/zm;
    
    // ODEs of soluble components
    der(Si) = (Up.Qr + Up.Qw)*(Up.Si - Si)/(Asc*zm);
    der(Ss) = (Up.Qr + Up.Qw)*(Up.Ss - Ss)/(Asc*zm);
    der(So) = (Up.Qr + Up.Qw)*(Up.So - So)/(Asc*zm);
    der(Sno) = (Up.Qr + Up.Qw)*(Up.Sno - Sno)/(Asc*zm);
    der(Snh) = (Up.Qr + Up.Qw)*(Up.Snh - Snh)/(Asc*zm);
    der(Snd) = (Up.Qr + Up.Qw)*(Up.Snd - Snd)/(Asc*zm);
    der(Salk) = (Up.Qr + Up.Qw)*(Up.Salk - Salk)/(Asc*zm);
    
    // downward connections
    Dn.Qr + Up.Qr = 0;
    Dn.Qw + Up.Qw = 0;
    
    Dn.X = X;
    Dn.SedFlux = -Jsm;
    
    Dn.Si = Si;
    Dn.Ss = Ss;
    Dn.So = So;
    Dn.Sno = Sno;
    Dn.Snh = Snh;
    Dn.Snd = Snd;
    Dn.Salk = Salk;
    
    // upward connections
    Up.vS_dn = vS;
    Up.X_dn = X;
  end lower_layer;
  model feed_layer "Influent layer of Takac`s SC model" 
    
    import WWSC = WasteWater.ASM1.SecClar.Takacs.Interfaces;
    extends WWSC.SCParam;
    extends WWSC.SCVar;
   
    annotation(Documentation(info = "This class models the influent layer of an ASM1 secondary clarifier based on Takacs.

It receives the wastewater stream from the biological part (feed).
Hydraulic and sedimentation flux (mass exchange in opposite directions) with above layer
and hydraulic and sedimentation flux (mass exchange in same direction) with underneath layer.

Sedimentation flux is calculated based on the double-exponential sedimentation velocity
function by Takacs."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-53.0249,44.1281},{-53.0249,60.1423},{-44.8398,60.1423},{-59.0747,70.8185},{-72.5978,60.1423},{-64.7686,60.1423},{-64.7686,44.1281},{-53.0249,44.1281}}, rotation = 180, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-66.1922,-21.7082},{-66.1922,-39.1459},{-74.7331,-39.1459},{-59.4306,-49.8221},{-45.9074,-39.1459},{-54.0925,-39.1459},{-54.0925,-21.7082},{-66.1922,-21.7082}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{75.0889,54.8042},{66.548,54.8042},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-6.76157,75.8007},{8.18505,67.6157}}, textString = "Up")}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-53.0249,44.1281},{-53.0249,60.1423},{-44.8398,60.1423},{-59.0747,70.8185},{-72.5978,60.1423},{-64.7686,60.1423},{-64.7686,44.1281},{-53.0249,44.1281}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-66.1922,-21.7082},{-66.1922,-39.1459},{-74.7331,-39.1459},{-59.4306,-49.8221},{-45.9074,-39.1459},{-54.0925,-39.1459},{-54.0925,-21.7082},{-66.1922,-21.7082}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{75.0889,54.8042},{66.548,54.8042},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-6.76157,75.8007},{8.18505,67.6157}}, textString = "Up")}));
      WasteWater.ASM1.Interfaces.WWFlowAsm1in In annotation(Placement(visible = true, transformation(origin = {-88.968,2.4911}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-88.968,2.4911}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      WWSC.LowerLayerPinOut Dn annotation(Placement(visible = true, transformation(origin = {0.355872,-86.8327}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {0.355872,-86.8327}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      WWSC.UpperLayerPinOut Up annotation(Placement(visible = true, transformation(origin = {1.06762,87.5445}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {1.06762,87.5445}, extent = {{-12,-12},{12,12}}, rotation = 0)));

  equation 
    
    // sink velocity
    vS = WWSC.vSfun(X, Xf);
    
    // sedimentation flux in m-th layer sinking to lower layer
    Jsm = min(vS*X, Dn.vS_dn*Dn.X_dn);
    
    // ODE of solid component
    der(X) = (In.Q/Asc*Xf - (-Up.Qe)/Asc*X - (-(Dn.Qr + Dn.Qw))/Asc*X + Up.
      SedFlux - Jsm)/zm;
    
    // ODE of soluble components
    der(Si) = (In.Q*In.Si - (-Up.Qe)*Si - (-(Dn.Qr + Dn.Qw))*Si)/(Asc*zm);
    der(Ss) = (In.Q*In.Ss - (-Up.Qe)*Ss - (-(Dn.Qr + Dn.Qw))*Ss)/(Asc*zm);
    der(So) = (In.Q*In.So - (-Up.Qe)*So - (-(Dn.Qr + Dn.Qw))*So)/(Asc*zm);
    der(Sno) = (In.Q*In.Sno - (-Up.Qe)*Sno - (-(Dn.Qr + Dn.Qw))*Sno)/(Asc*zm);
    der(Snh) = (In.Q*In.Snh - (-Up.Qe)*Snh - (-(Dn.Qr + Dn.Qw))*Snh)/(Asc*zm);
    der(Snd) = (In.Q*In.Snd - (-Up.Qe)*Snd - (-(Dn.Qr + Dn.Qw))*Snd)/(Asc*zm);
    der(Salk) = (In.Q*In.Salk - (-Up.Qe)*Salk - (-(Dn.Qr + Dn.Qw))*Salk)/(Asc*
      zm);
    
    // volume flow rates
    In.Q + Up.Qe + Dn.Qr + Dn.Qw = 0;
    
    Dn.SedFlux = -Jsm;
    Dn.X = X;
    
    Dn.Si = Si;
    Dn.Ss = Ss;
    Dn.So = So;
    Dn.Sno = Sno;
    Dn.Snh = Snh;
    Dn.Snd = Snd;
    Dn.Salk = Salk;
    
    Up.vS_dn = vS;
    Up.X_dn = X;
    
    Up.Si = Si;
    Up.Ss = Ss;
    Up.So = So;
    Up.Sno = Sno;
    Up.Snh = Snh;
    Up.Snd = Snd;
    Up.Salk = Salk;
  end feed_layer;
  model upper_layer "Layer above influent of Takac`s SC" 
    // Xt = Xthreshold
    
    import WWSC = WasteWater.ASM1.SecClar.Takacs.Interfaces;
	import WWU = WasteWater.WasteWaterUnits;
    extends WWSC.SCParam;
    extends WWSC.SCVar;
    parameter WWU.MassConcentration Xt;
    
    annotation(Documentation(info = "This class models the layers between the influent layer (feed_layer) and the effluent layer (top_layer)
an ASM1 secondary clarifier based on Takacs.

Hydraulic and sedimentation flux (mass exchange in opposite directions) with above and underneath layer.

Sedimentation flux is calculated based on the double-exponential sedimentation velocity
function by Takacs."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-53.0249,44.1281},{-53.0249,60.1423},{-44.8398,60.1423},{-59.0747,70.8185},{-72.5978,60.1423},{-64.7686,60.1423},{-64.7686,44.1281},{-53.0249,44.1281}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-51.9573,-48.7544},{-51.9573,-31.3167},{-43.4164,-31.3167},{-58.7189,-20.6405},{-72.2421,-31.3167},{-64.057,-31.3167},{-64.057,-48.7544},{-51.9573,-48.7544}}, rotation = 180, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{75.0889,54.8042},{66.548,54.8042},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-6.76157,75.8007},{8.18505,67.6157}}, textString = "Up")}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-53.0249,44.1281},{-53.0249,60.1423},{-44.8398,60.1423},{-59.0747,70.8185},{-72.5978,60.1423},{-64.7686,60.1423},{-64.7686,44.1281},{-53.0249,44.1281}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-51.9573,-48.7544},{-51.9573,-31.3167},{-43.4164,-31.3167},{-58.7189,-20.6405},{-72.2421,-31.3167},{-64.057,-31.3167},{-64.057,-48.7544},{-51.9573,-48.7544}}, rotation = 180, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.1601,69.7509},{55.1601,54.0925},{46.6192,54.0925},{61.5658,42.7046},{75.0889,54.8042},{66.548,54.8042},{66.548,69.7509},{55.1601,69.7509}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn"),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-6.76157,75.8007},{8.18505,67.6157}}, textString = "Up")}));
      WWSC.UpperLayerPinOut Up annotation(Placement(visible = true, transformation(origin = {0.355872,87.9004}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {0.355872,87.9004}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      WWSC.UpperLayerPinIn Dn annotation(Placement(visible = true, transformation(origin = {0.711744,-84.6975}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {0.711744,-84.6975}, extent = {{-12,-12},{12,12}}, rotation = 0)));

  equation 
    
    // sink velocity
    vS = WWSC.vSfun(X, Xf);
	
    
    // sedimentation flux in m-th layer sinking to lower layer
   Jsm = if Dn.X_dn <= Xt then vS*X else min(vS*X, Dn.vS_dn*Dn.X_dn);
   
    
    // ODE of solid component
    der(X) = (Dn.Qe/Asc*(Dn.X_dn - X) + Up.SedFlux - Jsm)/zm;
    
    // ODEs of soluble components
    der(Si) = Dn.Qe*(Dn.Si - Si)/(Asc*zm);
    der(Ss) = Dn.Qe*(Dn.Ss - Ss)/(Asc*zm);
    der(So) = Dn.Qe*(Dn.So - So)/(Asc*zm);
    der(Sno) = Dn.Qe*(Dn.Sno - Sno)/(Asc*zm);
    der(Snh) = Dn.Qe*(Dn.Snh - Snh)/(Asc*zm);
    der(Snd) = Dn.Qe*(Dn.Snd - Snd)/(Asc*zm);
    der(Salk) = Dn.Qe*(Dn.Salk - Salk)/(Asc*zm);
    
    // downward connection
    Dn.SedFlux = -Jsm;
    
    // upward connections
    Up.Qe + Dn.Qe = 0;
    
    Up.vS_dn = vS;
    Up.X_dn = X;
    
    Up.Si = Si;
    Up.Ss = Ss;
    Up.So = So;
    Up.Sno = Sno;
    Up.Snh = Snh;
    Up.Snd = Snd;
    Up.Salk = Salk;
  end upper_layer;
  model top_layer "Effluent layer of Takac`s SC model" 
    
    import WWSC = WasteWater.ASM1.SecClar.Takacs.Interfaces;
	import WWU = WasteWater.WasteWaterUnits;
    extends WWSC.SCParam;
    extends WWSC.SCVar;
    extends WWSC.ratios;
    
    parameter WWU.MassConcentration Xt;
    // Xt = Xthreshold
    
    annotation(Documentation(info = "This class models the top layer of an ASM1 secondary clarifier based on Takacs.

No sedimentation flux (mass exchange) with above but hydraulic and sedimentation flux
(opposite directions) underneath.
From here effluent goes to the receiving water.

Sedimentation flux is calculated based on the double-exponential sedimentation velocity
function by Takacs."), Diagram(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-13.5231,53.0249},{2.49105,53.0249},{2.49105,44.8398},{13.1673,59.0747},{2.49105,72.5978},{2.49105,64.7686},{-13.5231,64.7686},{-13.5231,53.0249}}, rotation = -90, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-51.9573,-48.7544},{-51.9573,-31.3167},{-43.4164,-31.3167},{-58.7189,-20.6405},{-72.2421,-31.3167},{-64.057,-31.3167},{-64.057,-48.7544},{-51.9573,-48.7544}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn")}), Icon(graphics = {Rectangle(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-89.6797,90.3915},{92.5267,-88.968}}),Polygon(points = {{-13.5231,53.0249},{2.49105,53.0249},{2.49105,44.8398},{13.1673,59.0747},{2.49105,72.5978},{2.49105,64.7686},{-13.5231,64.7686},{-13.5231,53.0249}}, rotation = -90, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{-51.9573,-48.7544},{-51.9573,-31.3167},{-43.4164,-31.3167},{-58.7189,-20.6405},{-72.2421,-31.3167},{-64.057,-31.3167},{-64.057,-48.7544},{-51.9573,-48.7544}}, rotation = 0, lineColor = {0,85,255}, fillColor = {0,85,255}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Polygon(points = {{55.516,-22.4199},{55.516,-38.0783},{46.9751,-38.0783},{61.9217,-49.4662},{75.4448,-37.3666},{66.9039,-37.3666},{66.9039,-22.4199},{55.516,-22.4199}}, rotation = 0, lineColor = {191,156,127}, fillColor = {191,156,127}, pattern = LinePattern.Solid, fillPattern = FillPattern.Solid, lineThickness = 0.25),Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid, fillPattern = FillPattern.None, lineThickness = 0.25, extent = {{-11.032,-61.9217},{8.54091,-71.5303}}, textString = "Dn")}));
      WasteWater.ASM1.Interfaces.WWFlowAsm1out Out annotation(Placement(visible = true, transformation(origin = {87.1886,3.20285}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {87.1886,3.20285}, extent = {{-12,-12},{12,12}}, rotation = 0)));
      WWSC.UpperLayerPinIn Dn annotation(Placement(visible = true, transformation(origin = {-0.355872,-85.4093}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-0.355872,-85.4093}, extent = {{-12,-12},{12,12}}, rotation = 0)));

  equation 
    
    // sink velocity
    vS = WWSC.vSfun(X, Xf);
    
    // sedimentation flux in m-th layer sinking to lower layer
    Jsm = if Dn.X_dn <= Xt then vS*X else min(vS*X, Dn.vS_dn*Dn.X_dn);
    
    // ODE of solid component
    der(X) = (Dn.Qe/Asc*(Dn.X_dn - X) - Jsm)/zm;
    
    // ODEs of soluble components
    der(Si) = Dn.Qe*(Dn.Si - Si)/(Asc*zm);
    der(Ss) = Dn.Qe*(Dn.Ss - Ss)/(Asc*zm);
    der(So) = Dn.Qe*(Dn.So - So)/(Asc*zm);
    der(Sno) = Dn.Qe*(Dn.Sno - Sno)/(Asc*zm);
    der(Snh) = Dn.Qe*(Dn.Snh - Snh)/(Asc*zm);
    der(Snd) = Dn.Qe*(Dn.Snd - Snd)/(Asc*zm);
    der(Salk) = Dn.Qe*(Dn.Salk - Salk)/(Asc*zm);
    
    // downward connection
    Dn.SedFlux = -Jsm;
    
    // effluent volume flow rate
    Out.Q + Dn.Qe = 0;
    
    // effluent, solid and soluble components (ASM1)
    Out.Si = Si;
    Out.Ss = Ss;
    Out.Xi = rXi*X;
    Out.Xs = rXs*X;
    Out.Xbh = rXbh*X;
    Out.Xba = rXba*X;
    Out.Xp = rXp*X;
    Out.So = So;
    Out.Sno = Sno;
    Out.Snh = Snh;
    Out.Snd = Snd;
    Out.Xnd = rXnd*X;
    Out.Salk = Salk;
  end top_layer;
end Takacs;
