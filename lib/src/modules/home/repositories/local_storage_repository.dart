import 'package:fastlocation/src/modules/home/model/cep_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageRepository {
  static const String _boxName = 'cepHistory';

  Future<void> saveAddress(CepModel address) async {
    final box = await Hive.openBox<Map<dynamic, dynamic>>(_boxName);
    await box.add(address.toJson());
  }

  Future<List<CepModel>> getHistory() async {
    final box = await Hive.openBox<Map<dynamic, dynamic>>(_boxName);
    return box.values.map((item) => CepModel.fromJson(Map<String, dynamic>.from(item))).toList();
  }
}