import '../entities/entities.dart';

import 'package:equatable/equatable.dart';

abstract class MobileAuthentication {
  Future<AccountEntity> auth(MobileAuthenticationParams params);
}

class MobileAuthenticationParams extends Equatable {
  final String mobileNo;

  @override
  List get props => [mobileNo];

  const MobileAuthenticationParams({required this.mobileNo});
}
