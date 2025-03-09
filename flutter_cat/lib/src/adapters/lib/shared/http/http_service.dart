import 'package:adapters/shared/http/dto/http_request_dto.dart';
import 'package:adapters/shared/http/dto/http_response_dto.dart';
import 'package:adapters/shared/http/http_interface.dart';
import 'package:dio/dio.dart';

class HttpService {
  final HttpInterface _httInterface;

  HttpService(this._httInterface);

  HttpResponseDTO<T> _httpResponseDTO<T>(Response response) {
    return HttpResponseDTO<T>(
      data: response.data,
    );
  }

  HttpRequestDTO _buildRequest({
    required String path,
    Map<String, dynamic>? queryParameters,
    final Map<String, dynamic> body = const {},
    final Map<String, dynamic> headers = const {},
  }) {
    return HttpRequestDTO(
      uri: Uri(
        scheme: 'https', // TODO: move to config
        host: 'api.thecatapi.com', // ✅ Solo el dominio, sin /v1
        path: 'v1$path',
        queryParameters: queryParameters,
      ),
      headers: headers,
      body: body,
    );
  }

  Future<HttpResponseDTO<T>> get<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    final Map<String, dynamic> body = const {},
    final Map<String, dynamic> headers = const {},
  }) async {
    Response response = await _httInterface.get(_buildRequest(
      path: path,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
    ));

    return _httpResponseDTO(response);
  }
}
