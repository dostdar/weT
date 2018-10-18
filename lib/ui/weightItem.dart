import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/classes/WeightClass.dart';

class WeightListItem extends StatelessWidget {
  final MyWeight weightSave;
  final double weightDifference;

  WeightListItem(this.weightSave, this.weightDifference);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: new EdgeInsets.symmetric(vertical:4.0 , horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:20.0 , horizontal: 8.0),
        child: new Row(children: [
          new Expanded(
              child: new Column(children: [
            new Text(
              new DateFormat.yMMMMd().format(weightSave.dateTime),
              textScaleFactor: 0.9,
              textAlign: TextAlign.left,
            ),
            new Text(
              new DateFormat.EEEE().format(weightSave.dateTime),
              textScaleFactor: 0.8,
              textAlign: TextAlign.right,
              style: new TextStyle(
                color: Colors.grey,
              ),
            ),
          ], crossAxisAlignment: CrossAxisAlignment.start)),
          new Expanded(
              child: new Text(
            weightSave.weight.toString(),
            textScaleFactor: 2.0,
            textAlign: TextAlign.center,
          )),
          new Expanded(
              child: new Text(
            weightDifference.toString(),
            textScaleFactor: 1.6,
            textAlign: TextAlign.right,
          )),
        ]),
      ),
    );
  }
}
