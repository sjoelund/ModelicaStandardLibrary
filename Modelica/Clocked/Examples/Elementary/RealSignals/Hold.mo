within Modelica.Clocked.Examples.Elementary.RealSignals;
model Hold "Example of a Hold block for Real signals"
   extends Modelica.Icons.Example;

  Modelica.Blocks.Sources.Sine sine(f=2,
    offset=0.1,
    startTime=0)
    annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
  Modelica.Clocked.RealSignals.Sampler.SampleClocked
                                                  sample
    annotation (Placement(transformation(extent={{-52,24},{-40,36}})));
  Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicClock(
      factor=20, resolution=Modelica.Clocked.Types.Resolution.ms)
    annotation (Placement(transformation(extent={{-68,-6},{-56,6}})));
Modelica.Clocked.RealSignals.Sampler.Hold hold(y_start=-1.0)
  annotation (Placement(transformation(extent={{-8,24},{4,36}})));
Modelica.Clocked.RealSignals.Sampler.ShiftSample shiftSample(
    shiftCounter=2)
  annotation (Placement(transformation(extent={{-30,24},{-18,36}})));
equation
  connect(sine.y, sample.u) annotation (Line(
      points={{-59,30},{-53.2,30}},
      color={0,0,127}));
connect(periodicClock.y, sample.clock) annotation (Line(
    points={{-55.4,0},{-46,0},{-46,22.8}},
    color={175,175,175},
    pattern=LinePattern.Dot,
    thickness=0.5));
connect(sample.y, shiftSample.u) annotation (Line(
    points={{-39.4,30},{-31.2,30}},
    color={0,0,127}));
connect(shiftSample.y, hold.u) annotation (Line(
    points={{-17.4,30},{-9.2,30}},
    color={0,0,127}));
  annotation (experiment(StopTime=0.2),
  Documentation(info="<html>
<p>
Example used to generate a figure for the documentation of block
<a href=\"modelica://Modelica.Clocked.RealSignals.Sampler.Hold\">Modelica.Clocked.RealSignals.Sampler.Hold</a>.
</p>
</html>"));
end Hold;
