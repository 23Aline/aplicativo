import 'package:dio/dio.dart';
import 'package:fastlocation/src/http/http_service.dart';
import 'package:fastlocation/src/modules/home/model/cep_model.dart';

class ApiRepository {
  final HttpService _httpService = HttpService();

  Future<CepModel> getAddressByCep(String cep) async {
    try {
      final response = await _httpService.dio.get('$cep/json/');

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;

        if ((data['erro'] != null && data['erro'] == true) ||
            (data['logradouro'] == null && data['localidade'] == null && data['uf'] == null)) {
          throw Exception('CEP não encontrado. Verifique o número digitado.');
        }

        return CepModel.fromJson(data);
      } else {
        throw Exception('Falha na requisição: status ${response.statusCode}');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('A conexão expirou. Verifique sua internet.');
      }
      if (e.type == DioExceptionType.receiveTimeout) {
        throw Exception('O servidor demorou muito para responder.');
      }
      if (e.response != null) {
        throw Exception('Erro de servidor: ${e.response!.statusCode}');
      }
      rethrow;
    } catch (e) {
      throw Exception('Ocorreu um erro inesperado: $e');
    }
  }
}
