import 'package:flutter/material.dart';
import 'package:hallo_world/src/screen/home.dart';


void main(){
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}