import '../entities/entities.dart';

abstract class LoadChvMalariaCaseReports {
  Future<List<ChvMalariaCaseReportEntity>> load();
}