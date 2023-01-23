import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Задачи"),
            centerTitle: true,
          ),
          body: const Center(
            child: Text("data",
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.deepPurple,
                    fontFamily: "Times New Roman")),
          ),
          floatingActionButton: FloatingActionButton(
            // child: const Text("Добавить"),
            child: new Icon(Icons.check),
            onPressed: () {
              print("click");
            },
          ),
        ));
  }
}
