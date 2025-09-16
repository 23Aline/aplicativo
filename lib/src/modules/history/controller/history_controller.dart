import 'package:mobx/mobx.dart';
import 'package:fastlocation/src/modules/home/model/cep_model.dart';
import 'package:fastlocation/src/modules/home/repositories/local_storage_repository.dart';

part 'history_controller.g.dart';

class HistoryController = _HistoryControllerBase with _$HistoryController;

abstract class _HistoryControllerBase with Store {
  final LocalStorageRepository _localStorageRepository = LocalStorageRepository();

  @observable
  ObservableList<CepModel> history = ObservableList<CepModel>();

  @observable
  bool isLoading = false;

  @action
  Future<void> loadHistory() async {
    isLoading = true;
    try {
      final historyList = await _localStorageRepository.getHistory();
      history.clear();
      history.addAll(historyList);
    } catch (e) {
      print('Erro ao carregar histórico: $e');
    } finally {
      isLoading = false;
    }
  }
}