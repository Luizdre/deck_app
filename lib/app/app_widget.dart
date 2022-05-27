import 'package:deck/app/components/scaffold_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yu-Gi-Oh Cards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      builder: (context, child) {
        return ScaffoldMessenger(
          child: child!,
          key: CardScaffold.instance.key,
        );
      },
    ).modular();
  }
}
