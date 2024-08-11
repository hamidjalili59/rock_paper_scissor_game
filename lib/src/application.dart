import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rockie/src/feature/auth/domain/models/tokens_model.dart';
import 'package:toastification/toastification.dart';
import 'package:rockie/src/config/l10n/arb/app_localizations.dart';
import 'package:rockie/src/injection/main_modules_providers.dart';

class Application extends ConsumerStatefulWidget {
  const Application({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends ConsumerState<Application> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized()
        .addPostFrameCallback(appInitialMethod);
  }

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp.router(
        routerConfig: ref.read(appRouterProvider).router,
        debugShowCheckedModeBanner: false,
        theme: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: const Color(0xff000080),
              ),
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        locale: AppLocalizations.supportedLocales.first,
      ),
    );
  }

  Future<void> appInitialMethod(Duration timeStamp) async {
    final database = ref.read(databaseServiceProvider);
    await database.initialize();
    await database.registerAdapter(TokensModelAdapter());
  }
}
