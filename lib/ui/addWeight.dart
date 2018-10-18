import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled/classes/WeightClass.dart';

class AddWeight extends StatefulWidget {
  @override
  _AddWeightState createState() => _AddWeightState();
}

class _AddWeightState extends State<AddWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Weight"),
        actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.of(context).pop(MyWeight(
                    DateTime.now(), new Random().nextInt(100).toDouble()));
              },
              child: new Text('SAVE THIS',
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white))),
        ],
      ),
    );
  }
}
