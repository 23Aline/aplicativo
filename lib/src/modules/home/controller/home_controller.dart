import 'package:mobx/mobx.dart';
import 'package:fastlocation/src/modules/home/model/cep_model.dart';
import 'package:fastlocation/src/modules/home/service/cep_service.dart';
import 'package:dio/dio.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final CepService _cepService = CepService();

  @observable
  bool isLoading = false;

  @observable
  CepModel? lastAddress;

  @observable
  String? errorMessage;

  @action
  Future<void> getAddressByCep(String cep) async {
    isLoading = true;
    errorMessage = null;

    try {
      lastAddress = await _cepService.getAddressByCep(cep);
    } catch (e) {
      if (e is DioException) {
        errorMessage = e.message; 
      } 
      else if (e is Exception) {
        final message = e.toString();
        errorMessage = message.replaceAll(RegExp(r'^Exception:\s*'), '');
      } 
      else {
        errorMessage = e.toString();
      }
    } finally {
      isLoading = false;
    }
  }

  @action
  void clearFields() {
    lastAddress = null;
    errorMessage = null;
  }
}
