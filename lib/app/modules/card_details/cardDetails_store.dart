// ignore_for_file: file_names

import 'package:deck/app/helpers/utils.dart';
import 'package:mobx/mobx.dart';

part 'cardDetails_store.g.dart';

class CardDetailsStore = _CardDetailsStoreBase with _$CardDetailsStore;

abstract class _CardDetailsStoreBase with Store {
  Utils utils;

  _CardDetailsStoreBase(this.utils);

  @observable
  bool isLoading = false;

  @observable
  bool animated = false;

  @action
  turnAnimation() {
    animated = true;
  }
}
