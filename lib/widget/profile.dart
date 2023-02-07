import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Профиль")),
        body: Container(
          width: double.infinity,
          color: Colors.amber,
          child: Column(
            children: const [
              SizedBox(height: 30),
              SizedBox(
                width: 100,
                height: 100,
                child: Placeholder(),
              ),
              SizedBox(height: 30),
              Text(
                "Том Круз asda\nasdasdasdasds",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Актёр",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
