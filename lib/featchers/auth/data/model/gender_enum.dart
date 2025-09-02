enum GenderEnum { unknown, male, female }

extension GenderEnumX on GenderEnum {
  String? toMap() {
    switch (this) {
      case GenderEnum.male:
        return "male";
      case GenderEnum.female:
        return "female";
      case GenderEnum.unknown:
        return "nullable";
    }
  }

  static GenderEnum fromMap(String? value) {
    switch (value) {
      case "male":
        return GenderEnum.male;
      case "female":
        return GenderEnum.female;
      case "nullable":
        return GenderEnum.unknown;
      default:
        return GenderEnum.unknown;
    }
  }
}
