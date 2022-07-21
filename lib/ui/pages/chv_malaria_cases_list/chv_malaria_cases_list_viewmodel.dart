import 'package:equatable/equatable.dart';

class ChvMalariaCaseViewModel extends Equatable {
  final int? id;
  final String? uuid;
  final String? code;
  final String? name;
  final double? age;

  // TODO make String

  final DateTime? dateOfExamination;

  final DateTime? created;
  final DateTime? updated;
  final bool? deleted;
  final String? mobile;
  final String? gender;
  final bool? isPregnant;
  final String? malariaTestResult;
  final String? severity;
  final int? drugsGiven;
  final int? suppsGiven;
  final bool? referral;
  final String? barImageUrl;
  final String? comment;

  // TODO make nonnullable
  final String? status;

  // TODO make String
  final String? subVillage;

  // TODO make nonnullable
  final String? createdBy;

  // TODO make nonnullable
  final String? chv;

  final String? gpsLocation;

  final bool? locationProvided;

  // TODO make nonnullable
  final bool? canSync;

  // TODO make nonnullable
  final bool? canComplete;

  // TODO make nonnullable
  final bool? completed;

  // TODO make nonnullable
  final bool? synced;

  final List<String>? validationErrors;

  @override
  List get props => [
        id,
        uuid,
        code,
        name,
        age,
        dateOfExamination,
        created,
        updated,
        mobile,
        gender,
        isPregnant,
        malariaTestResult,
        severity,
        drugsGiven,
        suppsGiven,
        referral,
        status,
        barImageUrl,
        comment,
        subVillage,
        chv,
        gpsLocation,
        locationProvided,
        canSync,
        canComplete,
        completed,
        synced,
        validationErrors,
      ];

  ChvMalariaCaseViewModel(
      {this.id,
      this.uuid,
      this.code,
      this.name,
      this.age,
      this.dateOfExamination,
      this.created,
      this.updated,
      this.deleted,
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
      this.chv,
      this.gpsLocation,
      this.locationProvided,
      this.canSync,
      this.canComplete,
      this.completed,
      this.synced,
      this.validationErrors});
}
