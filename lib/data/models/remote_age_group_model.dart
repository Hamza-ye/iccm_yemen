
import '../../domain/entities/entities.dart';
import 'models.dart';

class RemoteAgeGroupModel implements IdentifiableObject {
  @override
  int? id;
  @override
  String? uid;
  @override
  String? code;
  @override
  String? name;
  @override
  DateTime? created;
  @override
  DateTime? updated;

  String? shortName;
  String? description;

  RemoteAgeGroupModel({this.id,
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
    created = DateTime.parse(json['created'].toString());
    updated = DateTime.parse(json['updated'].toString());
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['code'] = code;
    data['name'] = name;
    data['shortName'] = shortName;
    data['description'] = description;
    data['created'] = created;
    data['updated'] = updated;
    return data;
  }

  AgeGroupEntity toEntity() =>
      AgeGroupEntity(id: id,
          uid: uid,
          code: code,
          name: name,
          shortName: shortName,
          description: description);
}
