import 'package:flutter/material.dart';

class CardScaffold {
  static final CardScaffold instance = CardScaffold();
  final GlobalKey<ScaffoldMessengerState> _key =
      GlobalKey<ScaffoldMessengerState>();

  void showSnackBar(SnackBar snackBar) {
    _key.currentState!.showSnackBar(snackBar);
  }

  GlobalKey<ScaffoldMessengerState> get key => _key;
}
