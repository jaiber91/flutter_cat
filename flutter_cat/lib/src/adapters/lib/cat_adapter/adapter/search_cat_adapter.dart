import 'package:adapters/cat_adapter/mappers/cat.mapper.dart';
import 'package:domain/cat_domain/cat_domain.dart';
import 'package:out_ports/cats_out_ports/search_cats_out_port.dart';

import '../datasource/dto/response/cat_dto.dart';
import '../datasource/dto/response/search_cats_datasource.dart';

class SearchCatAdapter implements SearchCatOutPorts {
  final SearchCatsDatasource _searchCatsDatasource;

  SearchCatAdapter(this._searchCatsDatasource);

  @override
  Future<List<CatDomain>> searchsCat(String query) async {
    final List<CatDTO> cats = await _searchCatsDatasource.searchsCats(query);

    return cats.map((cat) => cat.toDomain()).toList();
  }
}
