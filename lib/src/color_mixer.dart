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

import 'package:flutter/widgets.dart';

import '/src/color_blenders/lerp_color_blender.dart';
import '/src/color_curves.dart';
import '/src/color_blender.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

base class ColorMixer {
  //
  //
  //

  final ParametricCurve<double>? curve;
  final Color? baseColor;
  final ColorMixer? previousMixer;
  final ColorBlender blender;

  //
  //
  //

  /// Retrieves the first curve in the mixer chain.
  ParametricCurve<double>? getFirstCurve() {
    return curve ?? previousMixer?.getFirstCurve();
  }

  /// Retrieves the first base color in the mixer chain.
  Color? getFirstBaseColor() {
    return baseColor ?? previousMixer?.getFirstBaseColor();
  }

  //
  //
  //

  const ColorMixer({
    this.curve = ColorCurves.medium,
    this.baseColor,
    this.previousMixer,
    this.blender = const LerpColorBlender(),
  });

  //
  //
  //

  ColorMixer withChild(ColorMixer mixer) {
    return ColorMixer(
      curve: curve,
      baseColor: baseColor,
      previousMixer: mixer,
      blender: blender,
    );
  }

  //
  //
  //

  Color? getMix(int value) {
    assert(value >= 0 && value <= 1000);
    if (baseColor != null) {
      return baseColor;
    }
    return previousMixer?.getMix(value);
  }

  Map<int, Color> getPallete() {
    final result = <int, Color>{50: getMix(50)!};
    for (var n = 0; n <= 1000; n += 100) {
      result[n] = getMix(n)!;
    }
    return result;
  }

  //
  //
  //

  String getColorRangeDartCode(
    String baseName, [
    String prefix = '@override\nfinal ',
  ]) {
    final output = StringBuffer();
    output.writeln('// $baseName');

    void add(int i) {
      final color = getMix(i)?.toARGB32().toRadixString(16).toUpperCase();
      //output.writeln('@override');
      output.writeln('$prefix$baseName$i = const Color(0x$color);');
    }

    add(0);
    add(50);
    for (var i = 100; i <= 1000; i += 100) {
      add(i);
    }
    return output.toString();
  }
}
