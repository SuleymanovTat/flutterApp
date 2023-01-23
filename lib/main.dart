import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int count = 0;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Задачи"),
            centerTitle: true,
          ),
          // body: TextButton(
          //   // style: ButtonStyle(foregroundColor: Colors.amber),
          //   // onPressed: () {},
          //   onPressed: () {
          //     print("object");
          //   },
          //   child: Text('TextButton'),
          // ),
          body: Container(
              color: Colors.green,
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Column(children: const <Widget>[
                Text("data ",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.deepPurple,
                        fontFamily: "Times New Roman")),
                Text("Eще текст"),
                Icon(Icons.ac_unit, size: 40, color: Colors.blueAccent),
                Image(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU")),
                Image(image: AssetImage("ic_test.jpeg")),
              ])),
          floatingActionButton: FloatingActionButton(
            // child: const Text("Добавить"),
            child: const Icon(Icons.check),
            onPressed: () {
              count++;
              if (kDebugMode) {
                print("click $count");
              }
            },
          ),
        ));
  }
}
