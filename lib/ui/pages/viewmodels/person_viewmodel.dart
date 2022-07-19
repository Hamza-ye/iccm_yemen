import 'package:equatable/equatable.dart';
import 'viewmodels.dart';

class PersonViewModel extends Equatable {
  final int? id;
  final String? uid;
  final String? code;
  final String? name;
  final String? uuid;
  final String? mobile;
  // TODO make String or delete
  final UserViewModel? userInfo;
  // TODO make String or delete
  final List<OrganisationUnitViewModel>? organisationUnits;
  // TODO make String or delete
  final List<OrganisationUnitViewModel>? dataViewOrganisationUnits;

  PersonViewModel(
      {this.id,
      this.uid,
      this.code,
      this.name,
      this.uuid,
      this.mobile,
      this.userInfo,
      this.organisationUnits,
      this.dataViewOrganisationUnits});

  @override
  List<Object?> get props => [
        id,
        uid,
        code,
        name,
        uuid,
        mobile,
        userInfo,
        organisationUnits,
        dataViewOrganisationUnits
      ];
}
