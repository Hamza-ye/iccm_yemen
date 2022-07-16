import '../../domain/entities/entities.dart';
import '../http/http.dart';

class RemoteAccountModel {
  final String accessToken;

  RemoteAccountModel({ required this.accessToken });

  factory RemoteAccountModel.fromJson(Map json) {
    if (!json.containsKey('id_token')) {
      throw HttpError.invalidData;
    }
    return RemoteAccountModel(accessToken: json['id_token']);
  }

  AccountEntity toEntity() => AccountEntity(token: accessToken);
}