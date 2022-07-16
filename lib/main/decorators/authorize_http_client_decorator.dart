import 'package:flutter/foundation.dart';

import '../../data/cache/cache.dart';
import '../../data/http/http.dart';

class AuthorizeHttpClientDecorator implements HttpClient {
  final FetchSecureCacheStorage fetchSecureCacheStorage;
  final DeleteSecureCacheStorage deleteSecureCacheStorage;
  final HttpClient decoratee;

  AuthorizeHttpClientDecorator({
    required this.fetchSecureCacheStorage,
    required this.deleteSecureCacheStorage,
    required this.decoratee,
  });

  Future<dynamic> request({
    required String url,
    required String method,
    Map? body,
    Map? headers,
  }) async {
    try {
      final token = await fetchSecureCacheStorage.fetch('token');
      // final authorizedHeaders = headers ?? {}..addAll({'x-access-token': token});
      final authorizedHeaders = headers ?? {}..addAll({'Authorization': 'Bearer $token'});

      // Todo log
      if (kDebugMode) {
        print(authorizedHeaders);
      }

      return await decoratee.request(url: url, method: method, body: body, headers: authorizedHeaders);
    } catch(error) {
      if (error is HttpError && error != HttpError.forbidden) {
        rethrow;
      } else {
        await deleteSecureCacheStorage.delete('token');
        throw HttpError.forbidden;
      }
    }
  }
}