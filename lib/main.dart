import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:developer' as developer;
import 'dart:math' as math;

import 'package:flutter_application_name/widget/app.dart';
import 'package:flutter_application_name/widget/button.dart';
import 'package:flutter_application_name/widget/listview.dart';
import 'package:flutter_application_name/widget/profile.dart';

void main() {
  // runApp(const App());
  // runApp(const ProfileApp());
  runApp(const ButtonApp());
}

// class NewMyApp extends StatefulWidget {
//   const NewMyApp({super.key});
//
//   @override
//   State<NewMyApp> createState() => _StatefulWidget();
// }
//
// class _StatefulWidget extends State<NewMyApp> {
//   String name = "Ivan";
//
//   @override
//   Widget build(BuildContext context) {
//     // return ;
//     return MaterialApp(
//         title: "Title  MaterialApp",
//         home: Scaffold(
//           appBar: AppBar(title: const Text("Новый день")),
//           body: Container(
//               key: const Key("container"),
//               color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
//                   .withOpacity(1.0),
//               child: Column(
//                 children: [
//                   TextButton(
//                     onPressed: _onPressed,
//                     key: const Key("textView"),
//                     child: Text(name,
//                         style: TextStyle(
//                             color: Colors.red.withOpacity(0.6),
//                             background: Paint()..color = Colors.green)),
//                   ),
//                   const Text("Hello world"),
//                   const Center(
//                       child: Text(
//                     "Center",
//                     style: TextStyle(
//                         backgroundColor: Colors.deepPurple,
//                         fontWeight: FontWeight.bold),
//                   )),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const <Widget>[
//                       Text('Row One'),
//                       Text('Row Two'),
//                       Text(
//                         'Row Three',
//                         style: TextStyle(color: Color(0x8b06d7d7)),
//                       ),
//                       Text('Row Four'),
//                     ],
//                   ),
//                   Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const <Widget>[
//                         Text('Column One'),
//                         Text('Column Two'),
//                         Text('Column Three'),
//                       ]),
//                   TextButton(
//                     onPressed: () {
//                       debugPrint("debugPrint");
//                       developer.log('onPressed', name: 'my');
//                     },
//                     child: const Text(
//                       'Title Text', //title
//                       textAlign: TextAlign.end, //aligment
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       exit(0);
//                     },
//                     child: const Text(
//                       'Выход', //title
//                       textAlign: TextAlign.center, //aligment
//                       style: TextStyle(fontSize: 30),
//                     ),
//                   ),
//                 ],
//               )),
//         ));
//   }
//
//   void _onPressed() {
//     setState(() {
//       name = "Anton";
//     });
//   }
// }
//
// class MyApp extends StatelessWidget {
//   int count = 0;
//
//   MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(primaryColor: Colors.blue),
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Задачи"),
//             centerTitle: true,
//           ),
//           body: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [Text("data"), Text("data"), Text("data"), Text("data")],
//           ),
//           //todo TextButton
//           // body: TextButton(
//           //   // style: ButtonStyle(foregroundColor: Colors.amber),
//           //   // onPressed: () {},
//           //   onPressed: () {
//           //     print("object");
//           //   },
//           //   child: Text('TextButton'),
//           // ),
//           //todo Container
//           // body: Container(
//           //     color: Colors.green,
//           //     width: double.infinity,
//           //     height: double.infinity,
//           //     padding: EdgeInsets.all(16.0),
//           //     child: Column(children: const <Widget>[
//           //       Text("data ",
//           //           style: TextStyle(
//           //               fontSize: 36,
//           //               color: Colors.deepPurple,
//           //               fontFamily: "Times New Roman")),
//           //       Text("Eще текст"),
//           //       Icon(Icons.ac_unit, size: 40, color: Colors.blueAccent),
//           //       Image(
//           //           image: NetworkImage(
//           //               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&usqp=CAU")),
//           //       Image(image: AssetImage("ic_test.jpeg")),
//           //     ])),
//           floatingActionButton: FloatingActionButton(
//             // child: const Text("Добавить"),
//             child: const Icon(Icons.check),
//             onPressed: () {
//               count++;
//               if (kDebugMode) {
//                 print("click $count");
//               }
//             },
//           ),
//         ));
//   }
// }
