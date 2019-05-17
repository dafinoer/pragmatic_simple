import 'package:flutter/material.dart';
import 'package:hallo_world/src/widget/chart.dart';
import 'package:hallo_world/src/widget/slider.dart';
import 'package:provider/provider.dart';
import 'package:hallo_world/src/providers.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Test'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Provider<BlocProviders>(
          builder: (_)=> BlocProviders(),
          dispose: (_, bloc)=> bloc.close(),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Status Developer Indonesia'),
            CartPageNew(),
            SliderPie()
          ],
      ),
        )),
    );
  }
}
