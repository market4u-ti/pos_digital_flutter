import 'package:flutter/material.dart';

class AppColors {
  final Color _light;
  final Color _dark;
  final AppColors? _highContrast;

  AppColors.fromHex(int light, [int? dark, this._highContrast])
      : _light = Color(light),
        _dark = Color(dark ?? light);

  const AppColors(this._light, [Color? dark, this._highContrast])
      : _dark = dark ?? _light;

  static Color fold(Color light, [Color? dark]) =>
      AppColors(light, dark)._forBrightness(brightness);

  Color _forBrightness(Brightness brightness) {
    if (highContrast && _highContrast != null) {
      return _highContrast._forBrightness(brightness);
    }
    return brightness == Brightness.light ? _light : _dark;
  }

  Color shadeFor(Brightness brightness, int shade) {
    final color = _forBrightness(brightness);

    if (color is MaterialColor) return color[shade] ?? color;
    return color;
  }

  ///TODO Validar contraste e brilho
  ///Tive que tirar por causa da dependência no core e no modular.
  static bool get highContrast => true;
  static Brightness get brightness => Brightness.light;

  Color get oneHundredLight => shadeFor(Brightness.light, 100);
  Color get oneHundredDark => shadeFor(Brightness.dark, 100);
  Color get oneHundred => shadeFor(brightness, 100);

  Color get twoHundredLight => shadeFor(Brightness.light, 200);
  Color get twoHundredDark => shadeFor(Brightness.dark, 200);
  Color get twoHundred => shadeFor(brightness, 200);

  Color get threeHundredLight => shadeFor(Brightness.light, 300);
  Color get threeHundredDark => shadeFor(Brightness.dark, 300);
  Color get threeHundred => shadeFor(brightness, 300);

  Color get fourHundredLight => shadeFor(Brightness.light, 400);
  Color get fourHundredDark => shadeFor(Brightness.dark, 400);
  Color get fourHundred => shadeFor(brightness, 400);

  Color get fiveHundredLight => shadeFor(Brightness.light, 500);
  Color get fiveHundredDark => shadeFor(Brightness.dark, 500);
  Color get fiveHundred => shadeFor(brightness, 500);

  Color get sixHundredLight => shadeFor(Brightness.light, 600);
  Color get sixHundredDark => shadeFor(Brightness.dark, 600);
  Color get sixHundred => shadeFor(brightness, 600);

  Color get sevenHundredLight => shadeFor(Brightness.light, 700);
  Color get sevenHundredDark => shadeFor(Brightness.dark, 700);
  Color get sevenHundred => shadeFor(brightness, 700);

  Color get forLight => _light;
  Color get forDark => _dark;

  // PRIMARY & SECONDARIES

  static const AppColors primary = AppColors(
    MaterialColor(0xFF085E0F, {
      100: Color(0xFFD1FAD8),
      200: Color(0xFF85E094),
      300: Color(0xFF40BF55),
      400: Color(0xFF178220),
      500: Color(0xFF085E0F),
      600: Color(0xFF0A430E),
    }),
    MaterialColor(0xFF85E094, {
      600: Color(0xFFD1FAD8),
      500: Color(0xFF85E094),
      400: Color(0xFF40BF55),
      300: Color(0xFF178220),
      200: Color(0xFF085E0F),
      100: Color(0xFF0A430E),
    }),
    AppColors(
      MaterialColor(0xFF085E0F, {
        100: Color(0xFF85E094),
        200: Color(0xFF85E094),
        300: Color(0xFF085E0F),
        400: Color(0xFF085E0F),
        500: Color(0xFF085E0F),
        600: Color(0xFF0A430E),
      }),
      MaterialColor(0xFF85E094, {
        600: Color(0xFF85E094),
        500: Color(0xFF85E094),
        400: Color(0xFF85E094),
        300: Color(0xFF085E0F),
        200: Color(0xFF0A430E),
        100: Color(0xFF0A430E),
      }),
    ),
  );

  static const AppColors delivery = AppColors(
    MaterialColor(0xFF26125E, {
      100: Color(0xFF6E3BFF),
      200: Color(0xFF4F1FD6),
      300: Color(0xFF3712A1),
      400: Color(0xFF26125E),
      500: Color(0xFF1F1145),
      600: Color(0xFF0F042F),
    }),
    MaterialColor(0xFF3712A1, {
      600: Color(0xFF6E3BFF),
      500: Color(0xFF4F1FD6),
      400: Color(0xFF3712A1),
      300: Color(0xFF1233A1),
      200: Color(0xFF1F1145),
      100: Color(0xFF0F042F),
    }),
    AppColors(
      MaterialColor(0xFF26125E, {
        100: Color(0xFF6E3BFF),
        200: Color(0xFF6E3BFF),
        300: Color(0xFF26125E),
        400: Color(0xFF26125E),
        500: Color(0xFF0F042F),
        600: Color(0xFF0F042F),
      }),
      MaterialColor(0xFF3712A1, {
        600: Color(0xFF6E3BFF),
        500: Color(0xFF6E3BFF),
        400: Color(0xFF3712A1),
        300: Color(0xFF3712A1),
        200: Color(0xFF0F042F),
        100: Color(0xFF0F042F),
      }),
    ),
  );

  static const AppColors catalog = AppColors(
    MaterialColor(0xFFFBE26A, {
      100: Color(0xFFFFF6CC),
      200: Color(0xFFFAEBA3),
      300: Color(0xFFFBE26A),
      400: Color(0xFFFFDD38),
      500: Color(0xFFB29F24),
      600: Color(0xFF807126),
    }),
    MaterialColor(0xFFFFDD38, {
      600: Color(0xFFFFF6CC),
      500: Color(0xFFFAEBA3),
      400: Color(0xFFFBE26A),
      300: Color(0xFFFFDD38),
      200: Color(0xFFB29F24),
      100: Color(0xFF807126),
    }),
    AppColors(
      MaterialColor(0xFFFBE26A, {
        100: Color(0xFFFFF6CC),
        200: Color(0xFFFFF6CC),
        300: Color(0xFFFBE26A),
        400: Color(0xFFFBE26A),
        500: Color(0xFF807126),
        600: Color(0xFF807126),
      }),
      MaterialColor(0xFFFFDD38, {
        600: Color(0xFFFFF6CC),
        500: Color(0xFFFFF6CC),
        400: Color(0xFFFFDD38),
        300: Color(0xFFFFDD38),
        200: Color(0xFF807126),
        100: Color(0xFF807126),
      }),
    ),
  );

  static const AppColors brand = AppColors(
    MaterialColor(0xFF99CC33, {
      100: Color(0xFFB8D879),
      200: Color(0xFF99CC33),
      300: Color(0xFF83BD0F),
      400: Color(0xFF5EA518),
      500: Color(0xFF428E0B),
      600: Color(0xFF2F730D),
    }),
    MaterialColor(0xFF428E0B, {
      600: Color(0xFFB8D879),
      500: Color(0xFF99CC33),
      400: Color(0xFF83BD0F),
      300: Color(0xFF5EA518),
      200: Color(0xFF428E0B),
      100: Color(0xFF2F730D),
    }),
    AppColors(
      MaterialColor(0xFF99CC33, {
        100: Color(0xFFB8D879),
        200: Color(0xFFB8D879),
        300: Color(0xFF5EA518),
        400: Color(0xFF5EA518),
        500: Color(0xFF2F730D),
        600: Color(0xFF2F730D),
      }),
      MaterialColor(0xFF428E0B, {
        600: Color(0xFFB8D879),
        500: Color(0xFFB8D879),
        400: Color(0xFF83BD0F),
        300: Color(0xFF83BD0F),
        200: Color(0xFF2F730D),
        100: Color(0xFF2F730D),
      }),
    ),
  );

  // LINKS

  static const AppColors links = AppColors(
    MaterialColor(0xFF196EE5, {
      100: Color(0xFFD7E3F3),
      200: Color(0xFF7AA9EB),
      300: Color(0xFF4C8CE5),
      400: Color(0xFF196EE5),
      500: Color(0xFF2265C3),
      600: Color(0xFF174482),
    }),
    MaterialColor(0xFF4C8CE5, {
      600: Color(0xFFD7E3F3),
      500: Color(0xFF7AA9EB),
      400: Color(0xFF4C8CE5),
      300: Color(0xFF196EE5),
      200: Color(0xFF2265C3),
      100: Color(0xFF174482),
    }),
    AppColors(
      MaterialColor(0xFF196EE5, {
        100: Color(0xFFD7E3F3),
        200: Color(0xFFD7E3F3),
        300: Color(0xFF196EE5),
        400: Color(0xFF196EE5),
        500: Color(0xFF174482),
        600: Color(0xFF174482),
      }),
      MaterialColor(0xFF4C8CE5, {
        600: Color(0xFFD7E3F3),
        500: Color(0xFFD7E3F3),
        400: Color(0xFF4C8CE5),
        300: Color(0xFF4C8CE5),
        200: Color(0xFF174482),
        100: Color(0xFF174482),
      }),
    ),
  );

  // STATES

  static const AppColors positive = AppColors(
    MaterialColor(0xFF13AE63, {
      100: Color(0xFFD3F8E6),
      200: Color(0xFF5DF4AB),
      300: Color(0xFF13AE63),
      400: Color(0xFF0C8D4E),
      500: Color(0xFF0C6F3F),
      600: Color(0xFF004D28),
    }),
    MaterialColor(0xFF0C8D4E, {
      600: Color(0xFFD3F8E6),
      500: Color(0xFF5DF4AB),
      400: Color(0xFF13AE63),
      300: Color(0xFF0C8D4E),
      200: Color(0xFF0C6F3F),
      100: Color(0xFF004D28),
    }),
    AppColors(
      MaterialColor(0xFF13AE63, {
        100: Color(0xFFD3F8E6),
        200: Color(0xFFD3F8E6),
        300: Color(0xFF13AE63),
        400: Color(0xFF13AE63),
        500: Color(0xFF004D28),
        600: Color(0xFF004D28),
      }),
      MaterialColor(0xFF0C8D4E, {
        600: Color(0xFFD3F8E6),
        500: Color(0xFFD3F8E6),
        400: Color(0xFF0C8D4E),
        300: Color(0xFF0C8D4E),
        200: Color(0xFF004D28),
        100: Color(0xFF004D28),
      }),
    ),
  );

  static const AppColors negative = AppColors(
    MaterialColor(0xFFE51919, {
      100: Color(0xFFF5BCBC),
      200: Color(0xFFEF8F8F),
      300: Color(0xFFF65555),
      400: Color(0xFFF04542),
      500: Color(0xFFE51919),
      600: Color(0xFF821717),
    }),
    MaterialColor(0xFFF04542, {
      600: Color(0xFFF5BCBC),
      500: Color(0xFFEF8F8F),
      400: Color(0xFFF65555),
      300: Color(0xFFF04542),
      200: Color(0xFFE51919),
      100: Color(0xFF821717),
    }),
    AppColors(
      MaterialColor(0xFFE51919, {
        100: Color(0xFFF5BCBC),
        200: Color(0xFFF5BCBC),
        300: Color(0xFFE51919),
        400: Color(0xFFE51919),
        500: Color(0xFFE51919),
        600: Color(0xFF821717),
      }),
      MaterialColor(0xFFF04542, {
        600: Color(0xFFF5BCBC),
        500: Color(0xFFF04542),
        400: Color(0xFFF04542),
        300: Color(0xFFF04542),
        200: Color(0xFF821717),
        100: Color(0xFF821717),
      }),
    ),
  );

  static const AppColors warning = AppColors(
    MaterialColor(0xFFFFB443, {
      100: Color(0xFFFFEFD9),
      200: Color(0xFFFFDEAC),
      300: Color(0xFFFFC670),
      400: Color(0xFFFFB443),
      500: Color(0xFFE59319),
      600: Color(0xFFC38322),
    }),
    MaterialColor(0xFFFFC670, {
      600: Color(0xFFFFEFD9),
      500: Color(0xFFFFDEAC),
      400: Color(0xFFFFC670),
      300: Color(0xFFFFB443),
      200: Color(0xFFE59319),
      100: Color(0xFFC38322),
    }),
    AppColors(
      MaterialColor(0xFFFFB443, {
        100: Color(0xFFFFEFD9),
        200: Color(0xFFFFEFD9),
        300: Color(0xFFFFB443),
        400: Color(0xFFFFB443),
        500: Color(0xFFC38322),
        600: Color(0xFFC38322),
      }),
      MaterialColor(0xFFFFC670, {
        600: Color(0xFFFFEFD9),
        500: Color(0xFFFFEFD9),
        400: Color(0xFFFFC670),
        300: Color(0xFFFFC670),
        200: Color(0xFFC38322),
        100: Color(0xFFC38322),
      }),
    ),
  );

  // GRAYSCALE

  static final AppColors white = AppColors.fromHex(0xFFFFFFFF, 0xFF000000);
  static final AppColors black = AppColors.fromHex(0xFF000000, 0xFFFFFFFF);

  static const AppColors neutral = AppColors(
    MaterialColor(0xFF4A474C, {
      100: Color(0xFFFCFDFC),
      200: Color(0xFFF3F6F4),
      300: Color(0xFFD6DBD7),
      400: Color(0xFF7C837E),
      500: Color(0xFF4A474C),
      600: Color(0xFF252726),
      700: Color(0xFF070808),
    }),
    MaterialColor(0xFFD6DBD7, {
      700: Color(0xFFF3F6F4),
      600: Color(0xFFF3F6F4),
      500: Color(0xFFD6DBD7),
      400: Color(0xFF7C837E),
      300: Color(0xFF4A474C),
      200: Color(0xFF252726),
      100: Color(0xFF121212),
    }),
    AppColors(
      MaterialColor(0xFF4A474C, {
        100: Color(0xFFFFFFFF),
        200: Color(0xFFFFFFFF),
        300: Color(0xFF7C837E),
        400: Color(0xFF7C837E),
        500: Color(0xFF000000),
        600: Color(0xFF000000),
        700: Color(0xFF000000),
      }),
      MaterialColor(0xFF7C837E, {
        700: Color(0xFFFFFFFF),
        600: Color(0xFFFFFFFF),
        500: Color(0xFFFFFFFF),
        400: Color(0xFF7C837E),
        300: Color(0xFF7C837E),
        200: Color(0xFF000000),
        100: Color(0xFF000000),
      }),
    ),
  );

  // SHADOW

  /// 8% opacity
  static final AppColors shadow = AppColors.fromHex(0x14000000);

  /// 20% opacity
  static final AppColors shadowMedium = AppColors.fromHex(0x33000000);

  /// 50% opacity
  static final AppColors overlay = AppColors.fromHex(0x80000000);

  // SOCIAL

  static final AppColors facebook = AppColors.fromHex(0xFF196EE5);
  static final AppColors apple = AppColors.fromHex(0xFF000000, 0xFFFFFFFF);
  static final AppColors google = AppColors.fromHex(0xFFEB4335);
  static final AppColors googleBorder = AppColors.fromHex(0xFFEB4334);

  ////

  static final AppColors machineQRCode = AppColors.fromHex(0xFFFF632D);

  static Color get cashbackText => AppColors.fold(
        AppColors.delivery.threeHundredLight,
        const Color(0xFF5F81FB),
      );

  static Color get cashback => AppColors.delivery.threeHundred;

  static Color get border => AppColors.fold(
        AppColors.neutral.threeHundredLight,
        AppColors.neutral.fourHundredDark,
      );
  static Color get homeBackground => AppColors.fold(
        AppColors.primary.forLight,
        const Color(0xFF0E1A14),
      );

  static Color get deliveryBackground => AppColors.fold(
        AppColors.delivery.forLight,
        const Color(0xFF070214),
      );
  static Color get deliveryDarkBackground => AppColors.fold(
        AppColors.delivery.fiveHundredLight,
        const Color(0xFF070214),
      );

  static Color get greyBackground => AppColors.fold(
        AppColors.neutral.twoHundredLight,
        const Color(0xFF0E1A14),
      );

  static Color get catalogBackground => AppColors.fold(
        AppColors.catalog.forLight,
        const Color(0xFF1F1A10),
      );

  static Color get communityActions => AppColors.fold(
        AppColors.links.forLight,
        AppColors.catalog.fourHundredDark,
      );

  static Color get primaryActions => AppColors.fold(
        AppColors.primary.forLight,
        AppColors.primary.fiveHundredDark,
      );

  static Color get primaryButtons => AppColors.fold(
        AppColors.primary.forLight,
        AppColors.primary.fourHundredDark,
      );

  static Color get catalogButtons => AppColors.fold(
        AppColors.links.fiveHundredLight,
        AppColors.catalog.fourHundredDark,
      );

  static Color get whiteBackground => AppColors.fold(
        AppColors.neutral.oneHundredLight,
        AppColors.neutral.twoHundredLight,
      );

  static Color get danger => AppColors.fold(
        AppColors.negative.forLight,
        AppColors.negative.threeHundredDark,
      );

  static Color get dangerBackground => AppColors.fold(
        AppColors.negative.fourHundredLight,
        const Color(0xFF1A0E0E),
      );

  static Color get dangerButton => AppColors.fold(
        AppColors.negative.forLight,
        AppColors.negative.twoHundredDark,
      );

  static Color get warningBackground => AppColors.fold(
        AppColors.warning.twoHundred,
        AppColors.warning.twoHundredDark,
      );
}
