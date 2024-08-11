import 'package:flutter/material.dart';
import 'package:rockie/src/config/config.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    required this.title,
    super.key,
    this.height,
    this.isLoading = false,
    this.hasBorder = false,
    this.hasBorderRadius = true,
    this.onTap,
  });

  final String title;
  final double? height;
  final bool isLoading;
  final bool hasBorder;
  final bool hasBorderRadius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: hasBorderRadius ? BorderRadius.circular(12) : null,
        border: hasBorder ? Border.all(color: Colors.white38) : null,
      ),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          height: height ?? 45,
          child: Center(
            child: isLoading
                ? const SizedBox(
                    width: 20,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                  )
                : Text(
                    title,
                    style: kMediumTextStyle.copyWith(color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
