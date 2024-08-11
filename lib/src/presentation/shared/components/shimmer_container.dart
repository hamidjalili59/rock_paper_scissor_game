import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:rockie/src/config/config.dart';

class ShimmerEffectWidget extends StatelessWidget {
  const ShimmerEffectWidget({
    required this.isLoading,
    required this.child,
    this.hasSchema = false,
    this.baseColor,
    this.isEnable,
    this.highLightColor,
    this.schemaWidget,
    super.key,
    this.borderRadius = 8,
  });

  final Widget child;
  final Widget? schemaWidget;
  final Color? baseColor;
  final Color? highLightColor;
  final bool isLoading;
  final bool? isEnable;
  final bool hasSchema;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Durations.medium2,
      child: isLoading
          ? IgnorePointer(
              child: Shimmer.fromColors(
                enabled: isEnable ?? true,
                baseColor: baseColor ?? Colors.black.withOpacity(0.05),
                highlightColor:
                    highLightColor ?? Colors.black.withOpacity(0.13),
                child: hasSchema
                    ? SizedBox(child: schemaWidget ?? child)
                    : Container(
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                        child: child,
                      ),
              ),
            )
          : SizedBox.expand(child: child),
    );
  }
}
