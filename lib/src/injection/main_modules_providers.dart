import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rockie/src/core/constants/general_constants.dart';
import 'package:rockie/src/config/router/router.dart';
import 'package:rockie/src/core/core.dart';

part 'main_modules_providers.g.dart';

@Riverpod(keepAlive: true)
Logger logger(LoggerRef ref) {
  return Logger();
}

@Riverpod(keepAlive: true)
AppHelper appHelper(AppHelperRef ref) {
  return AppHelper(ref);
}

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter();
}

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  return Dio(BaseOptions(
    baseUrl: baseUrl,
    validateStatus: (status) => status.validateResponse(),
  ));
}

@Riverpod(keepAlive: true)
ApiService apiService(ApiServiceRef ref) {
  return ApiServiceImpl(
    dio: ref.read(dioProvider),
    interceptors: [
      RetryInterceptor(ref.read(dioProvider),
          retryOptions: const RetryOptions()),
    ],
  );
}

@Riverpod(keepAlive: true)
DatabaseService databaseService(DatabaseServiceRef ref) {
  return DatabaseServiceImpl();
}
