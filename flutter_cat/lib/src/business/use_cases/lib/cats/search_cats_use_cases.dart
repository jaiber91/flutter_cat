import 'package:in_ports/cats/search_cats_in_port.dart';
import 'package:out_ports/cats/search_cats_out_port.dart';
import 'package:domain/cat/cat_domain.dart';

class SearchCatUseCase implements SearchCatInPorts {
  final SearchCatOutPorts _searchCatOutPorts;

  SearchCatUseCase(this._searchCatOutPorts);

  @override
  Future<List<CatDomain>> searchsCat(String query) async {
    return await _searchCatOutPorts.searchsCat(query);
  }
}
