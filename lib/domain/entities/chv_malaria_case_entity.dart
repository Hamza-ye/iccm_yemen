import 'entities.dart';

class ChvMalariaCaseEntity extends IdentifiableWithUuidEntity {
  @override
  final int? id;

  @override
  final String? uid;

  @override
  final String? code;

  @override
  final String? uuid;

  @override
  final String? name;

  final DateTime? lastSynced;
  final bool? deleted;
  final DateTime? dateOfExamination;
  final String? mobile;
  final double? age;
  final String? gender;
  final bool? isPregnant;
  final String? malariaTestResult;
  final String? severity;
  final int? drugsGiven;
  final int? suppsGiven;
  final bool? referral;
  final String? barImageUrl;
  final String? comment;
  final String? status;
  final OrganisationUnitEntity? subVillage;

  final ChvEntity? chv;
  final GpsLocationEntity? gpsLocation;

  // final AgeGroupEntity? ageGroup;
  final bool? synced;

  const ChvMalariaCaseEntity(
      {required this.id,
      required this.uid,
      required this.code,
      required this.uuid,
      required this.age,
      required this.name,
      required this.lastSynced,
      required this.deleted,
      required this.dateOfExamination,
      required this.mobile,
      required this.gender,
      required this.isPregnant,
      required this.malariaTestResult,
      required this.severity,
      required this.drugsGiven,
      required this.suppsGiven,
      required this.referral,
      required this.barImageUrl,
      required this.comment,
      required this.status,
      required this.subVillage,
      required this.chv,
      required this.gpsLocation,
      required this.synced});

  @override
  List<Object?> get props => super.props
    ..addAll([
      dateOfExamination,
      mobile,
      age,
      gender,
      isPregnant,
      malariaTestResult,
      severity,
      drugsGiven,
      suppsGiven,
      referral,
      comment,
      status,
      subVillage,
      chv,
      gpsLocation,
      synced,
      lastSynced,
    ]);

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uuid'] = uuid;
    data['name'] = name;
    data['age'] = age;
    // data['created'] = created;
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
    data['subVillage'] = subVillage;
    // data['createdBy'] = createdBy;
    data['chv'] = chv;
    data['gpsLocation'] = gpsLocation;
    return data;
  }
}
