import 'common/common.dart';
import 'models.dart';

// TODO Make immutable
class RemotePersonModel implements IdentifiableObject {
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

  String? uuid;
  String? mobile;
  String? dateOfBirth;
  bool? disabled;
  IdentifiableObject? userInfo;
  IdentifiableObject? createdBy;
  IdentifiableObject? updatedBy;
  List<IdentifiableObject>? organisationUnits;
  List<IdentifiableObject>? dataViewOrganisationUnits;

  RemotePersonModel(
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

  RemotePersonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    name = json['name'];
    created = json['created'];
    updated = json['updated'];
    uuid = json['uuid'];
    mobile = json['mobile'];
    dateOfBirth = json['dateOfBirth'];
    disabled = json['disabled'];
    userInfo = json['userInfo'] != null
        ? new RemoteUserModel.fromJson(json['userInfo'])
        : null;
    createdBy = json['createdBy'] != null
        ? new RemoteUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? new RemoteUserModel.fromJson(json['updatedBy'])
        : null;
    if (json['organisationUnits'] != null) {
      organisationUnits = <RemoteOrganisationUnitModel>[];
      json['organisationUnits'].forEach((v) {
        organisationUnits!.add(new RemoteOrganisationUnitModel.fromJson(v));
      });
    }
    if (json['dataViewOrganisationUnits'] != null) {
      dataViewOrganisationUnits = <RemoteOrganisationUnitModel>[];
      json['dataViewOrganisationUnits'].forEach((v) {
        dataViewOrganisationUnits!
            .add(new RemoteOrganisationUnitModel.fromJson(v));
      });
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['code'] = this.code;
    data['name'] = this.name;
    data['created'] = this.created;
    data['updated'] = this.updated;
    data['uuid'] = this.uuid;
    data['mobile'] = this.mobile;
    data['dateOfBirth'] = this.dateOfBirth;
    data['disabled'] = this.disabled;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    if (this.createdBy != null) {
      data['createdBy'] = this.createdBy!.toJson();
    }
    if (this.updatedBy != null) {
      data['updatedBy'] = this.updatedBy!.toJson();
    }
    if (this.organisationUnits != null) {
      data['organisationUnits'] =
          this.organisationUnits!.map((v) => v.toJson()).toList();
    }
    if (this.dataViewOrganisationUnits != null) {
      data['dataViewOrganisationUnits'] =
          this.dataViewOrganisationUnits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
