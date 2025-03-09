import 'package:adapters/cat_adapter/datasource/dto/response/cat_dto.dart';
import 'package:adapters/cat_adapter/mappers/cat.mapper.dart';
import 'package:domain/cat/cat_domain.dart';
import 'package:out_ports/out_ports.dart';

import '../datasource/dto/response/cat_datasource.dart';

class CatAdapter implements CatOutPorts {
  final CatDatasource _catDatasource;

  CatAdapter(this._catDatasource);

  @override
  Future<List<CatDomain>> getCat() async {
    final List<CatDTO> cats = await _catDatasource.getCats();

    return cats.map((cat) => cat.toDomain()).toList();
  }
}
