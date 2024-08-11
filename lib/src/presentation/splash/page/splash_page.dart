import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rockie/src/core/constants/routes.dart';
import 'package:rockie/src/presentation/splash/page/logic/splash_logic.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized()
        .addPostFrameCallback(initialMethod);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(splashProvider, _listener);
    return Scaffold(
      body: Container(color: Colors.red),
    );
  }

  Future<void> initialMethod(Duration timeStamp) async {
    ref.read(splashProvider.notifier).splashConfig();
  }

  void _listener(AsyncValue<bool>? previous, AsyncValue<bool> next) {
    next.maybeWhen(
      orElse: () {},
      data: (data) {
        if (data) {
          context.go(authRoute);
        }
      },
    );
  }
}
