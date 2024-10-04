import 'package:flutter/material.dart';
import 'package:flutter_pos_digital/design/theme/app_button_theme.dart';
import 'package:flutter_pos_digital/design/theme/colors.dart';
import 'package:flutter_pos_digital/design/theme/text_styles.dart';
import 'package:flutter_pos_digital/src/common_widgets/custom_button/custom_button.dart';

class AppTheme {
  AppTheme._();

  static ThemeData of(BuildContext context,
      {Brightness? brightness, String? fontFamily}) {
    if (brightness == null) {
      try {
        brightness = MediaQuery.of(context).platformBrightness;
      } catch (_) {
        brightness = Brightness.light;
      }
    }
    fontFamily ??= AppTextStyles.fontFamily;
    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      textTheme: TextTheme(
        labelLarge: AppTextStyles.text16.height1_2.copyWith(
          fontFamily: fontFamily,
        ),
      ),
      shadowColor: AppColors.shadow.oneHundred,
      badgeTheme: BadgeThemeData(
        textColor: AppColors.neutral.oneHundredLight,
        backgroundColor: AppColors.negative.forLight,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.neutral.oneHundred,
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: AppTextStyles.allCaps16
            .copyWith(fontFamily: fontFamily)
            .setColor(AppColors.neutral.sevenHundred),
      ),
      switchTheme:
          SwitchThemeData(thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.neutral.oneHundred;
        }
        return AppColors.neutral.sevenHundred;
      })),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary.fiveHundred;
          }
          return AppColors.whiteBackground;
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: BorderSide(
          color: AppColors.neutral.fourHundred,
          width: .5,
        ),
      ),
      radioTheme: RadioThemeData(
        visualDensity: VisualDensity.comfortable,
        fillColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return AppColors.primary.fiveHundred;
          }
          return AppColors.neutral.fourHundred;
        }),
      ),
      textButtonTheme: TextButtonThemeData(
        style: CustomTextButton.styleFrom(
          textStyle: AppTextStyles.header16.copyWith(fontFamily: fontFamily),
          foregroundColor: AppColors.neutral.sevenHundred,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppButtonTheme.primary(context,
              brightness: brightness, fontFamily: fontFamily)),
      dividerTheme: DividerThemeData(
        thickness: 0.5,
        color: AppColors.neutral.fourHundred,
      ),
      dialogBackgroundColor: AppColors.neutral.oneHundred,
      dialogTheme: DialogTheme(
        elevation: 0,
        surfaceTintColor: AppColors.neutral.oneHundred,
        backgroundColor: AppColors.neutral.oneHundred,
        titleTextStyle:
            AppTextStyles.header16.setColor(AppColors.neutral.sevenHundred),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      brightness: brightness,
      scaffoldBackgroundColor: AppColors.neutral.oneHundred,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: AppColors.primary.fiveHundred,
        secondary: AppColors.primary.fiveHundred,
        surface: AppColors.neutral.oneHundred,
        error: AppColors.negative.fiveHundred,
        onPrimary: AppColors.neutral.oneHundred,
        onSecondary: AppColors.neutral.oneHundred,
        onSurface: AppColors.neutral.fiveHundred,
        onError: AppColors.neutral.oneHundred,
      ),
    );
  }
}
