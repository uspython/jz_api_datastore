/*
 * @Author: jeffzhao
 * @Date: 2019-04-02 15:39:47
 * @Last Modified by: jeffzhao
 * @Last Modified time: 2019-04-02 16:29:34
 * Copyright Zhaojianfei. All rights reserved.
 */
import 'package:dio/dio.dart' show Interceptor, Response, RequestOptions;

class CacheInterceptor extends Interceptor {
  CacheInterceptor._();
  static final CacheInterceptor _singlon = CacheInterceptor._();
  factory CacheInterceptor.shared() {
    return _singlon;
  }

  Map<Uri, Response> get cache => _cache;

  final _cache = Map<Uri, Response>();

  @override
  dynamic onRequest(RequestOptions options) {
    final response = _cache[options.uri];
    if (options.extra['needCached'] == false) {
      print('[API DataStore]: Ignore cache: ${options.uri} \n');
      return options;
    } else if (response != null) {
      print('[API DataStore]: Cache hitted: ${options.uri} \n');
      return response;
    }
  }

  @override
  dynamic onResponse(Response response) {
    if (response.request.extra['needCached'] == true) {
      _cache[response.request.uri] = response;
    }
  }

  /// Clear cache
  void clearCache() {
    _cache.clear();
  }
}
