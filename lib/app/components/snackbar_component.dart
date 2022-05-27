import 'package:deck/app/components/text_component.dart';
import 'package:deck/app/helpers/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeckSnackBar extends SnackBar {
  String message;
  bool isError;
  DeckSnackBar({Key? key, required this.message, this.isError = false})
      : super(
            key: key,
            content: DeckText(text: message, color: Colors.white),
            backgroundColor: !isError ? null : deckError);
}
