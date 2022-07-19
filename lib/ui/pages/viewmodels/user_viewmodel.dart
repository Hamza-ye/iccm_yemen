import 'package:equatable/equatable.dart';

class UserViewModel extends Equatable {
  final int? id;
  final String? code;
  final String? uid;
  final String? name;
  final String? login;

  UserViewModel({this.id, this.code, this.uid, this.name, this.login});

  @override
  List<Object?> get props => [id, code, uid, name, login];
}
