import '../../domain/entities/entities.dart';
import 'models.dart';

class LocalChvMalariaCaseModel implements IdentifiableWithUuidObject {
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

  double? age;

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
  LocalOrganisationUnitModel? subVillage;
  LocalUserModel? createdBy;
  LocalUserModel? updatedBy;
  LocalChvModel? chv;
  LocalGpsLocationModel? gpsLocation;

  // LocalAgeGroupModel? ageGroup;
  bool? synced;

  LocalChvMalariaCaseModel(
      {this.id,
      this.uid,
      this.uuid,
      this.code,
      this.name,
      this.age,
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
      this.synced});

  LocalChvMalariaCaseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    uuid = json['uuid'];
    name = json['name'];
    age = json['age'];
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
        ? LocalOrganisationUnitModel.fromJson(json['subVillage'])
        : null;
    createdBy = json['createdBy'] != null
        ? LocalUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? LocalUserModel.fromJson(json['updatedBy'])
        : null;
    chv = json['chv'] != null ? LocalChvModel.fromJson(json['chv']) : null;
    gpsLocation = json['gpsLocation'] != null
        ? LocalGpsLocationModel.fromJson(json['gpsLocation'])
        : null;
    // ageGroup = json['ageGroup'] != null
    //     ? LocalAgeGroupModel.fromJson(json['ageGroup'])
    //     : null;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['uuid'] = uuid;
    data['name'] = name;
    data['age'] = age;
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
    // if (ageGroup != null) {
    //   data['ageGroup'] = ageGroup?.toJson();
    // }
    return data;
  }

  factory LocalChvMalariaCaseModel.fromEntity(ChvMalariaCaseEntity entity) =>
      LocalChvMalariaCaseModel(
          id: entity.id,
          uid: entity.uid,
          code: entity.code,
          uuid: entity.uuid,
          name: entity.name,
          age: entity.age,
          lastSynced: entity.lastSynced,
          deleted: entity.deleted,
          dateOfExamination: entity.dateOfExamination,
          mobile: entity.mobile,
          gender: entity.gender,
          isPregnant: entity.isPregnant,
          malariaTestResult: entity.malariaTestResult,
          severity: entity.severity,
          drugsGiven: entity.drugsGiven,
          suppsGiven: entity.suppsGiven,
          referral: entity.referral,
          barImageUrl: entity.barImageUrl,
          comment: entity.comment,
          status: entity.status,
          subVillage: LocalOrganisationUnitModel.fromEntity(entity.subVillage),
          chv: LocalChvModel.fromEntity(entity.chv),
          gpsLocation: LocalGpsLocationModel.fromEntity(entity.gpsLocation),
          // ageGroup: LocalAgeGroupModel.fromEntity(entity.ageGroup),
          synced: entity.synced);

  ChvMalariaCaseEntity toEntity() => ChvMalariaCaseEntity(
      id: id,
      uid: uid,
      code: code,
      uuid: uuid,
      name: name,
      age: age,
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
      // ageGroup: ageGroup?.toEntity(),
      synced: synced);
}
