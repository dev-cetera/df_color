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

import 'dart:ui' show Color;

import '/src/color_blender.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Averages the RGB components of two colors for a straightforward blend.
final class AverageRGBColorBlender extends ColorBlender {
  //
  //
  //

  const AverageRGBColorBlender({
    super.color1,
    super.color2,
    super.blendWeight = 0.5,
  });

  //
  //
  //

  @override
  Color $blend(Color c1, Color c2, double blendWeight) {
    int blendComponent(double component1, double component2) {
      return (((component1 * blendWeight) + (component2 * (1 - blendWeight))) * 255.0).round();
    }

    return Color.fromARGB(
      blendComponent(c1.a, c2.a),
      blendComponent(c1.r, c2.r),
      blendComponent(c1.g, c2.g),
      blendComponent(c1.b, c2.b),
    );
  }
}
