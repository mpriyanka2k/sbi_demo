import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sbi_demo/core/network/api_service.dart';
import 'package:sbi_demo/core/network/interceptors/auth_interceptor.dart';
import 'package:sbi_demo/core/network/interceptors/header_interceptor.dart';
import 'package:sbi_demo/core/network/interceptors/log_interceptor.dart';
import 'package:sbi_demo/core/network/interceptors/refresh_token_interceptor.dart';
import 'package:sbi_demo/core/network/network_info.dart';
import 'package:sbi_demo/core/network/token_refresh_service.dart';

final locator = GetIt.instance;

Future<void> init() async {
  final flavorConfig = FlavorConfig.instance;

  locator.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: flavorConfig.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      ),
    ),
  );

  locator.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: flavorConfig.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      ),
    );
    dio.interceptors.addAll([
      AppLogInterceptor(),
      HeaderInterceptor(),
      AuthInterceptor(locator<FlutterSecureStorages>()),
      RefreshTokenInterceptor(locator<Dio>(),locator<TokenRefreshService>(),locator<FlutterSecureStorages>(),locator<ApiService>()),
    ]);

    return dio;
  }, instanceName: 'refresh_dio');

  locator.registerLazySingleton(() => Connectivity());
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(locator<Connectivity>()),
  );
  locator.registerLazySingleton<FlutterSecureStorages>(
    () => FlutterSecureStorages(),
  );

  locator.registerLazySingleton<TokenRefreshService>(
    () => TokenRefreshService(
      locator<Dio>(instanceName: 'refresh_dio'),
      locator<FlutterSecureStorages>(),
    ),
  );

  locator.registerLazySingleton(
    () => ApiService(
      locator<Dio>(),
      locator<NetworkInfo>(),
      locator<FlutterSecureStorages>(),
      locator<TokenRefreshService>(),
    ),
  );
}
