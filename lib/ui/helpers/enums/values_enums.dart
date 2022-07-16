enum MalariaTestResultEnum { negative, pf, pv, mix, invalid }

enum GenderEnum { male, female, none }

enum AgeGroupEnum { lessThan5y, greaterThan5y }

enum SeverityEnum { simple, severe, none }

enum ReportStatusEnum { complete, incomplete }

enum YesNoEnum { yes, no, none }

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
}
