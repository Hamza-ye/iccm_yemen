import 'package:equatable/equatable.dart';

class DataSetViewModel extends Equatable {
  final String id;
  final String name;
  final String description;

  @override
  List get props => [id, name, description];

  const DataSetViewModel(
      {required this.id, required this.name, required this.description});
}
