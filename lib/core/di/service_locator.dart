
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/network/api_service.dart';
import 'package:sbi_demo/core/network/network_info.dart';
import 'package:sbi_demo/core/network/token_refresh_service.dart';
import 'package:sbi_demo/core/network/token_storage.dart';

final locator = GetIt.instance;

Future<void> init() async {
  final flavorConfig = FlavorConfig.instance;

  locator.registerLazySingleton<TokenStorage>(() => TokenStorage());

  locator.registerLazySingleton<Dio>(() => Dio(
        BaseOptions(
          baseUrl: flavorConfig.baseUrl,
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 20),
        ),
      ));

  locator.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: flavorConfig.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      ),
    ),
    instanceName: 'refresh_dio',
  );

  locator.registerLazySingleton(() => Connectivity());
  locator.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(locator<Connectivity>()));

  locator.registerLazySingleton<TokenRefreshService>(() => TokenRefreshService(
        locator<Dio>(instanceName: 'refresh_dio'),
        locator<TokenStorage>(),
      ));

  locator.registerLazySingleton(() => ApiService(
        locator<Dio>(),
        locator<NetworkInfo>(),
        locator<TokenStorage>(),
        locator<TokenRefreshService>(),
      ));
}
