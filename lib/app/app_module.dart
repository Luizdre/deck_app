import 'package:deck/app/modules/card_details/cardDetails_module.dart';
import 'package:deck/app/modules/card_details/cardDetails_store.dart';
import 'package:deck/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => CardDetailsStore(i.get())),
    Bind.factory((i) => HomeStore(i.get(), i.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/card_details/', module: CardDetailsModule())
  ];
}
