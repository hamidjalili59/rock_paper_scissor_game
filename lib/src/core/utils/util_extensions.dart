import 'dart:math';

import 'package:flutter/material.dart';

extension ContextUtilsEX on BuildContext {
  ThemeData get theme => Theme.of(this);

  FocusScopeNode get focusScope => FocusScope.of(this);

  double deviceWidthFactor(double factor) {
    return (MediaQuery.of(this).size.width * factor).floorToDouble();
  }

  double deviceHeightFactor(double factor) {
    return (MediaQuery.of(this).size.height * factor).floorToDouble();
  }
}

extension Round on double {
  int get roundUpAbs => isNegative ? floor() : ceil();
}

extension IntExtensions on int {
  bool toBool() {
    if (this == 0) {
      return false;
    } else {
      return true;
    }
  }
}

extension BoolExtensions on bool {
  int toInt() => this ? 1 : 0;
}

extension ReadableSizeCalulator on int {
  String readableSize({int decimals = 0}) {
    const suffixes = [' b', ' kb', ' mb', ' gb', ' tb'];
    if (this == 0) return '0${suffixes[0]}';
    final i = (log(this) / log(1024)).floor();
    return ((this / pow(1024, i)).toStringAsFixed(decimals)) + suffixes[i];
  }
}

extension NetworkUtility on int? {
  bool validateResponse() {
    return (this ?? 0) >= 200 && (this ?? 0) < 300;
  }
}
