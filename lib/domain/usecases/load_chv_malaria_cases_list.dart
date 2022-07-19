import '../entities/entities.dart';

abstract class LoadChvMalariaCasesList {
  Future<List<ChvMalariaCaseEntity>> load();
}