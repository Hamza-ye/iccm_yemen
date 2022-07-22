import '../../ui/helpers/helpers.dart';
import '../../ui/pages/pages.dart';
import '../../domain/usecases/usecases.dart';
import '../protocols/protocols.dart';
import '../mixins/mixins.dart';

import 'package:get/get.dart';

class GetxChvMalariaFormPresenter extends GetxController
    with LoadingManager, NavigationManager, FormManager, UIErrorManager
    implements ChvMalariaFormPresenter {
  final Validation validation;
  final LoadCurrentAccount loadCurrentAccount;
  final LoadChvMalariaCase loadChvMalariaCaseUseCase;
  final SaveChvMalariaCase saveChvMalariaCaseUseCase;
  final CompleteChvMalariaCase completeChvMalariaCaseUseCase;
  final SyncChvMalariaCase syncChvMalariaCaseUseCase;

  String? _age;

  String? _barImage;

  String? _date;

  String? _drugsGiven;

  String? _gender;

  String? _isPregnant;

  String? _gpsLocation;

  String? _mobile;

  String? _name;

  String? _referral;

  String? _severity;

  String? _status;

  String? _suppsGiven;

  String? _malariaTestResult;

  //////////
  final _ageError = Rx<UIError?>(null);

  final _barImageError = Rx<UIError?>(null);

  final _dateError = Rx<UIError?>(null);

  final _drugsGivenError = Rx<UIError?>(null);

  final _genderError = Rx<UIError?>(null);

  final _isPregnantError = Rx<UIError?>(null);

  final _gpsLocationError = Rx<UIError?>(null);

  final _mobileError = Rx<UIError?>(null);

  final _nameError = Rx<UIError?>(null);

  final _referralError = Rx<UIError?>(null);

  final _severityError = Rx<UIError?>(null);

  final _statusError = Rx<UIError?>(null);

  final _suppsGivenError = Rx<UIError?>(null);

  final _malariaTestResultError = Rx<UIError?>(null);

  final _uiErrors = Rx<List<UIError>?>(null);

  //////////////////////
  @override
  Stream<UIError?> get ageErrorStream => _ageError.stream;

  @override
  Stream<UIError?> get barImageErrorStream => _barImageError.stream;

  @override
  Stream<UIError?> get dateErrorStream => _dateError.stream;

  @override
  Stream<UIError?> get drugsGivenErrorStream => _drugsGivenError.stream;

  @override
  Stream<UIError?> get genderErrorStream => _genderError.stream;

  @override
  Stream<UIError?> get isPregnantErrorStream => _isPregnantError.stream;

  @override
  Stream<UIError?> get gpsLocationErrorStream => _gpsLocationError.stream;

  @override
  Stream<UIError?> get mobileErrorStream => _mobileError.stream;

  @override
  Stream<UIError?> get nameErrorStream => _nameError.stream;

  @override
  Stream<UIError?> get referralErrorStream => _referralError.stream;

  @override
  Stream<UIError?> get severityErrorStream => _severityError.stream;

  @override
  Stream<UIError?> get statusErrorStream => _statusError.stream;

  @override
  Stream<UIError?> get suppsGivenErrorStream => _suppsGivenError.stream;

  @override
  Stream<UIError?> get malariaTestResultErrorStream =>
      _malariaTestResultError.stream;

  @override
  Stream<List<UIError>?> get uiErrorsStream => _uiErrors.stream;

  GetxChvMalariaFormPresenter(
      {required this.validation,
      required this.loadCurrentAccount,
      required this.loadChvMalariaCaseUseCase,
      required this.saveChvMalariaCaseUseCase,
      required this.completeChvMalariaCaseUseCase,
      required this.syncChvMalariaCaseUseCase});

  @override
  void validateName(String name) {
    _name = name;
    _nameError.value = _validateField('name');
    _validateForm();
  }

  @override
  void validateAge(String age) {
    _age = age;
    _ageError.value = _validateField('age');
    _validateForm();
  }

  @override
  void validateExaminationDate(String date) {
    _date = date;
    _dateError.value = _validateField('date');
    _validateForm();
  }

  @override
  void validateTestResult(String testResult) {
    _malariaTestResult = testResult;
    _malariaTestResultError.value = _validateField('malariaTestResult');
    _validateForm();
  }

  @override
  void validateIsPregnant(String isPregnant) {
    _isPregnant = isPregnant;
    _isPregnantError.value = _validateField('isPregnant');
    _validateForm();
  }

  @override
  void validateLocation(String location) {
    _gpsLocation = location;
    _gpsLocationError.value = _validateField('location');
    _validateForm();
  }

  @override
  void validateDrugsGiven(String drugsGiven) {
    _drugsGiven = drugsGiven;
    _drugsGivenError.value = _validateField('drugsGiven');
    _validateForm();
  }

  @override
  void validateSuppsGiven(String suppsGiven) {
    _suppsGiven = suppsGiven;
    _suppsGivenError.value = _validateField('suppsGiven');
    _validateForm();
  }

  @override
  void validateReferral(String referral) {
    _referral = referral;
    _referralError.value = _validateField('referral');
    _validateForm();
  }

  @override
  void validateGender(String gender) {
    _gender = gender;
    _genderError.value = _validateField('gender');
    _validateForm();
  }

  @override
  void validateMobile(String mobile) {
    _mobile = mobile;
    _mobileError.value = _validateField('mobile');
    _validateForm();
  }

  @override
  void validateSeverity(String severity) {
    _severity = severity;
    _severityError.value = _validateField('severity');
    _validateForm();
  }

  @override
  void validateBarImage(String barImage) {
    _barImage = barImage;
    _barImageError.value = _validateField('barImage');
    _validateForm();
  }

  UIError? _validateField(String field) {
    final formData = {
      'name': _name,
      'age': _age,
      'dateOfExamination': _date,
      'gpsLocation': _gpsLocation,
      'gender': _gender,
      'malariaTestResult': _malariaTestResult,
      'severity': _severity,
      'drugsGiven': _drugsGiven,
      'suppsGiven': _suppsGiven,
      'referral': _referral,
      'isPregnant': _isPregnant,
      'mobile': _mobile,
      'barImageUrl': _barImage,
    };
    final error = validation.validate(field: field, input: formData);
    switch (error) {
      case ValidationError.invalidField:
        return UIError.invalidField;
      case ValidationError.requiredField:
        return UIError.requiredField;
      default:
        return null;
    }
  }

  void _validateForm() {
    isFormValid = _nameError.value == null &&
        _ageError.value == null &&
        _mobileError.value == null &&
        _gpsLocationError.value == null &&
        _genderError.value == null &&
        _malariaTestResultError.value == null &&
        _severityError.value == null &&
        _drugsGivenError.value == null &&
        _suppsGivenError.value == null &&
        _referralError.value == null &&
        _isPregnantError.value == null &&
        _dateError.value == null &&
        _barImageError.value == null &&
        _name != null &&
        _age != null &&
        _mobile != null &&
        _gpsLocation != null &&
        _gender != null &&
        _malariaTestResult != null &&
        _severity != null &&
        _drugsGiven != null &&
        _suppsGiven != null &&
        _isPregnant != null &&
        _date != null &&
        _barImage != null &&
        _referral != null;
  }

  @override
  Future<void> completeChvMalariaCase() {
    // TODO: implement completeChvMalariaCase
    throw UnimplementedError();
  }

  @override
  Future<void> loadChvMalariaCase() {
    // TODO: implement loadChvMalariaCase
    throw UnimplementedError();
  }

  @override
  Future<void> saveChvMalariaCase() {
    // TODO: implement saveChvMalariaCase
    throw UnimplementedError();
  }

  @override
  Future<void> syncChvMalariaCase() {
    // TODO: implement syncChvMalariaCase
    throw UnimplementedError();
  }

  @override
  void goToChvMalariaCasesList() {
    navigateTo = '/chv_malaria_cases_list';
  }
}
