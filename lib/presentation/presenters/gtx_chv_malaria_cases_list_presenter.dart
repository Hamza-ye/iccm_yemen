import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../domain/helpers/helpers.dart';
import '../../domain/usecases/usecases.dart';
import '../../ui/helpers/helpers.dart';
import '../../ui/pages/pages.dart';
import '../mixins/mixins.dart';
import '../protocols/protocols.dart';

class GetxChvMalariaCasesListPresenter extends GetxController
    with SessionManager, LoadingManager, NavigationManager
    implements ChvMalariaCasesListPresenter {
  final Validation validation;
  final LoadChvMalariaCasesList loadChvMalariaCases;

  final _chvMalariaCases = Rx<List<ChvMalariaCaseViewModel>>([]);

  @override
  Stream<List<ChvMalariaCaseViewModel>> get chvMalariaCasesStream =>
      _chvMalariaCases.stream;

  GetxChvMalariaCasesListPresenter(
      {required this.loadChvMalariaCases, required this.validation});

  @override
  Future<void> loadData() async {
    try {
      isLoading = true;
      final chvMalariaCases = await loadChvMalariaCases.load();

      _chvMalariaCases.value = chvMalariaCases.map((chvMalariaCase) {
        final validationErrors = _validateFields(chvMalariaCase.toMap());

        final canComplete =
            validationErrors.isEmpty && chvMalariaCase.status == 'INCOMPLETE';
        final canSync = chvMalariaCase.synced == false && canComplete;
        return ChvMalariaCaseViewModel(
            id: chvMalariaCase.id,
            code: chvMalariaCase.code,
            uuid: chvMalariaCase.uuid,
            name: chvMalariaCase.name,
            age: chvMalariaCase.age,
            deleted: chvMalariaCase.deleted,
            dateOfExamination: chvMalariaCase.dateOfExamination,
            mobile: chvMalariaCase.mobile,
            gender: chvMalariaCase.gender,
            isPregnant: chvMalariaCase.isPregnant,
            malariaTestResult: chvMalariaCase.malariaTestResult,
            severity: chvMalariaCase.severity,
            drugsGiven: chvMalariaCase.drugsGiven,
            suppsGiven: chvMalariaCase.suppsGiven,
            referral: chvMalariaCase.referral,
            barImageUrl: chvMalariaCase.barImageUrl,
            comment: chvMalariaCase.comment,
            status: chvMalariaCase.status,
            subVillage: chvMalariaCase.subVillage?.code,
            chv: chvMalariaCase.chv?.code,
            gpsLocation: chvMalariaCase.gpsLocation?.longitude.toString(),
            synced: chvMalariaCase.synced,
            locationProvided: chvMalariaCase.gpsLocation != null,
            canComplete: canComplete,
            canSync: canSync,
            validationErrors: validationErrors);
      }).toList();
    } on DomainError catch (error) {
      if (error == DomainError.accessDenied) {
        isSessionExpired = true;
      } else {
        _chvMalariaCases.subject.addError(UIError.unexpected.description);
      }
    } finally {
      isLoading = false;
    }
  }

  @override
  Future<void> completeChvMalariaCase(int caseId) async {}

  @override
  Future<void> syncChvMalariaCase(int caseId) async {}

  List<String> _validateFields(Map<String, dynamic> dataMap) {
    // dataMap.isNotEmpty
    List<String> validationErrors = [];
    dataMap.forEach((k, v) {
      // Todo Delete print
      if (kDebugMode) {
        print('Key : $k, Value : $v');
      }
      final error = validation.validate(field: k, input: dataMap);
      switch (error) {
        case ValidationError.invalidField:
          validationErrors.add('field: $k, Error: invalidField');
          break;
        case ValidationError.requiredField:
          validationErrors.add('field: $k, Error: Required');
          break;
        default:
        // return;
      }
    });
    return validationErrors;
  }

  @override
  void goToChvMalariaCaseForm(int? caseId) {
    navigateTo = '/chv_malaria_case_form/$caseId';
  }
}
