import 'package:iccm_yemen/domain/entities/entities.dart';
import 'package:iccm_yemen/domain/helpers/helpers.dart';
import 'package:iccm_yemen/domain/usecases/usecases.dart';

import 'package:mocktail/mocktail.dart';

class AuthenticationSpy extends Mock implements Authentication {
  When mockAuthenticationCall() => when(() => this.auth(any()));
  void mockAuthentication(AccountEntity data) => this.mockAuthenticationCall().thenAnswer((_) async => data);
  void mockAuthenticationError(DomainError error) => this.mockAuthenticationCall().thenThrow(error);
}