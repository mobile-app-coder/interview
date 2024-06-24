import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ObjectKeyPage extends StatefulWidget {
  const ObjectKeyPage({super.key});

  @override
  State<ObjectKeyPage> createState() => _ObjectKeyPageState();
}

class _ObjectKeyPageState extends State<ObjectKeyPage> {
  late List<ItemModel> items;

  @override
  void initState() {
    super.initState();

    items = [
      ItemModel("apple", Colors.red),
      ItemModel("wine", Colors.purple),
      ItemModel("banana", Colors.yellow),
      ItemModel("melon", Colors.green),
      ItemModel("peach", Colors.redAccent),
      ItemModel("orange", Colors.orange),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          },
          children: items
              .map(
                (ItemModel item) => ListTile(
                  key: ObjectKey(item),
                  title: Container(
                    color: item.color,
                    padding: EdgeInsets.all(10),
                    child: Text(item.name),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        items.remove(item);
                      });
                    },
                    icon: const Icon(CupertinoIcons.delete),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
