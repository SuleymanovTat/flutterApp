import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ListView"),
              centerTitle: true,
            ),
            body: Container(
              color: Colors.yellowAccent,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        debugPrint("ElevatedButton");
                      },
                      child: const Text("ElevatedButton",
                          maxLines: 1, overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      onPressed: () {
                        debugPrint("OutlinedButton");
                      },
                      child: const Text("OutlinedButton"),
                    ),
                    const SizedBox(height: 16),
                    IconButton(
                      onPressed: () {
                        debugPrint("OutlinedButton");
                      },
                      icon: const Icon(
                        Icons.add_a_photo,
                        color: Colors.blue,
                      ),
                    ),
                  ]),
            )));
  }
}
