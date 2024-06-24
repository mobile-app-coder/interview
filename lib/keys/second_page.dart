import 'package:flutter/material.dart';

import 'counter_page.dart';

class SecondPage extends StatefulWidget {
  final GlobalKey<CounterPageState> counterState;

  const SecondPage({super.key, required this.counterState});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Second page", style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.counterState.currentState!.count.toString(), style: const TextStyle(
              fontSize: 30
            ),),
            MaterialButton(
              onPressed: () {
               setState(() {
                 widget.counterState.currentState!.count++;
               });
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
