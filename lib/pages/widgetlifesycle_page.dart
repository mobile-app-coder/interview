import 'package:flutter/material.dart';
import 'package:interview/pages/details_page.dart';

//app lifecycle and widget lifecycle
class LifeCyclePage extends StatefulWidget {
  const LifeCyclePage({super.key});

  @override
  State<LifeCyclePage> createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage>
      with WidgetsBindingObserver {
  Future _openDetails() async {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return  const DetailsPage(text: "open",);
    }));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();

  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        print("detached");
        break;
      case AppLifecycleState.resumed:
        print("resumed");
        break;
      case AppLifecycleState.inactive:
        print("inactive");
        break;
      case AppLifecycleState.hidden:
        print("hidden");
        break;
      case AppLifecycleState.paused:
        print("paused");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Widget lifecycle",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _openDetails();
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: const Text("Open"),
        ),
      ),
    );
  }
}
