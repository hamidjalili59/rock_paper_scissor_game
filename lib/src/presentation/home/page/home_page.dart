import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rockie/src/config/themes/app_themes.dart';
import 'package:rockie/src/core/gen/assets.gen.dart';
import 'package:rockie/src/core/core.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: context.deviceWidthFactor(.65),
            left: -120,
            child: Assets.images.rockHand
                .image()
                .animate(
                  onPlay: (controller) =>
                      controller.repeat(reverse: true), // loop
                )
                .moveX(
                  begin: -10,
                  end: 20,
                  duration: const Duration(seconds: 2),
                )
                .moveY(
                    begin: -10, end: 20, duration: const Duration(seconds: 2))
                .animate(
                  onPlay: (controller) =>
                      controller.repeat(reverse: true), // loop
                )
                .scale(
                    end: const Offset(1.1, 1.1),
                    duration: Durations.extralong4),
          ),
          Positioned(
            width: context.deviceWidthFactor(.65),
            right: -120,
            child: Transform.flip(
              flipX: true,
              flipY: false,
              child: Assets.images.scissorsHand
                  .image()
                  .animate(
                    onPlay: (controller) =>
                        controller.repeat(reverse: true), // loop
                  )
                  .moveX(
                      begin: -10, end: 20, duration: const Duration(seconds: 2))
                  .moveY(
                      begin: -10, end: 20, duration: const Duration(seconds: 2))
                  .animate(
                    onPlay: (controller) =>
                        controller.repeat(reverse: true), // loop
                  )
                  .scale(
                      end: const Offset(1.05, 1.05),
                      duration: Durations.extralong4),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Text(
                '00:23',
                style: kHeading2TextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
              bottom: 12,
              right: 12,
              height: 80,
              width: 250,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 1),
                        ]),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 1),
                        ]),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 1),
                        ]),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
