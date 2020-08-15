import 'package:flutter/material.dart';
import './main_drawer.dart';

class Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(title: Text('Filters'),),
      body: Container(
        child: Text('filters'),
      ),
    );
  }
}