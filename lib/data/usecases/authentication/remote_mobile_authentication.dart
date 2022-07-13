import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/usecases.dart';
import '../../http/http.dart';
import '../../models/models.dart';

class RemoteAuthentication implements MobileAuthentication {
  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({
    required this.httpClient,
    required this.url
  });

  @override
  Future<AccountEntity> auth(MobileAuthenticationParams params) async {
    final body = RemoteMobileAuthenticationParams.fromDomain(params).toJson();
    try {
      final httpResponse = await httpClient.request(url: url, method: 'post', body: body);
      return RemoteAccountModel.fromJson(httpResponse).toEntity();
    } on HttpError catch(error) {
      throw error == HttpError.unauthorized
        ? DomainError.invalidCredentials
        : DomainError.unexpected;
    }
  }
}

class RemoteMobileAuthenticationParams {
  final String mobileNo;

  RemoteMobileAuthenticationParams({
    required this.mobileNo,
  });

  factory RemoteMobileAuthenticationParams.fromDomain(MobileAuthenticationParams params) =>
    RemoteMobileAuthenticationParams(mobileNo: params.mobileNo);

  Map toJson() => {'email': mobileNo};
}