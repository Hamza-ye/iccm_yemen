abstract class IdentifiableObject {
  int? get id;
  String? get uid;
  String? get code;
  String? get name;
  String? get created;
  String? get updated;

  // set id(int? id);
  // set uid(String? uid);
  // set code(String? code);
  // set name(String? name);
  // set created(String? created);
  // set updated(String? updated);

  Map<String, dynamic> toJson();
}