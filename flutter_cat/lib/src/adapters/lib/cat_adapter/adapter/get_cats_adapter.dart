import 'package:adapters/cat_adapter/datasource/dto/response/cat_dto.dart';
import 'package:adapters/cat_adapter/mappers/cat.mapper.dart';
import 'package:domain/cat_domain/cat_domain.dart';
import 'package:out_ports/cats_out_ports/get_cats_out_ports.dart';

import '../datasource/dto/response/get_cats_datasource.dart';

class GetCatAdapter implements GetCatsOutPort {
  final GetCatDatasource _catDatasource;

  GetCatAdapter(this._catDatasource);

  @override
  Future<List<CatDomain>> getCat() async {
    final List<CatDTO> cats = await _catDatasource.getCats();

    return cats.map((cat) => cat.toDomain()).toList();
  }
}
