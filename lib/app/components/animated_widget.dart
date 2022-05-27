import 'package:flutter/material.dart';

class DeckAnimatedContainer extends StatefulWidget {
  final double left, right, top, bottom, opacity;
  final int duration;
  final Widget child;
  const DeckAnimatedContainer(
      {Key? key,
      this.bottom = 0,
      this.left = 0,
      this.top = 0,
      this.right = 0,
      this.opacity = 1,
      this.duration = 300,
      required this.child})
      : super(key: key);

  @override
  State<DeckAnimatedContainer> createState() => _DeckAnimatedContainerState();
}

class _DeckAnimatedContainerState extends State<DeckAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding: EdgeInsets.fromLTRB(
          widget.left, widget.top, widget.right, widget.bottom),
      duration: Duration(milliseconds: widget.duration + 500),
      child: AnimatedOpacity(
          duration: Duration(milliseconds: widget.duration),
          opacity: widget.opacity,
          child: widget.child),
    );
  }
}
