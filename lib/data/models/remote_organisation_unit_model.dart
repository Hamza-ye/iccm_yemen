import 'common/common.dart';

// TODO Make immutable
class RemoteOrganisationUnitModel implements IdentifiableObject {
  @override
  int? id;

  @override
  String? uid;

  @override
  String? code;

  @override
  String? name;

  String? shortName;

  @override
  String? created;

  @override
  String? updated;

  String? path;
  int? hierarchyLevel;
  String? openingDate;
  String? comment;
  String? closedDate;
  String? url;
  String? contactPerson;
  String? address;
  String? email;
  String? phoneNumber;
  String? organisationUnitType;

  RemoteOrganisationUnitModel({
    this.id,
    this.uid,
    this.code,
    this.name,
  });

  RemoteOrganisationUnitModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['code'] = this.code;
    data['name'] = this.name;
    return data;
  }
}
