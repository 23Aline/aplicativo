import 'package:fastlocation/src/modules/home/model/cep_model.dart';
import 'package:fastlocation/src/modules/home/repositories/api_repository.dart';
import 'package:fastlocation/src/modules/home/repositories/local_storage_repository.dart';

class CepService {
  final ApiRepository _apiRepository = ApiRepository();
  final LocalStorageRepository _localStorageRepository = LocalStorageRepository();

  Future<CepModel> getAddressByCep(String cep) async {
    try {
      final address = await _apiRepository.getAddressByCep(cep);
      await _localStorageRepository.saveAddress(address);
      return address;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CepModel>> getHistory() async {
    return await _localStorageRepository.getHistory();
  }
}