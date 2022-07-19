import '../../domain/entities/entities.dart';
import 'models.dart';

class RemoteChvMalariaCaseModel implements IdentifiableWithUuidObject {
  @override
  int? id;

  @override
  String? uid;

  @override
  String? uuid;

  @override
  String? code;

  @override
  String? name;

  @override
  DateTime? created;

  @override
  DateTime? updated;

  DateTime? lastSynced;
  bool? deleted;
  DateTime? dateOfExamination;
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
  RemoteOrganisationUnitModel? subVillage;
  RemoteUserModel? createdBy;
  RemoteUserModel? updatedBy;
  RemoteChvModel? chv;
  RemoteGpsLocationModel? gpsLocation;
  RemoteAgeGroupModel? ageGroup;
  bool? synced;

  RemoteChvMalariaCaseModel(
      {this.id,
      this.uid,
      this.uuid,
      this.code,
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
      this.ageGroup,
      this.synced});

  RemoteChvMalariaCaseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    uuid = json['uuid'];
    name = json['name'];
    created = DateTime.parse(json['created'].toString());
    updated = DateTime.parse(json['updated'].toString());
    lastSynced = DateTime.parse(json['lastSynced'].toString());
    deleted = json['deleted'];
    dateOfExamination = DateTime.parse(json['dateOfExamination'].toString());
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
        ? RemoteOrganisationUnitModel.fromJson(json['subVillage'])
        : null;
    createdBy = json['createdBy'] != null
        ? RemoteUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? RemoteUserModel.fromJson(json['updatedBy'])
        : null;
    chv = json['chv'] != null ? RemoteChvModel.fromJson(json['chv']) : null;
    gpsLocation = json['gpsLocation'] != null
        ? RemoteGpsLocationModel.fromJson(json['gpsLocation'])
        : null;
    ageGroup = json['ageGroup'] != null
        ? RemoteAgeGroupModel.fromJson(json['ageGroup'])
        : null;
  }

  // TODO No need for toJson function in a remote model
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['uuid'] = uuid;
    data['name'] = name;
    data['created'] = created;
    data['updated'] = updated;
    data['lastSynced'] = lastSynced;
    data['deleted'] = deleted;
    data['dateOfExamination'] = dateOfExamination;
    data['mobile'] = mobile;
    data['gender'] = gender;
    data['isPregnant'] = isPregnant;
    data['malariaTestResult'] = malariaTestResult;
    data['severity'] = severity;
    data['drugsGiven'] = drugsGiven;
    data['suppsGiven'] = suppsGiven;
    data['referral'] = referral;
    data['barImageUrl'] = barImageUrl;
    data['comment'] = comment;
    data['status'] = status;
    if (subVillage != null) {
      data['subVillage'] = subVillage?.toJson();
    }
    if (createdBy != null) {
      data['createdBy'] = createdBy?.toJson();
    }
    if (updatedBy != null) {
      data['updatedBy'] = updatedBy?.toJson();
    }
    if (chv != null) {
      data['chv'] = chv?.toJson();
    }
    if (gpsLocation != null) {
      data['gpsLocation'] = gpsLocation?.toJson();
    }
    if (ageGroup != null) {
      data['ageGroup'] = ageGroup?.toJson();
    }
    return data;
  }

  ChvMalariaCaseEntity toEntity() => ChvMalariaCaseEntity(
      id: id,
      uid: uid,
      code: code,
      uuid: uuid,
      name: name,
      lastSynced: lastSynced,
      deleted: deleted,
      dateOfExamination: dateOfExamination,
      mobile: mobile,
      gender: gender,
      isPregnant: isPregnant,
      malariaTestResult: malariaTestResult,
      severity: severity,
      drugsGiven: drugsGiven,
      suppsGiven: suppsGiven,
      referral: referral,
      barImageUrl: barImageUrl,
      comment: comment,
      status: status,
      subVillage: subVillage?.toEntity(),
      chv: chv?.toEntity(),
      gpsLocation: gpsLocation?.toEntity(),
      ageGroup: ageGroup?.toEntity(),
      synced: synced);
}
