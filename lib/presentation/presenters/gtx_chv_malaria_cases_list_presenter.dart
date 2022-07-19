import 'package:get/get.dart';

import '../../domain/helpers/helpers.dart';
import '../../domain/usecases/usecases.dart';
import '../../ui/helpers/helpers.dart';
import '../../ui/pages/pages.dart';
import '../mixins/mixins.dart';

class GetxChvMalariaCasesListPresenter extends GetxController
    with SessionManager, LoadingManager, NavigationManager
    implements ChvMalariaCasesListPresenter {
  final LoadChvMalariaCasesList loadChvMalariaCases;

  final _chvMalariaCases = Rx<List<ChvMalariaCaseViewModel>>([]);

  @override
  Stream<List<ChvMalariaCaseViewModel>> get chvMalariaCasesStream =>
      _chvMalariaCases.stream;

  GetxChvMalariaCasesListPresenter({required this.loadChvMalariaCases});

  @override
  Future<void> loadData() async {
    try {
      isLoading = true;
      final chvMalariaCases = await loadChvMalariaCases.load();
      _chvMalariaCases.value = chvMalariaCases.map((chvMalariaCase) {
        // TODO validation Logic and may create list of errors and add it to model
        // TODO add if no drugs given due to stock out option
        return ChvMalariaCaseViewModel(
            // TODO Remaining props:
            id: chvMalariaCase.id,
            code: chvMalariaCase.code,
            name: chvMalariaCase.name,
            locationProvided: chvMalariaCase.gpsLocation != null,
            // status: chvMalariaCase.status,
            // TODO add logic
            canComplete: false,
            // TODO add logic
            canSync: false,
            // TODO add logic
            completed: false,
            synced: chvMalariaCase.synced);
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

  @override
  void goToChvMalariaCaseForm(String caseId) {
    navigateTo = '/chv_malaria_case_form/$caseId';
  }
}
