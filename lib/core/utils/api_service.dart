import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://WWW.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String url}) async {
   var response =  await dio.get('$_baseUrl $url');
    return response.data;
  }
}
