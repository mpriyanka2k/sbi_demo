class ServerException implements Exception {
  final String message;
  final int? statusCode;

  ServerException({this.message = "Server Exception", this.statusCode});
}

class CacheException implements Exception {
  final String message;

  CacheException({this.message = "Cache Exception"});
}

class NetworkException implements Exception {
  final String message;

  NetworkException({this.message = "No Internet Connection"});
}

class ParsingException implements Exception {
  final String message;

  ParsingException({this.message = "Failed to parse data"});
}

class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException({this.message = "Unauthorized Access"});
}

class UnknownException implements Exception {
  final String message;

  UnknownException({this.message = "Unknown error occurred"});
}
