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

import '/src/color_blenders/lerp_color_blender.dart';
import '/src/color_curves.dart';
import '/src/color_mixer.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class BrightnessColorMixer extends ColorMixer {
  //
  //
  //

  const BrightnessColorMixer({
    super.curve = ColorCurves.medium,
    super.baseColor,
    super.previousMixer,
    super.blender = const LerpColorBlender(),
  });

  //
  //
  //

  @override
  Color? getMix(int value) {
    assert(value >= 0 && value <= 1000);
    final mixedColor = blender.blend(baseColor, previousMixer?.getMix(value));
    var t = value / 1000.0;
    t = super.getFirstCurve()!.transform(t);
    const white = Color(0xFFFFFFFF);
    const black = Color(0xFF000000);
    return t <= 0.5
        ? Color.lerp(white, mixedColor, t * 2)!
        : Color.lerp(mixedColor, black, (t - 0.5) * 2)!;
  }

  //
  //
  //

  @override
  BrightnessColorMixer withChild(ColorMixer mixer) {
    return BrightnessColorMixer(
      curve: curve,
      baseColor: baseColor,
      previousMixer: mixer,
      blender: blender,
    );
  }
}
