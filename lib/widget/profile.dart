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
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 30),
              const SizedBox(
                width: 100,
                height: 100,
                child: Placeholder(),
              ),
              const SizedBox(height: 30),
              const Text(
                "Том Круз",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Актёр",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Container(height: 30, color: Colors.blue),
              buildRow(Icons.favorite_border, "Избранное"),
              buildRow(Icons.card_travel, "Корзина"),
              buildRow(Icons.power_settings_new_outlined, "Настройки"),
              buildRow(Icons.rule, "Правила"),
              buildRow(Icons.account_balance_outlined, "О программе"),
              Container(height: 30, color: Colors.blue),
              buildRow(Icons.favorite_border, "Избранное"),
              buildRow(Icons.card_travel, "Корзина"),
              buildRow(Icons.power_settings_new_outlined, "Настройки"),
              buildRow(Icons.rule, "Правила"),
              buildRow(Icons.account_balance_outlined, "О программе"),
            ],
          ),
        ),
      ),
    );
  }

  Column buildRow(IconData iconData, String name) {
    return Column(children: [
      Row(
        children: [
          Padding(padding: const EdgeInsets.all(8.0), child: Icon(iconData)),
          Expanded(
            child: Text(name),
          ),
          const Padding(
              padding: EdgeInsets.all(8.0), child: Icon(Icons.arrow_right)),
        ],
      ),
      const Divider(
        color: Colors.blue,
      )
    ]);
  }
}
