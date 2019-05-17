import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:hallo_world/src/providers.dart';


class SliderPie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SliderPieState();
  }
  
}

class _SliderPieState extends State<SliderPie> {

  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    final prof = Provider.of<BlocProviders>(context);
    
    return Slider(
      value: _value,
      max: 100.0,
      min: 0.0,
      label: '${_value.round()}',
      onChanged: (value) {
        setState(() {
          _value = value;
        });
        prof.sinkSlider.add(value);
      } ,
    );
  }
}