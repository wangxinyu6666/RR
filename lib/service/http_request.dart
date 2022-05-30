/*
* 封装第三方库，然后自己用它第三方库时，调用自己封装的就行了，这样便于更换第三方库
* */
import 'package:dio/dio.dart';
//import 'dart:_interceptors';
import 'config.dart';
class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeout);
  static final Dio dio = Dio(baseOptions);
  static Future<void> request(String url, {
                 String method = "get",

                 }) async {
    //1. 创建单独配置
    final options = Options(method: method);

    //2.发送网络请求
    try {
      Response response = await dio.request(url, options: options);
      return response.data;
    } on DioError catch(e) {
        return Future.error(e);
    }
  }
}