import 'package:deck/app/domain/model/card_model.dart';
import 'package:deck/app/domain/usecase/card_usecase.dart';
import 'package:deck/app/helpers/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase extends ChangeNotifier with Store {
  final CardUsecase _cardUsecase;
  Utils utils;

  HomeStoreBase(this._cardUsecase, this.utils);

  List<CardModel> cards = [];

  ValueNotifier<List<CardModel>> filteredCards = ValueNotifier([]);

  String filter = '';

  @observable
  bool willFilter = false;

  @observable
  bool isLoading = false;

  @action
  turnFilter() => willFilter = !willFilter;

  Future listCards() async {
    isLoading = true;
    cards = await _cardUsecase.getCards();
    filteredCards.value = cards;
    filteredCards.notifyListeners();
    isLoading = false;
  }

  filterCard(String name) {
    filteredCards.value =
        _cardUsecase.filterCard(filteredCards.value, cards, filter, name);
    filteredCards.notifyListeners();
  }
}
