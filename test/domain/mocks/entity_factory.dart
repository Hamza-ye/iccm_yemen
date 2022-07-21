import 'package:iccm_yemen/domain/entities/entities.dart';

import 'package:faker/faker.dart';

class EntityFactory {
  static AccountEntity makeAccount() => AccountEntity(
    token: faker.guid.guid()
  );


  static List<ChvMalariaCaseEntity> makeSurveyList() => [
    // ChvMalariaCaseEntity(
    //
    // ),
    // ChvMalariaCaseEntity(
    //
    // )
  ];
}