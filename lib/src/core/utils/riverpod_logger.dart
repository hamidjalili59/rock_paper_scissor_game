import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rockie/src/injection/main_modules_providers.dart';

class RiverpodLogger extends ProviderObserver {
  RiverpodLogger(this.container);

  final ProviderContainer container;

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final asyncValueJson = <String, dynamic>{};

    container.read(appHelperProvider).logMessage(
          {
            'provider': provider.name ?? provider.runtimeType,
            'new value': asyncValueJson,
          }.toString(),
        );
  }
}
