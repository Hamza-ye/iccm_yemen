import '../../domain/entities/entities.dart';
import 'common/common.dart';

class LocalUserModel implements IdentifiableObject {
  @override
  int? id;

  @override
  String? uid;

  @override
  String? code;

  @override
  String? get name {
    return '$login';
  }

  @override
  DateTime? created;

  @override
  DateTime? updated;

  String? login;
  String? firstName;
  String? lastName;
  String? mobileNo;
  String? email;
  bool? activated;
  String? langKey;
  String? imageUrl;

  LocalUserModel(
      {this.id,
      this.uid,
      this.code,
      this.login,
      this.firstName,
      this.lastName,
      this.mobileNo,
      this.email,
      this.activated,
      this.langKey,
      this.imageUrl});

  LocalUserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    login = json['login'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    activated = json['activated'];
    langKey = json['langKey'];
    imageUrl = json['imageUrl'];
    created = DateTime.parse(json['created'].toString());
    updated = DateTime.parse(json['updated'].toString());
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['code'] = code;
    data['login'] = login;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['activated'] = activated;
    data['langKey'] = langKey;
    data['imageUrl'] = imageUrl;
    return data;
  }

  factory LocalUserModel.fromEntity(UserEntity? entity) => LocalUserModel(
        id: entity?.id,
        uid: entity?.uid,
        code: entity?.code,
      );

  UserEntity toEntity() =>
      UserEntity(id: id, uid: uid, code: code, name: name, login: login);
}
