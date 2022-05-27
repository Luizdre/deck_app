import 'package:deck/app/domain/model/card_model.dart';

abstract class CardRepository {
  Future<List<CardModel>> getCards();
}
