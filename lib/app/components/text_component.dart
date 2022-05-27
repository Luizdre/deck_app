import 'package:flutter/material.dart';

class DeckText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextOverflow textOverFlow;
  final TextAlign textAlign;
  final Color color;
  const DeckText(
      {Key? key,
      required this.text,
      this.fontSize = 15,
      this.color = Colors.black,
      this.textOverFlow = TextOverflow.visible,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, overflow: textOverFlow, color: color),
      textAlign: textAlign,
    );
  }
}
