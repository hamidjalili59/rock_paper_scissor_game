import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rockie/src/config/themes/app_themes.dart';
import 'package:rockie/src/core/gen/assets.gen.dart';
import 'package:rockie/src/core/core.dart';

class GamePage extends ConsumerStatefulWidget {
  const GamePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GamePageState();
}

class _GamePageState extends ConsumerState<GamePage> {
  @override
  Widget build(BuildContext context) {
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
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 36),
              child: GameTimeCounter(),
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

class GameTimeCounter extends ConsumerStatefulWidget {
  const GameTimeCounter({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GameTimeCounterState();
}

class _GameTimeCounterState extends ConsumerState<GameTimeCounter> {
  late Timer? _timer;
  DateTime time = DateTime.now().add(const Duration(seconds: 30));

  @override
  void initState() {
    super.initState();
    _timer = Timer(
      Durations.extralong4,
      _timerPeriodMethod,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('mm:ss').format(time),
      style: kHeading2TextStyle.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Future<void> _timerPeriodMethod() async {
    if (time.second > 0) {
      setState(() {
        time = time.subtract(const Duration(seconds: 1));
      });
    } else {
      _timer?.cancel();
      setState(() {
        _timer = null;
      });
    }
  }
}
