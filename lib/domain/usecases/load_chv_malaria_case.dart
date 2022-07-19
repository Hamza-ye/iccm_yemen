import '../entities/entities.dart';

abstract class LoadChvMalariaCase {
  Future<ChvMalariaCaseEntity> loadByChvMalariaCase({ required String id });
}