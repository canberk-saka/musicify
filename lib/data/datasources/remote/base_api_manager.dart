import 'package:dio/dio.dart';
import 'package:musicify/constants/base_url_constants.dart';
import 'package:musicify/constants/controller_constants.dart';
import 'package:musicify/constants/static_variables.dart';
import 'package:musicify/data/interfaces/jsonable_interface.dart';
import 'package:musicify/dependency_injection/interface/injectable_interface.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

///{@template baseApiManager}
///Base Api Manager
///{@endtemplate}
abstract base class BaseApiManager implements InjectableInterface {
  ///{@macro baseApiManager}
  BaseApiManager(this.baseUrl, this.controller) {
    _dio.options.baseUrl = baseUrl + controller;
    _dio.interceptors.add(
      TalkerDioLogger(
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
        ),
      ),
    );
  }

  ///Url'in base kısmı
  final BaseUrlConstants baseUrl;

  ///Url'in controller kısmı
  final ControllerConstants controller;

  ///Dio
  final Dio _dio = Dio();

  ///Get isteği
  Future<T> dioGet<T extends JsonableInterface<T>>(
    String endpoint,
    T parseModel, {
    Map<String, dynamic>? queryParams,
    List<String>? pathParams,
  }) async {
    final endPoint = endpoint + (pathParams != null ? '/${pathParams.join('/')}' : '');
    final response = await _dio.get<Map<String, dynamic>>(endPoint, queryParameters: queryParams, options: Options(headers: _getHeader()));
    return parseModel.fromJson(response.data!);
  }

  ///Post isteği
  Future<T> dioPost<T extends JsonableInterface<T>>(
    String endpoint,
    T parseModel, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParams,
    List<String>? pathParams,
  }) async {
    final endPoint = endpoint + (pathParams != null ? '/${pathParams.join('/')}' : '');
    final response = await _dio.post<Map<String, dynamic>>(
      endPoint,
      data: data,
      queryParameters: queryParams,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );

    try {
      return parseModel.fromJson(response.data!);
    } catch (e) {
      throw Exception('Error while parsing response: $e');
    }
  }

  // Future<T> put<T>(String endpoint, dynamic data) async {
  //   final response = await dio.put(endpoint, data: data);
  //   return response.data;
  // }

  // Future<T> delete<T>(String endpoint) async {
  //   final response = await dio.delete(endpoint);
  //   return response.data;
  // }

  Map<String, dynamic> _getHeader() => {
        'Authorization': 'Bearer ${StaticVariables.token}',
      };
}
