import 'package:dio/dio.dart';
import 'package:mockup_caja_vecina/services/services.dart';

class AppApi {
  static final Dio _dio = Dio();

  static void dioConfig(){
    _dio.options.baseUrl = 'http://localhost:3000/api';
    _dio.options.headers = {
      'x-token': LocalStorage.preferences.getString(LocalStorage.tokenKey) ?? '',
    };
  }

  static Future httpGet(String path) async {
    try {
      final Response<dynamic> response = await _dio.get(path);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('else response.statusCode: ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future httpPost(
    String path,
    Map<String, dynamic> data,
  ) async {
    try {
      final Response<dynamic> response = await _dio.post(path, data: data);
      if (response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('else response.statusCode: ${response.statusCode}');
      }
    } catch (error) {
      print('error catch api: $error');
      rethrow;
    }
  }

  static void close() {
    _dio.close();
  }
}
