import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Name";
    return MaterialApp(
        home: Scaffold(
      appBar: _buildAppBar(),
      body: _buildContainer(name),
    ));
  }

  Container _buildContainer(String name) {
    return Container(
      color: Colors.amber,
      child: Center(child: Text(name)),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Text"),
      centerTitle: true,
    );
  }
}
