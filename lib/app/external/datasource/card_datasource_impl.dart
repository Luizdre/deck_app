import 'package:deck/app/components/scaffold_state.dart';
import 'package:deck/app/components/snackbar_component.dart';
import 'package:deck/app/domain/errors/errors.dart';
import 'package:deck/app/domain/model/card_model.dart';
import 'package:deck/app/domain/repositories/card_repository.dart';
import 'package:deck/app/helpers/const.dart';
import 'package:dio/dio.dart';

class CardDatasourceImpl implements CardRepository {
  final Dio dio;

  CardDatasourceImpl(this.dio);
  @override
  Future<List<CardModel>> getCards() async {
    String message = '';
    try {
      Response response = await dio.get(urlBase);
      if (response.statusCode == 200) {
        List transform = response.data['data'];
        return transform.map((e) => CardModel.fromJson(e)).toList();
      } else {
        message = 'Falha ao consultar dados';
        CardScaffold.instance
            .showSnackBar(DeckSnackBar(message: message, isError: true));
        throw CardError(message);
      }
    } on CardError {
      CardScaffold.instance
          .showSnackBar(DeckSnackBar(message: message, isError: true));
      message = 'Falha ao listar cartas';
      throw CardError(message);
    }
  }
}
