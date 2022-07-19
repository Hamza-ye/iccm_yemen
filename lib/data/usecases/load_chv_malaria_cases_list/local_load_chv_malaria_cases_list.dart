import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/usecases.dart';
import '../../cache/cache.dart';
import '../../models/models.dart';

class LocalLoadChvMalariaCasesList implements LoadChvMalariaCasesList {
  final CacheStorage cacheStorage;

  LocalLoadChvMalariaCasesList({required this.cacheStorage});

  @override
  Future<List<ChvMalariaCaseEntity>> load() async {
    try {
      final data = await cacheStorage.fetch('chv_malaria_cases');
      if (data?.isEmpty != false) {
        throw Exception();
      }
      return _mapToEntity(data);
    } catch (error) {
      throw DomainError.unexpected;
    }
  }

  Future<void> validate() async {
    try {
      final data = await cacheStorage.fetch('chv_malaria_cases');
      _mapToEntity(data);
    } catch (error) {
      await cacheStorage.delete('chv_malaria_cases');
    }
  }

  Future<void> save(List<ChvMalariaCaseEntity> surveys) async {
    try {
      final json = _mapToJson(surveys);
      await cacheStorage.save(key: 'chv_malaria_cases', value: json);
    } catch (error) {
      throw DomainError.unexpected;
    }
  }

  List<ChvMalariaCaseEntity> _mapToEntity(dynamic list) => list
      .map<ChvMalariaCaseEntity>(
          (json) => LocalChvMalariaCaseModel.fromJson(json).toEntity())
      .toList();

  List<Map> _mapToJson(List<ChvMalariaCaseEntity> list) => list
      .map((entity) => LocalChvMalariaCaseModel.fromEntity(entity).toJson())
      .toList();
}
