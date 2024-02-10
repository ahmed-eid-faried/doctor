// import 'dart:convert';
// import 'dart:io';
// import 'package:doctor/core/core/imports/export_path.dart';
// import 'package:dio/dio.dart';
// import 'package:dio/io.dart';
// import '../../../injection_container.dart' as di;
// import '../error/exceptions.dart';
// import '../utils/constants_manager.dart';
// import 'api_consumer.dart';
// import 'app_interceptors.dart';
// import 'status_code.dart';

// class DioConsumer implements ApiConsumer {
//   final Dio client;
//   var options2 = Options(headers: {'Lang': Local.saveLang() ? 'ar' : 'en'});

//   DioConsumer({required this.client}) {
//     client.httpClientAdapter = IOHttpClientAdapter(
//       createHttpClient: () {
//         // Don't trust any certificate just because their root cert is trusted.
//         final HttpClient client =
//             HttpClient(context: SecurityContext(withTrustedRoots: false));
//         // You can test the intermediate / root cert here. We just ignore it.
//         client.badCertificateCallback = (cert, host, port) => true;
//         return client;
//       },
//     );

//     client.options
//       ..baseUrl = EndPoints.baseUrl
//       ..headers = {
//         'Authorization': 'Bearer ${AppConstants.token}',
//         'Lang': Local.saveLang() ? 'ar' : 'en'
//       }
//       ..responseType = ResponseType.plain
//       ..followRedirects = false
//       ..validateStatus = (status) {
//         return status! < StatusCode.internalServerError;
//       };
//     client.interceptors.add(di.sl<AppInterceptors>());
//     if (kDebugMode) {
//       client.interceptors.add(di.sl<LogInterceptor>());
//     }
//   }

//   @override
//   Future get(String path,
//       {Map<String, dynamic>? queryParameters,
//       Map<String, dynamic>? data}) async {
//     try {
//       // Local.lang(context)      = CacheHelper.get(key: 'ARABIC') ?? false;
//       Local.saveLang();

//       final response = await client.get(
//         options:
//             Options(headers: {'Lang': AppConstants.language ? 'ar' : 'en'}),
//         path,
//         queryParameters: queryParameters,
//         data: data,
//       );
//       return _handleResponseAsJson(response);
//     } on DioException catch (error) {
//       _handleDioException(error);
//     }
//   }

//   @override
//   Future post(String path,
//       {Map<String, dynamic>? body,
//       bool formDataIsEnabled = false,
//       Map<String, dynamic>? queryParameters}) async {
//     try {
//       // Local.lang(context)      = CacheHelper.get(key: 'ARABIC') ?? false;
//       Local.saveLang();

//       final response = await client.post(
//         options: options2,
//         path,
//         queryParameters: queryParameters,
//         data: formDataIsEnabled ? FormData.fromMap(body!) : body,
//       );
//       return _handleResponseAsJson(response);
//     } on DioException catch (error) {
//       _handleDioException(error);
//     }
//   }

//   @override
//   Future patch(String path,
//       {Map<String, dynamic>? body,
//       Map<String, dynamic>? queryParameters}) async {
//     try {
//       // Local.lang(context)      = CacheHelper.get(key: 'ARABIC') ?? false;
//       Local.saveLang();

//       final response = await client.patch(
//         options: options2,
//         path,
//         queryParameters: queryParameters,
//         data: body,
//       );
//       return _handleResponseAsJson(response);
//     } on DioException catch (error) {
//       _handleDioException(error);
//     }
//   }

//   @override
//   Future put(String path,
//       {Map<String, dynamic>? body,
//       Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response = await client.put(
//         options: options2,
//         path,
//         queryParameters: queryParameters,
//         data: body,
//       );
//       return _handleResponseAsJson(response);
//     } on DioException catch (error) {
//       _handleDioException(error);
//     }
//   }

//   // @override
//   // Future delete(String path,
//   //     {Map<String, dynamic>? body,
//   //       Map<String, dynamic>? queryParameters}) async {
//   //   try {
//   //     final response = await client.delete(path,
//   //         queryParameters: queryParameters,
//   //         data: body,
//   //         options: Options(headers: {'x-auth-token': AppConstants.token}));
//   //     return _handleResponseAsJson(response);
//   //   } on DioException catch (error) {
//   //     _handleDioException(error);
//   //   }
//   // }

//   dynamic _handleResponseAsJson(Response<dynamic> response) {
//     final responseJson = jsonDecode(response.data.toString());
//     return responseJson;
//   }

//   dynamic _handleDioException(DioException error) {
//     switch (error.type) {
//       case DioExceptionType.connectionTimeout:
//       case DioExceptionType.sendTimeout:
//       case DioExceptionType.receiveTimeout:
//         throw const FetchDataException();
//       case DioExceptionType.badResponse:
//         switch (error.response?.statusCode) {
//           case StatusCode.badRequest:
//             throw const BadRequestException();
//           case StatusCode.unauthorized:
//           case StatusCode.forbidden:
//             throw const UnauthorizedException();
//           case StatusCode.notFound:
//             throw const NotFoundException();
//           case StatusCode.conflict:
//             throw const ConflictException();

//           case StatusCode.internalServerError:
//             throw const InternalServerErrorException();
//         }
//         break;
//       case DioExceptionType.cancel:
//         break;
//       case DioExceptionType.badCertificate:
//         break;
//       case DioExceptionType.connectionError:
//         throw const NoInternetConnectionException();
//       case DioExceptionType.unknown:
//         throw const NoInternetConnectionException();
//     }
//   }
// }
