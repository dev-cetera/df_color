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
import '/src/color_mixers/brightness_color_mixer.dart';
import '/src/color_mixers/reverse_color_mixer.dart';
import 'common_palette.dart';
import '../_example_palettes/example_flat_colors.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class DynamicPalette extends CommonPalette {
  //
  //
  //

  final ColorMixer primaryMixer;
  final ColorMixer secondaryMixer;
  final ColorMixer successMixer;
  final ColorMixer neutralMixer;
  final ColorMixer errorMixer;
  final ColorMixer warningMixer;
  final ColorMixer contrastMixer;

  //
  //
  //

  late final primaryColors = primaryMixer.getPallete();
  late final secondaryColors = secondaryMixer.getPallete();
  late final successColors = successMixer.getPallete();
  late final neutralColors = neutralMixer.getPallete();
  late final errorColors = errorMixer.getPallete();
  late final warningColors = warningMixer.getPallete();
  late final contrastColors = contrastMixer.getPallete();

  //
  //
  //

  DynamicPalette({
    required this.primaryMixer,
    required this.secondaryMixer,
    required this.successMixer,
    required this.neutralMixer,
    required this.errorMixer,
    required this.warningMixer,
    required this.contrastMixer,
  });

  //
  //
  //

  factory DynamicPalette.from(CommonPalette from) {
    return DynamicPalette(
      primaryMixer: BrightnessColorMixer(baseColor: from.primary),
      secondaryMixer: BrightnessColorMixer(baseColor: from.secondary),
      successMixer: BrightnessColorMixer(baseColor: from.success),
      neutralMixer: BrightnessColorMixer(baseColor: from.neutral),
      errorMixer: BrightnessColorMixer(baseColor: from.error),
      warningMixer: BrightnessColorMixer(baseColor: from.warning),
      contrastMixer: BrightnessColorMixer(baseColor: from.contrast),
    );
  }

  //
  //
  //

  DynamicPalette.pro({
    this.primaryMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.wetAsphalt,
    ),
    this.secondaryMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.belizeHole,
    ),
    this.successMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.greenSea,
    ),
    this.neutralMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.asbestos700,
    ),
    this.errorMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.pomegranate,
    ),
    this.warningMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.pumpkin,
    ),
    this.contrastMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.wetAsphalt,
    ),
  });

  //
  //
  //

  DynamicPalette.grape({
    this.primaryMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.wisteria700,
    ),
    this.secondaryMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.peterRiver,
    ),
    this.successMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.emerald,
    ),
    this.neutralMixer = const BrightnessColorMixer(
      baseColor: Color(0xFF675876),
    ),
    this.errorMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.alizarin,
    ),
    this.warningMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.carrot,
    ),
    this.contrastMixer = const BrightnessColorMixer(
      baseColor: ExampleFlatColors.wisteria700,
    ),
  });

  //
  //
  //

  DynamicPalette copyWith({
    ColorMixer? primaryMixer,
    ColorMixer? secondaryMixer,
    ColorMixer? successMixer,
    ColorMixer? neutralMixer,
    ColorMixer? errorMixer,
    ColorMixer? warningMixer,
    ColorMixer? contrastMixer,
  }) {
    return DynamicPalette(
      primaryMixer: primaryMixer ?? this.primaryMixer,
      secondaryMixer: secondaryMixer ?? this.secondaryMixer,
      successMixer: successMixer ?? this.successMixer,
      neutralMixer: neutralMixer ?? this.neutralMixer,
      errorMixer: errorMixer ?? this.errorMixer,
      warningMixer: warningMixer ?? this.warningMixer,
      contrastMixer: contrastMixer ?? this.contrastMixer,
    );
  }

  //
  //
  //

  DynamicPalette reversed() {
    return DynamicPalette(
      primaryMixer: ReverseColorMixer(previousMixer: primaryMixer),
      secondaryMixer: ReverseColorMixer(previousMixer: secondaryMixer),
      successMixer: ReverseColorMixer(previousMixer: successMixer),
      neutralMixer: ReverseColorMixer(previousMixer: neutralMixer),
      errorMixer: ReverseColorMixer(previousMixer: errorMixer),
      warningMixer: ReverseColorMixer(previousMixer: warningMixer),
      contrastMixer: ReverseColorMixer(previousMixer: contrastMixer),
    );
  }

  //
  //
  //

  @override
  Color get contrast0 => contrastColors[0]!;
  @override
  Color get contrast100 => contrastColors[100]!;
  @override
  Color get contrast200 => contrastColors[200]!;
  @override
  Color get contrast300 => contrastColors[300]!;
  @override
  Color get contrast400 => contrastColors[400]!;
  @override
  Color get contrast50 => contrastColors[50]!;
  @override
  Color get contrast500 => contrastColors[500]!;
  @override
  Color get contrast600 => contrastColors[600]!;
  @override
  Color get contrast700 => contrastColors[700]!;
  @override
  Color get contrast800 => contrastColors[800]!;
  @override
  Color get contrast900 => contrastColors[900]!;
  @override
  Color get contrast1000 => contrastColors[1000]!;

  //
  //
  //

  @override
  Color get error100 => errorColors[100]!;
  @override
  Color get error200 => errorColors[200]!;
  @override
  Color get error300 => errorColors[300]!;
  @override
  Color get error400 => errorColors[400]!;
  @override
  Color get error50 => errorColors[50]!;
  @override
  Color get error500 => errorColors[500]!;
  @override
  Color get error600 => errorColors[600]!;
  @override
  Color get error700 => errorColors[700]!;
  @override
  Color get error800 => errorColors[800]!;
  @override
  Color get error900 => errorColors[900]!;

  //
  //
  //

  @override
  Color get neutral100 => neutralColors[100]!;
  @override
  Color get neutral200 => neutralColors[200]!;
  @override
  Color get neutral300 => neutralColors[300]!;
  @override
  Color get neutral400 => neutralColors[400]!;
  @override
  Color get neutral50 => neutralColors[50]!;
  @override
  Color get neutral500 => neutralColors[500]!;
  @override
  Color get neutral600 => neutralColors[600]!;
  @override
  Color get neutral700 => neutralColors[700]!;
  @override
  Color get neutral800 => neutralColors[800]!;
  @override
  Color get neutral900 => neutralColors[900]!;

  //
  //
  //

  @override
  Color get primary100 => primaryColors[100]!;
  @override
  Color get primary200 => primaryColors[200]!;
  @override
  Color get primary300 => primaryColors[300]!;
  @override
  Color get primary400 => primaryColors[400]!;
  @override
  Color get primary50 => primaryColors[50]!;
  @override
  Color get primary500 => primaryColors[500]!;
  @override
  Color get primary600 => primaryColors[600]!;
  @override
  Color get primary700 => primaryColors[700]!;
  @override
  Color get primary800 => primaryColors[800]!;
  @override
  Color get primary900 => primaryColors[900]!;

  //
  //
  //

  @override
  Color get secondary100 => secondaryColors[100]!;
  @override
  Color get secondary200 => secondaryColors[200]!;
  @override
  Color get secondary300 => secondaryColors[300]!;
  @override
  Color get secondary400 => secondaryColors[400]!;
  @override
  Color get secondary50 => secondaryColors[50]!;
  @override
  Color get secondary500 => secondaryColors[500]!;
  @override
  Color get secondary600 => secondaryColors[600]!;
  @override
  Color get secondary700 => secondaryColors[700]!;
  @override
  Color get secondary800 => secondaryColors[800]!;
  @override
  Color get secondary900 => secondaryColors[900]!;

  //
  //
  //

  @override
  Color get success100 => successColors[100]!;
  @override
  Color get success200 => successColors[200]!;
  @override
  Color get success300 => successColors[300]!;
  @override
  Color get success400 => successColors[400]!;
  @override
  Color get success50 => successColors[50]!;
  @override
  Color get success500 => successColors[500]!;
  @override
  Color get success600 => successColors[600]!;
  @override
  Color get success700 => successColors[700]!;
  @override
  Color get success800 => successColors[800]!;
  @override
  Color get success900 => successColors[900]!;

  //
  //
  //

  @override
  Color get warning100 => warningColors[100]!;
  @override
  Color get warning200 => warningColors[200]!;
  @override
  Color get warning300 => warningColors[300]!;
  @override
  Color get warning400 => warningColors[400]!;
  @override
  Color get warning50 => warningColors[50]!;
  @override
  Color get warning500 => warningColors[500]!;
  @override
  Color get warning600 => warningColors[600]!;
  @override
  Color get warning700 => warningColors[700]!;
  @override
  Color get warning800 => warningColors[800]!;
  @override
  Color get warning900 => warningColors[900]!;
}
