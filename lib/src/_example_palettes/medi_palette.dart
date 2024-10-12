//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// Dart/Flutter (DF) Packages by DevCetra.com & contributors. The use of this
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

final class MediPalette extends CommonPalette {
  const MediPalette();

  // Neutral colors.
  @override
  Color get neutral => const Color(0xff64748b);
  @override
  Color get neutral50 => const Color(0xfff7f8f9);
  @override
  Color get neutral100 => const Color(0xffeff1f4);
  @override
  Color get neutral200 => const Color(0xffdfe3e8);
  @override
  Color get neutral300 => const Color(0xffd0d5dd);
  @override
  Color get neutral400 => const Color(0xffa8b2c1);
  @override
  Color get neutral500 => const Color(0xff64748b);
  @override
  Color get neutral600 => const Color(0xff4b5768);
  @override
  Color get neutral700 => const Color(0xff323a46);
  @override
  Color get neutral800 => const Color(0xff191d23);
  @override
  Color get neutral900 => const Color(0xff0d0f11);

  // Primary colors.
  @override
  final primary50 = const Color(0xFFC5E9F4);
  @override
  final primary100 = const Color(0xFF99D9ED);
  @override
  final primary200 = const Color(0xFF61C4E3);
  @override
  final primary300 = const Color(0xFF40B7DD);
  @override
  final primary400 = const Color(0xFF2BB0D9);
  @override
  final primary500 = const Color(0xFF1BAAD7);
  @override
  final primary600 = const Color(0xFF199DC7);
  @override
  final primary700 = const Color(0xFF168EB3);
  @override
  final primary800 = const Color(0xFF127594);
  @override
  final primary900 = const Color(0xFF0B4B5F);

  // Secondary colors.
  @override
  Color get secondary => const Color(0xff587eea);
  @override
  Color get secondary50 => const Color(0xfff7f9fe);
  @override
  Color get secondary100 => const Color(0xffeef2fd);
  @override
  Color get secondary200 => const Color(0xffd5dffa);
  @override
  Color get secondary300 => const Color(0xffbccbf7);
  @override
  Color get secondary400 => const Color(0xff829eef);
  @override
  Color get secondary500 => const Color(0xff587eea);
  @override
  Color get secondary600 => const Color(0xff1b4cd7);
  @override
  Color get secondary700 => const Color(0xff12338f);
  @override
  Color get secondary800 => const Color(0xff091948);
  @override
  Color get secondary900 => const Color(0xff040d24);

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
  Color get error => const Color(0xffef4444);
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
