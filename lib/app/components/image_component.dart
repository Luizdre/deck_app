// ignore_for_file: must_be_immutable

import 'package:deck/app/components/progress_component.dart';
import 'package:flutter/material.dart';

class DeckImg extends StatefulWidget {
  String img;
  Color colorProgress;
  DeckImg({
    Key? key,
    required this.img,
    required this.colorProgress,
  }) : super(key: key);

  @override
  State<DeckImg> createState() => _DeckImgState();
}

class _DeckImgState extends State<DeckImg> {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.img,
      errorBuilder: (context, error, stackTrace) =>
          Center(child: Text(error.toString())),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
            child: DeckProgressIndicator(
          color: widget.colorProgress,
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null,
        ));
      },
    );
  }
}
