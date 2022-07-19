import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/usecases.dart';
import '../../http/http.dart';
import '../../models/models.dart';

class RemoteLoadChvMalariaCasesList implements LoadChvMalariaCasesList {
  final String url;
  final HttpClient httpClient;

  RemoteLoadChvMalariaCasesList({required this.url, required this.httpClient});

  @override
  Future<List<ChvMalariaCaseEntity>> load() async {
    try {
      final httpResponse = await httpClient.request(url: url, method: 'get');
      return httpResponse
          .map<ChvMalariaCaseEntity>(
              (json) => RemoteChvMalariaCaseModel.fromJson(json).toEntity())
          .toList();
    } on HttpError catch (error) {
      throw error == HttpError.forbidden
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
