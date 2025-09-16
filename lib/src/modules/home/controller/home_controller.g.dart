// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_HomeControllerBase.isLoading', context: context);

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

  late final _$lastAddressAtom =
      Atom(name: '_HomeControllerBase.lastAddress', context: context);

  @override
  CepModel? get lastAddress {
    _$lastAddressAtom.reportRead();
    return super.lastAddress;
  }

  @override
  set lastAddress(CepModel? value) {
    _$lastAddressAtom.reportWrite(value, super.lastAddress, () {
      super.lastAddress = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_HomeControllerBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$getAddressByCepAsyncAction =
      AsyncAction('_HomeControllerBase.getAddressByCep', context: context);

  @override
  Future<void> getAddressByCep(String cep) {
    return _$getAddressByCepAsyncAction.run(() => super.getAddressByCep(cep));
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  void clearFields() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.clearFields');
    try {
      return super.clearFields();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
lastAddress: ${lastAddress},
errorMessage: ${errorMessage}
    ''';
  }
}
