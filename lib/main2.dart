import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var count = 0.obs;
  void add() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(
            () => Text("angka $count",
                style: TextStyle(
                  fontSize: 35,
                )),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => add(),
        ),
      ),
    );
  }
}
