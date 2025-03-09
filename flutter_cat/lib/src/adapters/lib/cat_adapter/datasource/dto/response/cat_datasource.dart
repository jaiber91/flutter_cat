import 'package:adapters/cat_adapter/datasource/dto/response/cat_dto.dart';

import '../../../../shared/http/http_service.dart';

class CatDatasource {
  final HttpService _httpService;

  CatDatasource(this._httpService);

  Future<List<CatDTO>> getCats() async {
    final response = await _httpService.get(path: '/breeds');

    final List<dynamic> data = response.data;
    return data.map((json) => CatDTO.fromJson(json)).toList();
  }
}
