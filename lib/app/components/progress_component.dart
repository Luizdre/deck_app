// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DeckProgressIndicator extends StatefulWidget {
  double? value;
  Color? color;
  double size;
  DeckProgressIndicator(
      {Key? key, required this.value, this.color, this.size = 20})
      : super(key: key);

  @override
  State<DeckProgressIndicator> createState() => _DeckProgressIndicatorState();
}

class _DeckProgressIndicatorState extends State<DeckProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: widget.size,
      width: widget.size,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: widget.color ?? Colors.blue,
        value: widget.value,
      ),
    ));
  }
}
