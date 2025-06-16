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

final class SaturationColorMixer extends ColorMixer {
  //
  //
  //

  const SaturationColorMixer({
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
    final saturation = hslColor.saturation;
    var adjustedSaturation = saturation * super.getFirstCurve()!.transform(t);
    adjustedSaturation = adjustedSaturation.clamp(0, 1).toDouble();
    return HSLColor.fromAHSL(
      mixedColor.a,
      hslColor.hue,
      adjustedSaturation,
      hslColor.lightness,
    ).toColor();
  }

  //
  //
  //

  @override
  SaturationColorMixer withChild(ColorMixer mixer) {
    return SaturationColorMixer(
      curve: curve,
      baseColor: baseColor,
      previousMixer: mixer,
      blender: blender,
    );
  }
}
