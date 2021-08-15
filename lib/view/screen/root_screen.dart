import 'package:flutter/material.dart';
import 'package:just_convert_it/view/more_than_ones/more_thyan_ones.dart';

class RootSc extends StatefulWidget {
  RootSc({Key? key}) : super(key: key);

  @override
  _RootScState createState() => _RootScState();
}

class _RootScState extends State<RootSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(child: drawerElement(context)),
    );
  }
}