import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils/custom_button_metrics.dart';

class LoadingIndicator extends StatelessWidget {
  final bool enabled;
  const LoadingIndicator({this.enabled = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Center(
        child: CupertinoActivityIndicator(
          radius: CustomButtonMetrics.loadingRadius,
          color: ElevatedButtonTheme.of(context)
              .style
              ?.foregroundColor
              ?.resolve({if (!enabled) WidgetState.disabled}),
        ),
      ),
    );
  }
}

class CustomElevatedButton extends ElevatedButton {
  CustomElevatedButton({
    VoidCallback? onPressed,
    super.style,
    Widget? child,
    bool isLoading = false,
    super.key,
  }) : super(
          child:
              isLoading ? LoadingIndicator(enabled: onPressed != null) : child,
          onPressed: onPressed != null
              ? () {
                  if (isLoading) return;

                  onPressed();
                }
              : null,
        );

  static const styleFrom = ElevatedButton.styleFrom;

  static ElevatedButton icon({
    VoidCallback? onPressed,
    ButtonStyle? style,
    required Widget icon,
    required Widget label,
    Key? key,
  }) =>
      ElevatedButton.icon(
        icon: icon,
        label: label,
        style: style,
        key: key,
        onPressed: onPressed != null
            ? () {
                onPressed();
              }
            : null,
      );
}

class CustomTextButton extends TextButton {
  CustomTextButton({
    VoidCallback? onPressed,
    super.style,
    required super.child,
    super.key,
  }) : super(
          onPressed: onPressed != null
              ? () {
                  onPressed();
                }
              : null,
        );

  static const styleFrom = TextButton.styleFrom;

  static TextButton icon({
    VoidCallback? onPressed,
    ButtonStyle? style,
    required Widget icon,
    required Widget label,
    Key? key,
  }) =>
      TextButton.icon(
        icon: icon,
        label: label,
        style: style,
        key: key,
        onPressed: onPressed != null
            ? () {
                onPressed();
              }
            : null,
      );
}

class CustomIconButton extends IconButton {
  static const styleFrom = IconButton.styleFrom;

  CustomIconButton({
    VoidCallback? onPressed,
    super.style,
    super.color,
    super.tooltip,
    super.iconSize,
    super.visualDensity,
    super.padding,
    required super.icon,
    super.key,
  }) : super(
          onPressed: onPressed != null
              ? () {
                  onPressed();
                }
              : null,
        );
}
