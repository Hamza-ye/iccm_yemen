import 'package:iccm_yemen/data/models/common/common.dart';

// TODO Make immutable
class RemoteAgeGroupModel implements IdentifiableObject{
  @override
  int? id;
  @override
  String? uid;
  @override
  String? code;
  @override
  String? name;
  @override
  String? created;
  @override
  String? updated;

  String? shortName;
  String? description;

  RemoteAgeGroupModel(
      {this.id,
        this.uid,
        this.code,
        this.name,
        this.shortName,
        this.description,
        this.created,
        this.updated});

  RemoteAgeGroupModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    name = json['name'];
    shortName = json['shortName'];
    description = json['description'];
    created = json['created'];
    updated = json['updated'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['code'] = this.code;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    data['description'] = this.description;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
