import '../../domain/entities/entities.dart';
import '../../ui/pages/viewmodels/viewmodels.dart';

extension OrganisationUnitEntityExtensions on OrganisationUnitEntity {
  OrganisationUnitViewModel toViewModel() =>
      OrganisationUnitViewModel(id: id, uid: uid, code: code, name: name);
}

// TODO delete later
extension GpsLocationEntityExtensions on GpsLocationEntity {
  GpsLocationViewModel toViewModel() => GpsLocationViewModel(
      id: id,
      code: code,
      latitude: latitude,
      longitude: longitude,
      timestamp: timestamp,
      altitude: altitude,
      accuracy: accuracy);
}

extension UserEntityExtensions on UserEntity {
  UserViewModel toViewModel() =>
      UserViewModel(id: id, uid: uid, code: code, name: name);
}

extension PersonEntityExtensions on PersonEntity {
  PersonViewModel toViewModel() =>
      PersonViewModel(id: id, uid: uid, code: code, name: name);
}

extension ChvEntityExtensions on ChvEntity {
  ChvViewModel toViewModel() =>
      ChvViewModel(id: id, uid: uid, code: code, name: name);
}
