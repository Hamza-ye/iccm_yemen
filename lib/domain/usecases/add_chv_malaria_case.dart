import 'package:equatable/equatable.dart';
import 'package:iccm_yemen/domain/entities/entities.dart';

abstract class AddChvMalariaCase {
  Future<ChvMalariaCaseEntity> add(AddChvMalariaCaseParams params);
}

class AddChvMalariaCaseParams extends Equatable {
  final int? id;

  final String? uid;

  final String? code;

  final String? uuid;

  final String? name;

  final DateTime? lastSynced;
  final bool? deleted;
  final DateTime? dateOfExamination;
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
  final String? status;
  final OrganisationUnitEntity? subVillage;

  final ChvEntity? chv;
  final GpsLocationEntity? gpsLocation;
  final AgeGroupEntity? ageGroup;
  final bool? synced;

  @override
  List get props => [
        name,
        uid,
        code,
        uuid,
        name,
        mobile,
        dateOfExamination,
        lastSynced,
        deleted,
        gender,
        isPregnant,
        malariaTestResult,
        severity,
        drugsGiven,
        suppsGiven,
        referral,
        barImageUrl,
        comment,
        status,
        subVillage,
        chv,
        gpsLocation,
        ageGroup,
        synced
      ];

  const AddChvMalariaCaseParams(
      {this.id,
      this.uid,
      this.code,
      this.uuid,
      this.name,
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
      this.chv,
      this.gpsLocation,
      this.ageGroup,
      this.synced});
}
