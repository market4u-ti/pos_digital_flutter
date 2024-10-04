import 'package:flutter/material.dart';
import 'package:flutter_pos_digital/design/theme/colors.dart';
import 'package:flutter_pos_digital/design/theme/text_styles.dart';
import 'package:flutter_pos_digital/src/common_widgets/custom_button/custom_button.dart';

class AppButtonTheme {
  AppButtonTheme._();

  static ButtonStyle primary(
    BuildContext context, {
    Brightness? brightness,
    String? fontFamily,
  }) {
    if (brightness == null) {
      try {
        brightness = MediaQuery.of(context).platformBrightness;
      } catch (_) {
        brightness = Brightness.light;
      }
    }
    return CustomElevatedButton.styleFrom(
      backgroundColor: AppColors.primary.forLight,
      foregroundColor: AppColors.neutral.oneHundredLight,
      disabledBackgroundColor: AppColors.neutral.fourHundred,
      disabledForegroundColor: AppColors.neutral.oneHundred,
      padding: const EdgeInsets.all(16),
      textStyle: AppTextStyles.text16.height1_2.copyWith(
        fontFamily: fontFamily,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(
          color: AppColors.neutral.threeHundred,
          width: 0.5,
        ),
      ),
    ).copyWith(
      elevation: WidgetStateProperty.all(0),
    );
  }

  static ButtonStyle secondary(BuildContext context) =>
      CustomElevatedButton.styleFrom(
        backgroundColor: AppColors.neutral.oneHundred,
        foregroundColor: AppColors.primary.fiveHundred,
        disabledBackgroundColor: AppColors.neutral.oneHundred,
        disabledForegroundColor: AppColors.neutral.threeHundred,
        padding: const EdgeInsets.all(12),
        textStyle: AppTextStyles.text16.height1_2,
      ).copyWith(
        shape: WidgetStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: states.contains(WidgetState.disabled)
                  ? AppColors.neutral.threeHundred
                  : AppColors.primary.fiveHundred,
              width: 0.5,
            ),
          );
        }),
        elevation: WidgetStateProperty.all(0),
      );
}
