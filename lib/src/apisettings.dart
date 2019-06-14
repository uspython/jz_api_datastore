/*
 * @Author: jeffzhao
 * @Date: 2019-03-17 11:54:54
 * @Last Modified by: jeffzhao
 * @Last Modified time: 2019-03-17 18:41:44
 * Copyright Zhaojianfei. All rights reserved.
 */
import 'package:dio/dio.dart' show Interceptor;
class ApiSettings {
  static final ApiSettings _s = ApiSettings._internal();
  factory ApiSettings() { return _s; }
  ApiSettings._internal();

  /// Base api url
  String baseUrl = 'https://baidu.com/';
  /// Connect time out (ms)
  int connectTimeout = 10 * 60 * 1000;
  /// Receive time out (ms)
  int receiveTimeout = 60 * 1000;
  /// Default request header
  Map<String, String> requestHeader = {};
  /// Default Global Interceptors
  List<Interceptor> defaultInterceptors = [];
}
