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

import 'package:flutter/painting.dart' show HSLColor;

import '/src/color_blenders/lerp_color_blender.dart';
import '/src/color_curves.dart';
import '/src/color_mixer.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class LightnessColorMixer extends ColorMixer {
  //
  //
  //

  const LightnessColorMixer({
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
    final hslColor = HSLColor.fromColor(mixedColor);
    final t = value / 1000;
    final lightness = hslColor.lightness;
    var adjustedLightness = lightness * super.getFirstCurve()!.transform(t);
    adjustedLightness = adjustedLightness.clamp(0, 1).toDouble();
    return HSLColor.fromAHSL(
      mixedColor.a,
      hslColor.hue,
      hslColor.saturation,
      adjustedLightness,
    ).toColor();
  }

  //
  //
  //

  @override
  LightnessColorMixer withChild(ColorMixer mixer) {
    return LightnessColorMixer(
      curve: curve,
      baseColor: baseColor,
      previousMixer: mixer,
      blender: blender,
    );
  }
}
