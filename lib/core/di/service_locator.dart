
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sbi_demo/core/network/api_service.dart';
import 'package:sbi_demo/core/network/network_info.dart';
import 'package:sbi_demo/core/pref/shared_pref.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // -----------------------------
  // CORE
  // -----------------------------
  // sl.registerLazySingleton(() => NetworkInfoImpl());
  // sl.registerLazySingleton(() => AppLogger());


sl.registerLazySingleton(() => Dio(BaseOptions(
  baseUrl: 'https://api.jikan.moe/',
  connectTimeout: const Duration(seconds: 20),
  receiveTimeout: const Duration(seconds: 20),
)));

sl.registerLazySingleton(() => Connectivity());
sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

sl.registerLazySingleton(() => ApiService(sl(), sl()));

sl.registerSingletonAsync<Prefs>(() async {
  return await Prefs.getInstance();
});


}
