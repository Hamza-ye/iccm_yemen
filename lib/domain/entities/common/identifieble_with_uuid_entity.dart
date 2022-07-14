import 'identifieble_entity.dart';

abstract class IdentifiableWithUuidEntity extends IdentifiableEntity {
  String? get uuid;

  const IdentifiableWithUuidEntity();

  @override
  List<Object?> get props => super.props..addAll([uuid]);
}
