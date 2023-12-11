enum Dif { easy, medium, advanced }

extension DifExtension on Dif {
  String get key {
    switch (this) {
      case Dif.easy:
        return 'easyScore';
      case Dif.medium:
        return 'mediumScore';
      case Dif.advanced:
        return 'advancedScore';
    }
  }
}
