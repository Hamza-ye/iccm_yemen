import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/usecases.dart';
import '../../cache/cache.dart';
import '../../models/models.dart';

class LocalLoadChvMalariaCase implements LoadChvMalariaCase {
  final CacheStorage cacheStorage;

  LocalLoadChvMalariaCase({required this.cacheStorage});

  @override
  Future<ChvMalariaCaseEntity> loadByChvMalariaCase(
      {required String id}) async {
    try {
      final data = await cacheStorage.fetch('chv-malaria-case/$id');
      if (data?.isEmpty != false) {
        throw Exception();
      }
      return LocalChvMalariaCaseModel.fromJson(data).toEntity();
    } catch (error) {
      throw DomainError.unexpected;
    }
  }

  Future<void> validate(String surveyId) async {
    try {
      final data = await cacheStorage.fetch('chv-malaria-case/$surveyId');
      LocalChvMalariaCaseModel.fromJson(data).toEntity();
    } catch (error) {
      await cacheStorage.delete('chv-malaria-case/$surveyId');
    }
  }

  Future<void> save(ChvMalariaCaseEntity chvMalariaCase) async {
    try {
      final json = LocalChvMalariaCaseModel.fromEntity(chvMalariaCase).toJson();
      await cacheStorage.save(
          key: 'chv-malaria-case/${chvMalariaCase.id}', value: json);
    } catch (error) {
      throw DomainError.unexpected;
    }
  }
}
