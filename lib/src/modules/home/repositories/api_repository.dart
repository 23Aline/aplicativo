import 'package:dio/dio.dart';
import 'package:fastlocation/src/http/http_service.dart';
import 'package:fastlocation/src/modules/home/model/cep_model.dart';

class ApiRepository {
  final HttpService _httpService = HttpService();

  Future<CepModel> getAddressByCep(String cep) async {
    try {
      final response = await _httpService.dio.get('$cep/json/');
      if (response.statusCode == 200 && response.data != null) {
        if (response.data['erro'] == true) {
          throw Exception('CEP não encontrado');
        }
        return CepModel.fromJson(response.data);
      } else {
        throw Exception('Falha na requisição');
      }
    } catch (e) {
      throw Exception('Ocorreu um erro: $e');
    }
  }
}