import '../../domain/entities/entities.dart';
import 'models.dart';

class LocalOrganisationUnitModel implements IdentifiableObject {
  @override
  int? id;

  @override
  String? uid;

  @override
  String? code;

  @override
  String? name;

  @override
  DateTime? created;

  @override
  DateTime? updated;

  String? shortName;

  String? path;
  int? hierarchyLevel;
  String? openingDate;
  String? comment;
  DateTime? closedDate;
  String? url;
  String? contactPerson;
  String? address;
  String? email;
  String? phoneNumber;
  String? organisationUnitType;
  LocalOrganisationUnitModel? parent;
  LocalUserModel? createdBy;
  LocalUserModel? updatedBy;
  LocalGpsLocationModel? gpsLocation;
  LocalChvModel? assignedChv;
  List<LocalOrganisationUnitModel>? children;

  LocalOrganisationUnitModel(
      {this.id,
      this.uid,
      this.code,
      this.name,
      this.shortName,
      this.created,
      this.updated,
      this.path,
      this.hierarchyLevel,
      this.openingDate,
      this.comment,
      this.closedDate,
      this.url,
      this.contactPerson,
      this.address,
      this.email,
      this.phoneNumber,
      this.organisationUnitType,
      this.parent,
      this.createdBy,
      this.updatedBy,
      this.gpsLocation,
      this.assignedChv,
      this.children});

  LocalOrganisationUnitModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    code = json['code'];
    name = json['name'];
    shortName = json['shortName'];
    created = DateTime.parse(json['created'].toString());
    updated = DateTime.parse(json['updated'].toString());
    path = json['path'];
    hierarchyLevel = json['hierarchyLevel'];
    openingDate = json['openingDate'];
    comment = json['comment'];
    closedDate = DateTime.parse(json['closedDate'].toString());
    url = json['url'];
    contactPerson = json['contactPerson'];
    address = json['address'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    organisationUnitType = json['organisationUnitType'];
    parent = json['parent'] != null
        ? LocalOrganisationUnitModel.fromJson(json['parent'])
        : null;
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];

    createdBy = json['createdBy'] != null
        ? LocalUserModel.fromJson(json['createdBy'])
        : null;
    updatedBy = json['updatedBy'] != null
        ? LocalUserModel.fromJson(json['updatedBy'])
        : null;

    gpsLocation = json['gpsLocation'] != null
        ? LocalGpsLocationModel.fromJson(json['gpsLocation'])
        : null;

    assignedChv = json['assignedChv'] != null
        ? LocalChvModel.fromJson(json['assignedChv'])
        : null;
    if (json['children'] != null) {
      children = <LocalOrganisationUnitModel>[];
      json['children'].forEach((v) {
        children!.add(LocalOrganisationUnitModel.fromJson(v));
      });
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['code'] = code;
    data['name'] = name;
    data['shortName'] = shortName;
    data['created'] = created;
    data['updated'] = updated;
    data['path'] = path;
    data['hierarchyLevel'] = hierarchyLevel;
    data['openingDate'] = openingDate;
    data['comment'] = comment;
    data['closedDate'] = closedDate;
    data['url'] = url;
    data['contactPerson'] = contactPerson;
    data['address'] = address;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['organisationUnitType'] = organisationUnitType;
    if (parent != null) {
      data['parent'] = parent?.toJson();
    }
    data['createdBy'] = createdBy?.toJson();
    data['updatedBy'] = updatedBy?.toJson();
    if (gpsLocation != null) {
      data['gpsLocation'] = gpsLocation?.toJson();
    }
    if (assignedChv != null) {
      data['assignedChv'] = assignedChv?.toJson();
    }
    if (children != null) {
      data['children'] = children?.map((v) => v.toJson()).toList();
    }
    return data;
  }

  factory LocalOrganisationUnitModel.fromEntity(
          OrganisationUnitEntity? entity) =>
      LocalOrganisationUnitModel(
          id: entity?.id,
          uid: entity?.uid,
          code: entity?.code,
          name: entity?.name);

  OrganisationUnitEntity toEntity() => OrganisationUnitEntity(
      id: id,
      uid: uid,
      code: code,
      name: name);
}
