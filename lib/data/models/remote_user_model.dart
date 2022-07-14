import 'package:iccm_yemen/data/models/common/common.dart';

// TODO Make immutable
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
  String? created;

  @override
  String? updated;

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
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['code'] = this.code;
    data['login'] = this.login;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['activated'] = this.activated;
    data['langKey'] = this.langKey;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
