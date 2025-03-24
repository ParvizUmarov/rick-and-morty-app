import 'dart:async';
import 'dart:developer';

import 'package:chopper/chopper.dart';

class LoggingInterceptor implements Interceptor{

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    log("request: ${chain.request}");
    final response = await chain.proceed(chain.request);
    log("response: $response");
    return response;
  }

}