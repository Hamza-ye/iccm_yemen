enum MalariaTestResultEnum { unknown, negative, pf, pv, mix, invalid }

enum GenderEnum { unknown, male, female }

enum AgeGroupEnum { unknown, lessThan5y, greaterThan5y }

enum SeverityEnum { unknown, simple, severe }

enum ReportStatusEnum { complete, incomplete }

enum YesNoEnum { unknown, yes, no }

// TODO Translate all str values
extension MalariaTestResultEnumExtension on MalariaTestResultEnum {
  String get value {
    switch (this) {
      case MalariaTestResultEnum.negative:
        return 'NEGATIVE';
      case MalariaTestResultEnum.pf:
        return 'PF';
      case MalariaTestResultEnum.pv:
        return 'PV';
      case MalariaTestResultEnum.mix:
        return 'MIX';
      case MalariaTestResultEnum.invalid:
        return 'INVALID';
      case MalariaTestResultEnum.unknown:
        return 'Select one';
      default:
        return '';
    }
  }

  bool isEqual(dynamic value) {
    if (value is String) {
      return this.toString() == value || this.value == value;
    } else if (value is int) {
      return this.index == value;
    } else {
      return false;
    }
  }

  static MalariaTestResultEnum fromString({String value = 'unknown'}) {
    return MalariaTestResultEnum.values
        .firstWhere((e) => e.name.toLowerCase() == value.toLowerCase());
  }
}

extension GenderEnumExtension on GenderEnum {
  String get value {
    switch (this) {
      case GenderEnum.male:
        return 'MALE';
      case GenderEnum.female:
        return 'FEMALE';
      default:
        return '';
    }
  }

  bool isEqual(dynamic value) {
    if (value is String) {
      return this.toString() == value || this.value == value;
    } else if (value is int) {
      return this.index == value;
    } else {
      return false;
    }
  }

  static GenderEnum fromString({String value = 'unknown'}) {
    return GenderEnum.values
        .firstWhere((e) => e.name.toLowerCase() == value.toLowerCase());
  }
}

extension AgeGroupEnumExtension on AgeGroupEnum {
  String get value {
    switch (this) {
      case AgeGroupEnum.lessThan5y:
        return '< 5y';
      case AgeGroupEnum.greaterThan5y:
        return '> 5y';
      default:
        return '';
    }
  }

  bool isEqual(dynamic value) {
    if (value is String) {
      return this.toString() == value || this.value == value;
    } else if (value is int) {
      return this.index == value;
    } else {
      return false;
    }
  }

  static AgeGroupEnum fromString({String value = 'unknown'}) {
    return AgeGroupEnum.values
        .firstWhere((e) => e.name.toLowerCase() == value.toLowerCase());
  }
}

extension SeverityEnumExtension on SeverityEnum {
  String get value {
    switch (this) {
      case SeverityEnum.simple:
        return 'SIMPLE';
      case SeverityEnum.severe:
        return 'SEVERE';
      default:
        return '';
    }
  }

  bool isEqual(dynamic value) {
    if (value is String) {
      return this.toString() == value || this.value == value;
    } else if (value is int) {
      return this.index == value;
    } else {
      return false;
    }
  }

  static SeverityEnum fromString({String value = 'unknown'}) {
    return SeverityEnum.values
        .firstWhere((e) => e.name.toLowerCase() == value.toLowerCase());
  }
}

extension ReportStatusEnumExtension on ReportStatusEnum {
  String get value {
    switch (this) {
      case ReportStatusEnum.complete:
        return 'COMPLETE';
      case ReportStatusEnum.incomplete:
        return 'INCOMPLETE';
      default:
        return '';
    }
  }

  bool isEqual(dynamic value) {
    if (value is String) {
      return this.toString() == value || this.value == value;
    } else if (value is int) {
      return this.index == value;
    } else {
      return false;
    }
  }

  static ReportStatusEnum fromString(String value) {
    return ReportStatusEnum.values
        .firstWhere((e) => e.name.toLowerCase() == value.toLowerCase());
  }
}

extension YesNoEnumExtension on YesNoEnum {
  String get value {
    switch (this) {
      case YesNoEnum.yes:
        return 'YES';
      case YesNoEnum.no:
        return 'NO';
      default:
        return '';
    }
  }

  bool isEqual(dynamic value) {
    if (value is String) {
      return this.toString() == value || this.value == value;
    } else if (value is int) {
      return this.index == value;
    } else {
      return false;
    }
  }

  static YesNoEnum fromString({String value = 'unknown'}) {
    return YesNoEnum.values
        .firstWhere((e) => e.name.toLowerCase() == value.toLowerCase());
  }
}
