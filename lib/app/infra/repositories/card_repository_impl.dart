import 'package:deck/app/domain/model/card_model.dart';
import 'package:deck/app/domain/repositories/card_repository.dart';
import 'package:deck/app/infra/datasource/card_datasource.dart';

class CardRepositoryImpl implements CardRepository {
  final CardDatasource _cardDatasource;

  CardRepositoryImpl(this._cardDatasource);
  @override
  Future<List<CardModel>> getCards() async {
    return await _cardDatasource.getCards();
  }
}
