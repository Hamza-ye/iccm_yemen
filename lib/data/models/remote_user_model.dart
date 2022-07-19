import '../../domain/entities/entities.dart';
import 'common/common.dart';

class RemoteUserModel implements IdentifiableObject {
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

  RemoteUserModel(
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

  RemoteUserModel.fromJson(Map<String, dynamic> json) {
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

  // TODO No need for toJson function in a remote model
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

  UserEntity toEntity() =>
      UserEntity(id: id, uid: uid, code: code, name: name, login: login);
}
