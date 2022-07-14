import '../../domain/entities/entities.dart';
import 'models.dart';

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
  DateTime? created;

  @override
  DateTime? updated;

  bool? withdrawn;
  String? dateJoined;
  String? dateWithdrawn;
  String? description;
  RemotePersonModel? person;
  RemoteOrganisationUnitModel? district;
  RemoteOrganisationUnitModel? homeSubvillage;
  RemoteUserModel? createdBy;
  RemoteUserModel? updatedBy;
  RemoteOrganisationUnitModel? managingHf;

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
      this.district,
      this.homeSubvillage,
      this.createdBy,
      this.updatedBy,
      this.managingHf});

  RemoteChvModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    created = DateTime.parse(json['created'].toString());
    updated = DateTime.parse(json['updated'].toString());
    withdrawn = json['withdrawn'];
    dateJoined = json['dateJoined'];
    dateWithdrawn = json['dateWithdrawn'];
    description = json['description'];
    person = json['person'] != null
        ? RemotePersonModel.fromJson(json['person'])
        : null;
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
    data['id'] = id;
    data['uid'] = uid;
    data['code'] = code;
    data['created'] = created;
    data['updated'] = updated;
    data['withdrawn'] = withdrawn;
    data['dateJoined'] = dateJoined;
    data['dateWithdrawn'] = dateWithdrawn;
    data['description'] = description;
    if (person != null) {
      data['person'] = person?.toJson();
    }
    if (district != null) {
      data['district'] = district?.toJson();
    }
    if (homeSubvillage != null) {
      data['homeSubvillage'] = homeSubvillage?.toJson();
    }
    if (createdBy != null) {
      data['createdBy'] = createdBy?.toJson();
    }
    if (updatedBy != null) {
      data['updatedBy'] = updatedBy?.toJson();
    }
    if (managingHf != null) {
      data['managingHf'] = managingHf?.toJson();
    }
    return data;
  }

  ChvEntity toEntity() => ChvEntity(
      id: id,
      uid: uid,
      code: code,
      name: name,
      withdrawn: withdrawn,
      dateJoined: dateJoined,
      dateWithdrawn: dateWithdrawn,
      description: description,
      person: person?.toEntity(),
      district: district?.toEntity(),
      homeSubvillage: homeSubvillage?.toEntity(),
      managingHf: managingHf?.toEntity());
}
