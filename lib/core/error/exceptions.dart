class ServerException implements Exception {
  final int code;
  const ServerException(this.code) : super();
}

class CacheException implements Exception {}

class InvalidFormatException implements Exception {}
