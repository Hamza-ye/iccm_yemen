import 'package:iccm_yemen/domain/helpers/helpers.dart';
import 'package:iccm_yemen/domain/usecases/usecases.dart';

import 'package:mocktail/mocktail.dart';

class SaveCurrentAccountSpy extends Mock implements SaveCurrentAccount {
  SaveCurrentAccountSpy() {
    this.mockSave();
  }

  When mockSaveCall() => when(() => this.save(any()));
  void mockSave() => this.mockSaveCall().thenAnswer((_) async => _);
  void mockSaveError() => this.mockSaveCall().thenThrow(DomainError.unexpected);
}