import 'package:flutter/material.dart';
import 'package:interview/keys/global_key_page.dart';
import 'package:interview/keys/objectkey.dart';
import 'package:interview/keys/unique_key.dart';
import 'package:interview/keys/value_key.dart';
import 'package:interview/pages/inheritwidget_page.dart';
import 'package:interview/pages/widgetlifesycle_page.dart';
import 'package:interview/widgets/theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
     MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const GlobalKeyPage(),
      );
  }
}
