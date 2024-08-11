import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rockie/src/config/config.dart';
import 'package:rockie/src/core/constants/routes.dart';
import 'package:rockie/src/core/core.dart';
import 'package:rockie/src/core/gen/assets.gen.dart';
import 'package:rockie/src/presentation/shared/components/button_component.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox(
        width: context.deviceWidthFactor(1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: context.deviceHeightFactor(.7),
                width: context.deviceWidthFactor(.5),
                child: ColoredBox(
                  color: kPrimaryColor,
                  child: Assets.images.handScissors.image(fit: BoxFit.fitWidth),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: context.deviceWidthFactor(.3),
                  child: ButtonComponent(
                    title: context.l10n.start_game,
                    hasBorder: true,
                    hasBorderRadius: true,
                    height: 55,
                    onTap: () => context.push(homeRoute),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: context.deviceWidthFactor(.3),
                  child: ButtonComponent(
                    title: context.l10n.join_game,
                    hasBorder: true,
                    hasBorderRadius: true,
                    height: 55,
                    onTap: () => context.push(joinServerRoute),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
