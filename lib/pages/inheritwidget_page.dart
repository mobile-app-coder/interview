import 'package:flutter/material.dart';

import '../widgets/theme_color.dart';

class InheritwidgetPage extends StatefulWidget {
  const InheritwidgetPage({super.key});

  @override
  State<InheritwidgetPage> createState() => _InheritwidgetPageState();
}

class _InheritwidgetPageState extends State<InheritwidgetPage> {
  @override
  Widget build(BuildContext context) {
    final color = ThemeColor.of(context)?.color ?? Colors.blue;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherit widget"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                height: 100,
                color: color,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10)),
            Container(
                height: 100,
                color: color,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10))
          ],
        ),
      ),
    );
  }
}
