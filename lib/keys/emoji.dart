import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Emoji extends StatelessWidget {
  final String emoji;

  const Emoji({required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Text(emoji, style: const TextStyle(fontSize: 100));
  }
}

class GetEmoji extends StatefulWidget {
  final String emoji;

  const GetEmoji({super.key, required this.emoji});

  @override
  State<GetEmoji> createState() => _GetEmojiState();
}

class _GetEmojiState extends State<GetEmoji> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.emoji, style: const TextStyle(fontSize: 100));
  }
}
