import 'package:dio/dio.dart';
import 'package:sbi_demo/core/network/network_constants.dart';
import 'package:sbi_demo/core/network/token_storage.dart';

class TokenRefreshService {
  TokenRefreshService(this._dio, this._tokenStorage, {this.refreshEndpoint = defaultRefreshPath});

  final Dio _dio;
  final TokenStorage _tokenStorage;
  final String refreshEndpoint;

  Future<String?> refresh() async {
    final refreshToken = await _tokenStorage.getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      return null;
    }

    final response = await _dio.post(
      refreshEndpoint,
      data: {'refreshToken': refreshToken},
      options: Options(
        extra: const {skipTokenRefreshKey: true},
        contentType: Headers.jsonContentType,
      ),
    );

    final data = response.data;
    if (data is! Map<String, dynamic>) {
      return null;
    }

    final newAccessToken = data['accessToken'] as String?;
    final newRefreshToken = (data['refreshToken'] as String?) ?? refreshToken;

    if (newAccessToken == null || newAccessToken.isEmpty) {
      return null;
    }

    await _tokenStorage.saveTokens(
      accessToken: newAccessToken,
      refreshToken: newRefreshToken,
    );
    return newAccessToken;
  }
}

