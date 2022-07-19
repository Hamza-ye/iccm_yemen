import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/usecases.dart';
import '../../http/http.dart';
import '../../models/models.dart';

class RemoteLoadChvMalariaCase implements LoadChvMalariaCase {
  final String url;
  final HttpClient httpClient;

  RemoteLoadChvMalariaCase({required this.url, required this.httpClient});

  @override
  Future<ChvMalariaCaseEntity> loadByChvMalariaCase(
      {required String id}) async {
    try {
      final json = await httpClient.request(url: url, method: 'get');
      return RemoteChvMalariaCaseModel.fromJson(json).toEntity();
    } on HttpError catch (error) {
      throw error == HttpError.forbidden
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
