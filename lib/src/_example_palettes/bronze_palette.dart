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

import '../palette/common_palette.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class BronzePalette extends CommonPalette {
  const BronzePalette();

  // Neutral colors.

  @override
  final neutral50 = const Color(0xFFDCDBD2);
  @override
  final neutral100 = const Color(0xFFC1C0B0);
  @override
  final neutral200 = const Color(0xFF9F9D85);
  @override
  final neutral300 = const Color(0xFF8B896A);
  @override
  final neutral400 = const Color(0xFF7E7C5A);
  @override
  final neutral500 = const Color(0xFF75724E);
  @override
  final neutral600 = const Color(0xFF6C6948);
  @override
  final neutral700 = const Color(0xFF615F41);
  @override
  final neutral800 = const Color(0xFF504E35);
  @override
  final neutral900 = const Color(0xFF333222);

  // Primary colors.
  @override
  final primary50 = const Color(0xFFE3DCC0);
  @override
  final primary100 = const Color(0xFFCFC291);
  @override
  final primary200 = const Color(0xFFB5A154);
  @override
  final primary300 = const Color(0xFFA58D30);
  @override
  final primary400 = const Color(0xFF9B8019);
  @override
  final primary500 = const Color(0xFF947708);
  @override
  final primary600 = const Color(0xFF896E07);
  @override
  final primary700 = const Color(0xFF7B6306);
  @override
  final primary800 = const Color(0xFF655105);
  @override
  final primary900 = const Color(0xFF413403);

  // Secondary colors.
  @override
  final secondary50 = const Color(0xFFD8D0F0);
  @override
  final secondary100 = const Color(0xFFBBACE5);
  @override
  final secondary200 = const Color(0xFF957FD7);
  @override
  final secondary300 = const Color(0xFF7F64CE);
  @override
  final secondary400 = const Color(0xFF7053C9);
  @override
  final secondary500 = const Color(0xFF6646C5);
  @override
  final secondary600 = const Color(0xFF5E41B7);
  @override
  final secondary700 = const Color(0xFF553AA4);
  @override
  final secondary800 = const Color(0xFF463087);
  @override
  final secondary900 = const Color(0xFF2D1F57);

  // Success colors.
  @override
  Color get success50 => const Color(0xffecfdf5);
  @override
  Color get success100 => const Color(0xffd1fae5);
  @override
  Color get success200 => const Color(0xffa7f3d0);
  @override
  Color get success300 => const Color(0xff6ee7b7);
  @override
  Color get success400 => const Color(0xff34d399);
  @override
  Color get success500 => const Color(0xff10b981);
  @override
  Color get success600 => const Color(0xff059669);
  @override
  Color get success700 => const Color(0xff047857);
  @override
  Color get success800 => const Color(0xff065f46);
  @override
  Color get success900 => const Color(0xff064e3b);

  // Warning colors.
  @override
  Color get warning50 => const Color(0xfffffbeb);
  @override
  Color get warning100 => const Color(0xfffef3c7);
  @override
  Color get warning200 => const Color(0xfffde68a);
  @override
  Color get warning300 => const Color(0xfffcd34d);
  @override
  Color get warning400 => const Color(0xfffbbf24);
  @override
  Color get warning500 => const Color(0xfff59e0b);
  @override
  Color get warning600 => const Color(0xffd97706);
  @override
  Color get warning700 => const Color(0xffb45309);
  @override
  Color get warning800 => const Color(0xff92400e);
  @override
  Color get warning900 => const Color(0xff78350f);

  // Error colors.
  @override
  Color get error50 => const Color(0xfffef2f2);
  @override
  Color get error100 => const Color(0xfffee2e2);
  @override
  Color get error200 => const Color(0xfffecaca);
  @override
  Color get error300 => const Color(0xfffca5a5);
  @override
  Color get error400 => const Color(0xfff87171);
  @override
  Color get error500 => const Color(0xffef4444);
  @override
  Color get error600 => const Color(0xffdc2626);
  @override
  Color get error700 => const Color(0xffb91c1c);
  @override
  Color get error800 => const Color(0xff991b1b);
  @override
  Color get error900 => const Color(0xff7f1d1d);

  // Contrast colors.
  @override
  final contrast0 = const Color(0xFFFFFFFF);
  @override
  final contrast1000 = const Color(0xFF000000);

  @override
  Color get shadow => contrast1000.withOpacity(0.2);
  @override
  Color get overlay => contrast1000.withOpacity(0.1);
}
