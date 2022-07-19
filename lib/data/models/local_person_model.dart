import '../../domain/entities/entities.dart';
import 'models.dart';

class LocalPersonModel implements IdentifiableObject {
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

  String? uuid;
  String? mobile;
  String? dateOfBirth;
  bool? disabled;
  LocalUserModel? userInfo;
  LocalUserModel? createdBy;
  LocalUserModel? updatedBy;
  List<LocalOrganisationUnitModel>? organisationUnits;
  List<LocalOrganisationUnitModel>? dataViewOrganisationUnits;

  LocalPersonModel(
      {this.id,
      this.uid,
      this.code,
      this.name,
      this.created,
      this.updated,
      this.uuid,
      this.mobile,
      this.dateOfBirth,
      this.disabled,
      this.userInfo,
      this.createdBy,
      this.updatedBy,
      this.organisationUnits,
      this.dataViewOrganisationUnits});

  factory LocalPersonModel.fromEntity(PersonEntity? entity) => LocalPersonModel(
        id: entity?.id,
        uid: entity?.uid,
        code: entity?.code,
        name: entity?.name,
        uuid: entity?.uuid,
        mobile: entity?.mobile,
        userInfo: LocalUserModel.fromEntity(entity?.userInfo),
        organisationUnits: entity?.organisationUnits
            ?.map((orgUnit) => LocalOrganisationUnitModel.fromEntity(orgUnit))
            .toList(),
        dataViewOrganisationUnits: entity?.dataViewOrganisationUnits
            ?.map((orgUnit) => LocalOrganisationUnitModel.fromEntity(orgUnit))
            .toList(),
      );

  LocalPersonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    name = json['name'];
    created = DateTime.parse(json['created'].toString());
    updated = DateTime.parse(json['updated'].toString());
    uuid = json['uuid'];
    mobile = json['mobile'];
    dateOfBirth = json['dateOfBirth'];
    disabled = json['disabled'];
    userInfo = json['userInfo'] != null
        ? LocalUserModel.fromJson(json['userInfo'])
        : null;
    createdBy = json['createdBy'] != null
        ? LocalUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? LocalUserModel.fromJson(json['updatedBy'])
        : null;
    if (json['organisationUnits'] != null) {
      organisationUnits = <LocalOrganisationUnitModel>[];
      json['organisationUnits'].forEach((v) {
        organisationUnits!.add(LocalOrganisationUnitModel.fromJson(v));
      });
    }
    if (json['dataViewOrganisationUnits'] != null) {
      dataViewOrganisationUnits = <LocalOrganisationUnitModel>[];
      json['dataViewOrganisationUnits'].forEach((v) {
        dataViewOrganisationUnits!.add(LocalOrganisationUnitModel.fromJson(v));
      });
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['code'] = code;
    data['name'] = name;
    data['created'] = created;
    data['updated'] = updated;
    data['uuid'] = uuid;
    data['mobile'] = mobile;
    data['dateOfBirth'] = dateOfBirth;
    data['disabled'] = disabled;
    if (userInfo != null) {
      data['userInfo'] = userInfo?.toJson();
    }
    if (createdBy != null) {
      data['createdBy'] = createdBy?.toJson();
    }
    if (updatedBy != null) {
      data['updatedBy'] = updatedBy?.toJson();
    }
    if (organisationUnits != null) {
      data['organisationUnits'] =
          organisationUnits?.map((v) => v.toJson()).toList();
    }
    if (dataViewOrganisationUnits != null) {
      data['dataViewOrganisationUnits'] =
          dataViewOrganisationUnits?.map((v) => v.toJson()).toList();
    }
    return data;
  }

  PersonEntity toEntity() => PersonEntity(
      id: id,
      uid: uid,
      code: code,
      name: name,
      uuid: uuid,
      mobile: mobile,
      userInfo: userInfo?.toEntity(),
      organisationUnits: organisationUnits?.map((e) => e.toEntity()).toList(),
      dataViewOrganisationUnits:
          dataViewOrganisationUnits?.map((e) => e.toEntity()).toList());
}
