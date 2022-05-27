import 'package:deck/app/domain/model/card_model.dart';

abstract class CardDatasource {
  Future<List<CardModel>> getCards();
}
