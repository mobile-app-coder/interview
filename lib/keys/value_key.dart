import 'package:flutter/material.dart';

class ValueKeyPage extends StatefulWidget {
  const ValueKeyPage({super.key});

  @override
  State<ValueKeyPage> createState() => _ValueKeyPageState();
}

class _ValueKeyPageState extends State<ValueKeyPage> {

  bool showFramework = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Value key"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(showFramework)
              const TextField(
                key: ValueKey("framework"),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "favourite framework"),
              ),
            SizedBox(height: 10,),
            const TextField(
              key: ValueKey("language"),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "favourite language"),
            ),
            MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Remote Framework"),
                onPressed: () {
                  setState(() {
                    showFramework = !showFramework;
                  });
                })
          ],
        ),
      ),
    );
  }
}
