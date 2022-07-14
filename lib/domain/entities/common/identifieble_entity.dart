import 'package:equatable/equatable.dart';

abstract class IdentifiableEntity extends Equatable {
  int? get id;

  String? get uid;

  String? get code;

  String? get name;

  const IdentifiableEntity();

  @override
  List<Object?> get props => [id, uid, code, name];
}
