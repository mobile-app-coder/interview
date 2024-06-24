import 'package:flutter/material.dart';
import 'package:interview/keys/counter_page.dart';
import 'package:interview/keys/second_page.dart';

class GlobalKeyPage extends StatefulWidget {
  const GlobalKeyPage({super.key});

  @override
  State<GlobalKeyPage> createState() => _GlobalKeyPageState();
}

class _GlobalKeyPageState extends State<GlobalKeyPage> {
  late GlobalKey<CounterPageState> _counterState;

  @override
  void initState() {
    super.initState();
    _counterState = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterPage(
              key: _counterState,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return SecondPage(
              counterState: _counterState,
            );
          }));
        },
      ),
    );
  }
}
