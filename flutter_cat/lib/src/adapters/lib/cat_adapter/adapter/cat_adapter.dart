import 'package:adapters/cat_adapter/datasource/dto/response/cat_dto.dart';
import 'package:adapters/cat_adapter/mappers/cat.mapper.dart';
import 'package:domain/cat/cat_domain.dart';
import 'package:out_ports/out_ports.dart';
import 'package:collection/collection.dart';

import '../datasource/dto/response/cat_datasource.dart';

class CatAdapter implements CatOutPorts {
  final CatDatasource _catDatasource;

  CatAdapter(this._catDatasource);

  @override
  Future<CatDomain> getCat({required String breeds}) async {
    final List<CatDTO> cats = await _catDatasource.getCats();

    final CatDTO? cat = cats.firstWhereOrNull(
      (e) => e.name.toLowerCase() == breeds.toLowerCase(),
    );

    return cat?.toDomain() ??
        CatDomain(
          id: 'unknown',
          name: 'Unknown',
          description: 'No description available',
          temperament: 'Unknown',
          origin: 'Unknown',
          imageUrl: null,
        );
  }
}
