import 'common/common.dart';
import 'models.dart';

// TODO Make immutable
class RemoteChvModel implements IdentifiableObject {
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

  bool? withdrawn;
  String? dateJoined;
  String? dateWithdrawn;
  String? description;
  RemotePersonModel? person;
  IdentifiableObject? coveredSubVillages;
  IdentifiableObject? district;
  IdentifiableObject? homeSubvillage;
  IdentifiableObject? createdBy;
  IdentifiableObject? updatedBy;
  IdentifiableObject? managingHf;

  RemoteChvModel(
      {this.id,
      this.uid,
      this.code,
      this.created,
      this.updated,
      this.withdrawn,
      this.dateJoined,
      this.dateWithdrawn,
      this.description,
      this.person,
      this.coveredSubVillages,
      this.district,
      this.homeSubvillage,
      this.createdBy,
      this.updatedBy,
      this.managingHf});

  RemoteChvModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    created = json['created'];
    updated = json['updated'];
    withdrawn = json['withdrawn'];
    dateJoined = json['dateJoined'];
    dateWithdrawn = json['dateWithdrawn'];
    description = json['description'];
    person =
        json['person'] != null ? RemotePersonModel.fromJson(json['person']) : null;
    coveredSubVillages = json['coveredSubVillages'];
    district = json['district'] != null
        ? RemoteOrganisationUnitModel.fromJson(json['district'])
        : null;
    homeSubvillage = json['homeSubvillage'] != null
        ? RemoteOrganisationUnitModel.fromJson(json['homeSubvillage'])
        : null;
    createdBy = json['createdBy'] != null
        ? RemoteUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? RemoteUserModel.fromJson(json['updatedBy'])
        : null;
    managingHf = json['managingHf'] != null
        ? RemoteOrganisationUnitModel.fromJson(json['managingHf'])
        : null;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['code'] = this.code;
    data['created'] = this.created;
    data['updated'] = this.updated;
    data['withdrawn'] = this.withdrawn;
    data['dateJoined'] = this.dateJoined;
    data['dateWithdrawn'] = this.dateWithdrawn;
    data['description'] = this.description;
    if (this.person != null) {
      data['person'] = this.person?.toJson();
    }
    data['coveredSubVillages'] = this.coveredSubVillages;
    if (this.district != null) {
      data['district'] = this.district?.toJson();
    }
    if (this.homeSubvillage != null) {
      data['homeSubvillage'] = this.homeSubvillage?.toJson();
    }
    if (this.createdBy != null) {
      data['createdBy'] = this.createdBy?.toJson();
    }
    if (this.updatedBy != null) {
      data['updatedBy'] = this.updatedBy?.toJson();
    }
    if (this.managingHf != null) {
      data['managingHf'] = this.managingHf?.toJson();
    }
    return data;
  }
}


