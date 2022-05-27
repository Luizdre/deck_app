// ignore_for_file: file_names

import 'package:deck/app/modules/card_details/cardDetails_Page.dart';
import 'package:deck/app/modules/card_details/cardDetails_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardDetailsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CardDetailsStore(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => CardDetailsPage(
              card: args.data,
            )),
  ];
}
