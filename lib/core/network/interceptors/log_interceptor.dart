import 'package:dio/dio.dart';

class AppLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("➡️ REQUEST: ${options.method} ${options.uri}");
    print("Headers: ${options.headers}");
    print("Query: ${options.queryParameters}");
    print("Data: ${options.data}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("⬅️ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}");
    print("Data: ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print("❌ ERROR: ${err.message}");
    if (err.response != null) {
      print("Response Data: ${err.response?.data}");
    }
    super.onError(err, handler);
  }
}
