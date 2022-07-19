import '../../data/usecases/usecases.dart';
import '../../domain/entities/entities.dart';
import '../../domain/helpers/helpers.dart';
import '../../domain/usecases/usecases.dart';

class RemoteLoadChvMalariaCasesListWithLocalFallback
    implements LoadChvMalariaCasesList {
  final RemoteLoadChvMalariaCasesList remote;
  final LocalLoadChvMalariaCasesList local;

  RemoteLoadChvMalariaCasesListWithLocalFallback(
      {required this.remote, required this.local});

  Future<List<ChvMalariaCaseEntity>> load() async {
    try {
      final surveys = await remote.load();
      await local.save(surveys);
      return surveys;
    } catch (error) {
      if (error == DomainError.accessDenied) {
        rethrow;
      }
      await local.validate();
      return await local.load();
    }
  }
}
