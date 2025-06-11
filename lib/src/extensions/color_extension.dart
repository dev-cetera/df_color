//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// Dart/Flutter (DF) Packages by dev-cetera.com & contributors. The use of this
// source code is governed by an MIT-style license described in the LICENSE
// file located in this project's root directory.
//
// See: https://opensource.org/license/mit
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'dart:ui' show Brightness, Color;

import 'package:flutter/rendering.dart' show HSLColor;

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension ColorExtension on Color {
  Color get inverted {
    return Color.fromRGBO(
      255 - red,
      255 - green,
      255 - blue,
      opacity,
    );
  }

  Color withShadeCode(int shadeCode) {
    final hsl = HSLColor.fromColor(this);
    final lighter = hsl.withLightness((hsl.lightness + shadeCode / 900) % 1);
    return lighter.toColor();
  }

  Color withSaturation(double saturation) {
    final hsl = HSLColor.fromColor(this);
    return hsl.withSaturation(saturation).toColor();
  }

  Color lighten(double amount) {
    final hsl = HSLColor.fromColor(this);
    final changed = hsl.withLightness(hsl.lightness * amount);
    return changed.toColor();
  }

  Color darken(double amount) {
    final hsl = HSLColor.fromColor(this);
    final changed = hsl.withLightness(hsl.lightness * (1 - amount));
    return changed.toColor();
  }

  Color contrast(Brightness brighness, double amount) {
    return brighness == Brightness.light ? darken(amount) : lighten(amount);
  }
}
