import 'package:flutter/material.dart';

class CustomListApp extends StatelessWidget {
  const CustomListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<String> entries = <String>['A', 'B', 'C'];
    final List<String> entries = <String>[];
    for (int i = 0; i < 300; i++) {
      try {
        entries.add('GeeksForGeeks $i');
      } catch (e, s) {
        print(s);
      }
    }

    final List<Color> colorCodes = <Color>[
      Colors.yellow,
      Colors.yellowAccent,
      Colors.cyan
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ListView"),
              centerTitle: true,
            ),
            body: Container(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: colorCodes.getOrNull(index) ?? Colors.red,
                        child: Center(child: Text('Entry ${entries[index]}')),
                      );
                    }))));
  }
}

extension _GetOrNull<T> on List<T> {
  T? getOrNull(int index) => _checkIndex(index) ? this[index] : null;

  bool _checkIndex(int index) => index >= 0 && index < length;
}
