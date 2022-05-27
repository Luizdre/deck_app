import 'package:deck/app/domain/model/card_model.dart';
import 'package:deck/app/domain/repositories/card_repository.dart';

abstract class ICardUsecase {
  Future<List<CardModel>> getCards();
}

class CardUsecase implements ICardUsecase {
  final CardRepository _cardRepository;

  CardUsecase(this._cardRepository);
  @override
  Future<List<CardModel>> getCards() async {
    return await _cardRepository.getCards();
  }

  List<CardModel> filterCard(List<CardModel> filteredCards,
      List<CardModel> cards, String filter, String name) {
    filter = name;
    filter.isEmpty
        ? filteredCards = cards
        : filteredCards = cards
            .where((element) =>
                element.name!.toLowerCase().contains(filter.toLowerCase()))
            .toList();
    return filteredCards;
  }
}
