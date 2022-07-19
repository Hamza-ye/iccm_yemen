import 'package:equatable/equatable.dart';

import '../viewmodels/viewmodels.dart';

class ChvMalariaCaseViewModel extends Equatable {
  final int? id;
  final String? code;
  final String? name;
  // TODO make String
  final OrganisationUnitViewModel? subVillageViewModel;
  final bool? locationProvided;
  final DateTime? dateOfExamination;
  final bool? canSync;
  final bool? canComplete;
  final String? status;
  final bool? completed;
  final bool? synced;

  @override
  List get props => [
        id,
        code,
        name,
    locationProvided,
        dateOfExamination,
        canComplete,
        canSync,
        status,
        completed,
        synced
      ];

  ChvMalariaCaseViewModel({
    this.id,
    this.code,
    this.name,
    this.locationProvided,
    this.subVillageViewModel,
    this.dateOfExamination,
    this.canComplete,
    this.canSync,
    this.status,
    this.completed,
    this.synced,
  });
}
