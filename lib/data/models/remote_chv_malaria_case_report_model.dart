import 'package:iccm_yemen/data/models/common/common.dart';
import 'package:iccm_yemen/data/models/models.dart';

// TODO Make immutable
class ChvMalariaCaseReportModel implements IdentifiableObject {
  @override
  int? id;

  @override
  String? uid;

  @override
  String? name;

  @override
  String? created;

  @override
  String? updated;

  String? uuid;
  String? lastSynced;
  bool? deleted;
  String? dateOfExamination;
  String? mobile;
  String? gender;
  bool? isPregnant;
  String? malariaTestResult;
  String? severity;
  int? drugsGiven;
  int? suppsGiven;
  bool? referral;
  String? barImageUrl;
  String? comment;
  String? status;
  IdentifiableObject? subVillage;
  IdentifiableObject? createdBy;
  IdentifiableObject? updatedBy;
  IdentifiableObject? chv;
  GpsLocationModel? gpsLocation;
  IdentifiableObject? ageGroup;

  ChvMalariaCaseReportModel(
      {this.id,
      this.uid,
      this.uuid,
      this.name,
      this.created,
      this.updated,
      this.lastSynced,
      this.deleted,
      this.dateOfExamination,
      this.mobile,
      this.gender,
      this.isPregnant,
      this.malariaTestResult,
      this.severity,
      this.drugsGiven,
      this.suppsGiven,
      this.referral,
      this.barImageUrl,
      this.comment,
      this.status,
      this.subVillage,
      this.createdBy,
      this.updatedBy,
      this.chv,
      this.gpsLocation,
      this.ageGroup});

  ChvMalariaCaseReportModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    uuid = json['uuid'];
    name = json['name'];
    created = json['created'];
    updated = json['updated'];
    lastSynced = json['lastSynced'];
    deleted = json['deleted'];
    dateOfExamination = json['dateOfExamination'];
    mobile = json['mobile'];
    gender = json['gender'];
    isPregnant = json['isPregnant'];
    malariaTestResult = json['malariaTestResult'];
    severity = json['severity'];
    drugsGiven = json['drugsGiven'];
    suppsGiven = json['suppsGiven'];
    referral = json['referral'];
    barImageUrl = json['barImageUrl'];
    comment = json['comment'];
    status = json['status'];
    subVillage = json['subVillage'] != null
        ? new RemoteOrganisationUnitModel.fromJson(json['subVillage'])
        : null;
    createdBy = json['createdBy'] != null
        ? new RemoteUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? new RemoteUserModel.fromJson(json['updatedBy'])
        : null;
    chv = json['chv'] != null ? new RemoteChvModel.fromJson(json['chv']) : null;
    gpsLocation = json['gpsLocation'] != null
        ? new GpsLocationModel.fromJson(json['gpsLocation'])
        : null;
    ageGroup = json['ageGroup'] != null
        ? new RemoteAgeGroupModel.fromJson(json['ageGroup'])
        : null;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['created'] = this.created;
    data['updated'] = this.updated;
    data['lastSynced'] = this.lastSynced;
    data['deleted'] = this.deleted;
    data['dateOfExamination'] = this.dateOfExamination;
    data['mobile'] = this.mobile;
    data['gender'] = this.gender;
    data['isPregnant'] = this.isPregnant;
    data['malariaTestResult'] = this.malariaTestResult;
    data['severity'] = this.severity;
    data['drugsGiven'] = this.drugsGiven;
    data['suppsGiven'] = this.suppsGiven;
    data['referral'] = this.referral;
    data['barImageUrl'] = this.barImageUrl;
    data['comment'] = this.comment;
    data['status'] = this.status;
    if (this.subVillage != null) {
      data['subVillage'] = this.subVillage?.toJson();
    }
    if (this.createdBy != null) {
      data['createdBy'] = this.createdBy?.toJson();
    }
    if (this.updatedBy != null) {
      data['updatedBy'] = this.updatedBy?.toJson();
    }
    if (this.chv != null) {
      data['chv'] = this.chv?.toJson();
    }
    if (this.gpsLocation != null) {
      data['gpsLocation'] = this.gpsLocation?.toJson();
    }
    if (this.ageGroup != null) {
      data['ageGroup'] = this.ageGroup?.toJson();
    }
    return data;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
