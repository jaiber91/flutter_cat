import 'package:adapters/cat_adapter/datasource/dto/response/cat_dto.dart';
import 'package:flutter/foundation.dart';

import '../../../../shared/http/http_api_key.dart';
import '../../../../shared/http/http_service.dart';

class CatDatasource {
  final HttpService _httpService;

  CatDatasource(this._httpService);

  Future<List<CatDTO>> getCats() async {
    final Map<String, dynamic> headers = {
      'x-api-key': HttpApiKey.apiKey,
    };
    try {
      final response =
          await _httpService.get(path: '/breeds', headers: headers);
      final List<dynamic> data = response.data;

      final cats = data.map((json) => CatDTO.fromJson(json)).toList();

      return cats;
    } catch (e, stack) {
      debugPrint('Error en getCats: $e\n$stack');
      return [];
    }
  }
}
