import 'package:deck/app/domain/usecase/card_usecase.dart';
import 'package:deck/app/external/datasource/card_datasource_impl.dart';
import 'package:deck/app/helpers/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => HomeStore(i.get(), i.get())),
    Bind.factory((i) => Dio()),
    Bind.factory((i) => CardUsecase(i.get())),
    Bind.factory((i) => CardDatasourceImpl(i.get())),
    Bind.singleton((i) => Utils())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
