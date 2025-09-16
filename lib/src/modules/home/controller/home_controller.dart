import 'package:mobx/mobx.dart';
import 'package:fastlocation/src/modules/home/model/cep_model.dart';
import 'package:fastlocation/src/modules/home/service/cep_service.dart';

part 'home_controller.g.dart'; // Lembre-se de gerar este arquivo!

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
      errorMessage = e.toString();
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