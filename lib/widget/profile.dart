import 'package:flutter/material.dart';

class ItemData {
  final IconData iconData;
  final String name;

  const ItemData(this.iconData, this.name);
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    List<ItemList>? listDate = ["a", "b", "c", "b"]
        .map((String text) =>
            ItemList(ItemData(Icons.favorite_border, "Класс \"$text\"")))
        .toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Профиль"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.white,
          // child: SingleChildScrollView(
          child: ListView(
            children: [
              const SizedBox(height: 30),
              const Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Placeholder(),
                ),
              ),
              const SizedBox(height: 30),
              Center(child: buildElevatedButton()),
              const SizedBox(height: 8),
              Center(child: buildCard()),
              const SizedBox(height: 30),
              Container(height: 30, color: Colors.blue),
              const ItemList(ItemData(Icons.favorite_border, "Избранное")),
              const ItemList(ItemData(Icons.card_travel, "Корзина")),
              const ItemList(
                  ItemData(Icons.power_settings_new_outlined, "Настройки")),
              const ItemList(ItemData(Icons.rule, "Правила")),
              const ItemList(
                  ItemData(Icons.account_balance_outlined, "О программе")),
              Container(height: 30, color: Colors.blue),
              for (var item in listDate ?? [const Text("Empty")]) item
            ],
          ),
          // ),
        ),
      ),
    );
  }

  Card buildCard() {
    return const Card(
        color: Colors.amberAccent,
        // ← And also this.
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Актёр",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
        onPressed: () {
          debugPrint("ElevatedButton debugPrint");
        },
        child: const Text(
          "Том Круз",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          softWrap: false,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ));
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

class ItemList extends StatelessWidget {
  final ItemData item;

  const ItemList(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0), child: Icon(item.iconData)),
          Expanded(
            child: Text(item.name),
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
