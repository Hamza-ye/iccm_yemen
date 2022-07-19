import '../../domain/entities/entities.dart';
import '../../domain/helpers/helpers.dart';
import '../../domain/usecases/usecases.dart';
import '../../data/usecases/usecases.dart';

class RemoteLoadChvMalariaCaseWithLocalFallback implements LoadChvMalariaCase {
  final RemoteLoadChvMalariaCase remote;
  final LocalLoadChvMalariaCase local;

  RemoteLoadChvMalariaCaseWithLocalFallback({
    required this.remote,
    required this.local,
  });

  Future<ChvMalariaCaseEntity> loadByChvMalariaCase(
      {required String id}) async {
    try {
      final chvMalariaCase = await remote.loadByChvMalariaCase(id: id);
      await local.save(chvMalariaCase);
      return chvMalariaCase;
    } catch (error) {
      if (error == DomainError.accessDenied) {
        rethrow;
      }
      await local.validate(id);
      return await local.loadByChvMalariaCase(id: id);
    }
  }
}
