import 'package:flutter/material.dart';
import 'package:iccm_yemen/domain/entities/entities.dart';

import '../../helpers/helpers.dart';

abstract class ChvMalariaFormPresenter implements Listenable {
  Stream<List<UIError>?> get uiErrorsStream;

  Stream<UIError?> get nameErrorStream;

  Stream<UIError?> get ageErrorStream;

  Stream<UIError?> get dateErrorStream;

  Stream<UIError?> get genderErrorStream;

  Stream<UIError?> get isPregnantErrorStream;

  Stream<UIError?> get gpsLocationErrorStream;

  Stream<UIError?> get mobileErrorStream;

  Stream<UIError?> get malariaTestResultErrorStream;

  Stream<UIError?> get drugsGivenErrorStream;

  Stream<UIError?> get suppsGivenErrorStream;

  Stream<UIError?> get severityErrorStream;

  Stream<UIError?> get referralErrorStream;

  Stream<UIError?> get barImageErrorStream;

  Stream<UIError?> get statusErrorStream;

  Stream<String?> get navigateToStream;

  Stream<bool> get isFormValidStream;

  Stream<bool> get isLoadingStream;

  void validateName(String name);

  void validateAge(String age);

  void validateExaminationDate(String date);

  void validateTestResult(String testResult);

  void validateIsPregnant(String isPregnant);

  void validateLocation(String location);

  void validateDrugsGiven(String drugsGiven);

  void validateSuppsGiven(String suppsGiven);

  void validateReferral(String referral);

  void validateGender(String gender);

  void validateMobile(String mobile);

  void validateSeverity(String severity);

  void validateBarImage(String barImage);

  Future<void> loadChvMalariaCase();
  Future<void> saveChvMalariaCase();
  Future<void> completeChvMalariaCase();
  Future<void> syncChvMalariaCase();

  void goToChvMalariaCasesList();
}
