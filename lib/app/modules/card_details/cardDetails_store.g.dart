// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardDetails_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardDetailsStore on _CardDetailsStoreBase, Store {
  final _$isLoadingAtom = Atom(name: '_CardDetailsStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$animatedAtom = Atom(name: '_CardDetailsStoreBase.animated');

  @override
  bool get animated {
    _$animatedAtom.reportRead();
    return super.animated;
  }

  @override
  set animated(bool value) {
    _$animatedAtom.reportWrite(value, super.animated, () {
      super.animated = value;
    });
  }

  final _$_CardDetailsStoreBaseActionController =
      ActionController(name: '_CardDetailsStoreBase');

  @override
  dynamic turnAnimation() {
    final _$actionInfo = _$_CardDetailsStoreBaseActionController.startAction(
        name: '_CardDetailsStoreBase.turnAnimation');
    try {
      return super.turnAnimation();
    } finally {
      _$_CardDetailsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
animated: ${animated}
    ''';
  }
}
