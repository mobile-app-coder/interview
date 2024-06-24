import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String text;

  const DetailsPage({super.key, required this.text});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    //print("Init widget");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // print("didChangeDependencies widget");
    super.didChangeDependencies();
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text(widget.text),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
      appBar: AppBar(
        title: const Text("Details page"),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
    );
  }

  @override
  void didUpdateWidget(DetailsPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) {
      print("didUpdateWidget widget");
    }
  }

  @override
  void setState(VoidCallback fn) {
    // print("setState widget");
    super.setState(fn);
  }

  @override
  void deactivate() {
    // print("deactivate widget");
    super.deactivate();
  }

  @override
  void dispose() {
    // print("dispose widget");
    super.dispose();
  }
}
