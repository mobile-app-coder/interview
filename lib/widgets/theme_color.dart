import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/colors.dart';

class ThemeColor extends InheritedWidget {
  final Color color;

  const ThemeColor(this.color,
      {super.key, required super.child});

  @override
  bool updateShouldNotify(ThemeColor oldWidget) {
    return color != oldWidget.color;
  }

  static ThemeColor? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeColor>();
  }
}
