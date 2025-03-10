import 'package:domain/cat/cat_domain.dart';

abstract class CatOutPorts {
  Future<List<CatDomain>> getCat();
}
