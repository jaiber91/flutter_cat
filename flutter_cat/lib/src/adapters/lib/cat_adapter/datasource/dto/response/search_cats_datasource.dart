import 'package:adapters/cat_adapter/datasource/dto/response/cat_dto.dart';
import 'package:flutter/foundation.dart';

import '../../../../shared/http/http_api_key.dart';
import '../../../../shared/http/http_service.dart';

class SearchCatsDatasource {
  final HttpService _httpService;

  SearchCatsDatasource(this._httpService);

  Future<List<CatDTO>> searchsCats(String query) async {
    final Map<String, dynamic> headers = {
      'x-api-key': HttpApiKey.apiKey,
    };
    Map<String, dynamic>? queryParameters = {
      'name': query,
    };
    try {
      final response = //TODO: USE THE CORRECT PATH OF FILE
          await _httpService.get(
        path: '/breeds/search',
        headers: headers,
        queryParameters: queryParameters,
      );
      final List<dynamic> data = response.data;

      final cats = data.map((json) => CatDTO.fromJson(json)).toList();

      return cats;
    } catch (e, stack) {
      debugPrint('Error en getCats: $e\n$stack');
      return [];
    }
  }
}
