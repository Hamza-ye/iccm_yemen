import '../../domain/entities/entities.dart';
import '../http/http.dart';

class LocalAccountModel {
  final String accessToken;

  LocalAccountModel({required this.accessToken});

  factory LocalAccountModel.fromJson(Map json) {
    if (!json.containsKey('id_token')) {
      throw HttpError.invalidData;
    }
    return LocalAccountModel(accessToken: json['id_token']);
  }

  AccountEntity toEntity() => AccountEntity(token: accessToken);
}
