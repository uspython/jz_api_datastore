/*
 * @Author: jeffzhao
 * @Date: 2019-03-18 23:25:48
 * @Last Modified by: jeffzhao
 * @Last Modified time: 2019-03-19 11:06:56
 * Copyright Zhaojianfei. All rights reserved.
 */
import 'package:dio/dio.dart';
class CallbackOptions {
  CallbackOptions({ List<Interceptor> interceptors }): interceptors = interceptors ?? [];
  CallbackOptions.fromEmpty() : interceptors = [];

  List<Interceptor> interceptors;
}
