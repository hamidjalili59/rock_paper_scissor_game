import 'package:flutter/material.dart';

class CustomWidgetStyles {
  static ButtonStyle? confirmButtonStyle(
    BuildContext context,
    bool? hasBorder,
    bool? enable,
    BorderRadiusGeometry? borderRadius, {
    EdgeInsetsGeometry? padding,
  }) {
    return Theme.of(context).elevatedButtonTheme.style?.copyWith(
          padding: WidgetStatePropertyAll(padding),
          backgroundColor: WidgetStateProperty.all(
            hasBorder ?? false
                ? Colors.transparent
                : const Color(0xff2DA547)
                    .withOpacity((enable ?? false) ? 1 : 0.3),
          ),
          overlayColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.disabled)
                ? Colors.transparent
                : states.contains(WidgetState.pressed)
                    ? Colors.white.withOpacity(0.1)
                    : const Color(0xff2DA547).withOpacity(0.1),
          ),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(100),
              side: hasBorder ?? false
                  ? const BorderSide(color: Color(0xff2DA547))
                  : BorderSide.none,
            ),
          ),
        );
  }

  static ButtonStyle? vipButtonStyle(
    BuildContext context,
    bool? enable, {
    EdgeInsetsGeometry? padding,
  }) {
    return Theme.of(context).elevatedButtonTheme.style?.copyWith(
          padding: WidgetStatePropertyAll(padding),
          backgroundColor: WidgetStateProperty.all(
            Theme.of(context)
                .colorScheme
                .onPrimary
                .withOpacity((enable ?? false) ? 1 : 0.3),
          ),
          overlayColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.disabled)
                ? Colors.transparent
                : Colors.black.withOpacity(0.1),
          ),
          foregroundColor: WidgetStateProperty.all(Colors.black),
        );
  }

  static ButtonStyle? disableButtonStyle(
    BuildContext context,
    bool? hasBorder,
    BorderRadiusGeometry? borderRadius, {
    EdgeInsetsGeometry? padding,
  }) {
    return Theme.of(context).elevatedButtonTheme.style?.copyWith(
          padding: WidgetStatePropertyAll(padding),
          backgroundColor: WidgetStateProperty.all(
            hasBorder ?? false ? Colors.transparent : const Color(0xffE5E5EA),
          ),
          overlayColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.disabled)
                ? Colors.transparent
                : states.contains(WidgetState.pressed)
                    ? const Color(0xffE5E5EA).withOpacity(0.1)
                    : const Color(0xffE5E5EA).withOpacity(0.1),
          ),
          foregroundColor: WidgetStateProperty.all(Colors.black),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(100),
              side: hasBorder ?? false
                  ? const BorderSide(color: Color(0xffE5E5EA))
                  : BorderSide.none,
            ),
          ),
        );
  }

  static ButtonStyle? errorButtonStyle(
    BuildContext context,
    bool? hasBorder,
    BorderRadiusGeometry? borderRadius, {
    EdgeInsetsGeometry? padding,
  }) {
    return Theme.of(context).elevatedButtonTheme.style?.copyWith(
          padding: WidgetStatePropertyAll(padding),
          backgroundColor: WidgetStateProperty.all(
            hasBorder ?? false ? Colors.transparent : const Color(0xffFF453A),
          ),
          overlayColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.disabled)
                ? Colors.transparent
                : states.contains(WidgetState.pressed)
                    ? const Color(0xffFF453A).withOpacity(0.1)
                    : const Color(0xffFF453A).withOpacity(0.1),
          ),
          foregroundColor: WidgetStateProperty.all(const Color(0xffFFF9DC)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(100),
              side: hasBorder ?? false
                  ? const BorderSide(color: Color(0xffFF453A))
                  : BorderSide.none,
            ),
          ),
        );
  }
}
