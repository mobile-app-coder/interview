import 'package:flutter/material.dart';
import 'package:interview/keys/emoji.dart';

class UniqueKeyPage extends StatefulWidget {
  const UniqueKeyPage({super.key});

  @override
  State<UniqueKeyPage> createState() => _UniqueKeyPageState();
}

class _UniqueKeyPageState extends State<UniqueKeyPage> {
  List<Widget> emojis = [
    GetEmoji(
      emoji: "😂",
      key: UniqueKey(),
    ),
    GetEmoji(
      emoji: "😒",
      key: UniqueKey(),
    )
  ];

  swap() {
    setState(() {
      emojis.insert(1, emojis.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unique key"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: emojis,
          ),
          MaterialButton(
            onPressed: swap,
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text("Swap"),
          )
        ],
      ),
    );
  }
}
