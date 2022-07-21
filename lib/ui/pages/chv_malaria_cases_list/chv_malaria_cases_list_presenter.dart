import 'package:flutter/material.dart';
import 'package:iccm_yemen/ui/pages/chv_malaria_cases_list/chv_malaria_cases_list_viewmodel.dart';

import '../../helpers/helpers.dart';

abstract class ChvMalariaCasesListPresenter implements Listenable {
  Stream<String?> get navigateToStream;
  Stream<bool> get isSessionExpiredStream;
  Stream<List<ChvMalariaCaseViewModel>> get chvMalariaCasesStream;
  // Stream<bool> get isSyncableStream;
  // Stream<bool> get isCompletableStream;
  Stream<bool> get isLoadingStream;

  Future<void> loadData();
  Future<void> completeChvMalariaCase(int caseId);
  Future<void> syncChvMalariaCase(int caseId);
  void goToChvMalariaCaseForm(int? caseId);
}