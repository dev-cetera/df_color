//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// Copyright © dev-cetera.com & contributors.
//
// The use of this source code is governed by an MIT-style license described in
// the LICENSE file located in this project's root directory.
//
// See: https://opensource.org/license/mit
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'dart:ui' show Color;

import '/src/color_mixer.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class SinglePalette {
  //
  //
  //

  final ColorMixer mixer;

  //
  //
  //

  SinglePalette(this.mixer);

  //
  //
  //

  Color? operator [](int value) => mixer.getMix(value);

  late Color color0 = this[0]!;
  late Color color50 = this[50]!;
  late Color color100 = this[100]!;
  late Color color200 = this[200]!;
  late Color color300 = this[300]!;
  late Color color400 = this[400]!;
  late Color color500 = this[500]!;
  late Color color600 = this[600]!;
  late Color color700 = this[700]!;
  late Color color800 = this[800]!;
  late Color color900 = this[900]!;
  late Color color1000 = this[1000]!;
}
