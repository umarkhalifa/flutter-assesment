enum Categories{
  general,
  heart,
  dentist,
  skin,
  stomach,
  bone,
  lung,
  eTn
}

extension CategoriesExtension on Categories {
  String get assetPath {
    switch (this) {
      case Categories.general:
        return 'assets/icons/stethoscope.svg';
      case Categories.heart:
        return 'assets/icons/heart.svg';
      case Categories.dentist:
        return 'assets/icons/teeth.svg';
      case Categories.skin:
        return 'assets/icons/dermis.svg';
      case Categories.stomach:
        return 'assets/icons/stomach.svg';
      case Categories.bone:
        return 'assets/icons/joint.svg';
      case Categories.lung:
        return 'assets/icons/lungs.svg';
      case Categories.eTn:
        return 'assets/icons/ear.svg';
    }
  }
  String get displayName {
    switch (this) {
      case Categories.general:
        return 'General';
      case Categories.heart:
        return 'Heart';
      case Categories.dentist:
        return 'Dentist';
      case Categories.skin:
        return 'Skin';
      case Categories.stomach:
        return 'Stomach';
      case Categories.bone:
        return 'Bone';
      case Categories.lung:
        return 'Lung';
      case Categories.eTn:
        return 'ETN';
    }
  }
}