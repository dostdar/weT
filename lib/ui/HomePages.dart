import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/classes/WeightClass.dart';
import 'package:untitled/ui/addWeight.dart';
import 'package:untitled/ui/weightItem.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<MyWeight> list = [];

Future _openAddEntryDialog() async {
  MyWeight save = await Navigator.of(context).push(new MaterialPageRoute<MyWeight>(
      builder: (BuildContext context) {
        return new AddWeight();
      },
    fullscreenDialog: true
  ));
  if (save != null) {
    _addList(save);
    
  }
}

  void _addList(MyWeight mw) {
    setState(() {
      list.add(mw);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return WeightListItem(list[index] , 
            index == 0 ? 0.0:list[index].weight - list[index-1].weight 
          );
        },
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _openAddEntryDialog,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
