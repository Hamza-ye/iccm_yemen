import '../../../domain/entities/entities.dart';
import 'models.dart';

class LocalChvModel implements IdentifiableObject {
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
  LocalPersonModel? person;
  LocalOrganisationUnitModel? district;
  LocalOrganisationUnitModel? homeSubvillage;
  LocalUserModel? createdBy;
  LocalUserModel? updatedBy;
  LocalOrganisationUnitModel? managingHf;

  LocalChvModel(
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

  LocalChvModel.fromJson(Map<String, dynamic> json) {
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
        ? LocalPersonModel.fromJson(json['person'])
        : null;
    district = json['district'] != null
        ? LocalOrganisationUnitModel.fromJson(json['district'])
        : null;
    homeSubvillage = json['homeSubvillage'] != null
        ? LocalOrganisationUnitModel.fromJson(json['homeSubvillage'])
        : null;
    createdBy = json['createdBy'] != null
        ? LocalUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? LocalUserModel.fromJson(json['updatedBy'])
        : null;
    managingHf = json['managingHf'] != null
        ? LocalOrganisationUnitModel.fromJson(json['managingHf'])
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

  factory LocalChvModel.fromEntity(ChvEntity? entity) => LocalChvModel(
        id: entity?.id,
        uid: entity?.uid,
        code: entity?.code,
        withdrawn: entity?.withdrawn,
        dateJoined: entity?.dateJoined,
        dateWithdrawn: entity?.dateWithdrawn,
        description: entity?.description,
        person: LocalPersonModel.fromEntity(entity?.person),
        district: LocalOrganisationUnitModel.fromEntity(entity?.district),
        homeSubvillage:
            LocalOrganisationUnitModel.fromEntity(entity?.homeSubvillage),
        managingHf: LocalOrganisationUnitModel.fromEntity(entity?.managingHf),
      );

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
