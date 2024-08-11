import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_logic.g.dart';

@Riverpod(keepAlive: true)
class Splash extends _$Splash {
  @override
  FutureOr<bool> build() => false;

  FutureOr<void> splashConfig() async {
    await Future.delayed(const Duration(seconds: 2));
    state = const AsyncData(true);
  }

  FutureOr<void> checkOpenGame()async{
  }
}
