// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //reference the box
  final _mybox = Hive.box('mybox');

  //write data
  void writeData() {
    _mybox.put(1, ["John", 26, "Blue"]);
  }

  //read data
  void readData() {
    print(_mybox.get(1));
  }

  //delete data
  void deleteData() {
    _mybox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.blue[400],
              child: Text("Write"),
            ),
            MaterialButton(
              onPressed: readData,
              color: Colors.blue[400],
              child: Text("Read"),
            ),
            MaterialButton(
              onPressed: deleteData,
              color: Colors.blue[400],
              child: Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
