import 'package:domain/cat/cat_domain.dart';

abstract class CatInPorts {
  Future<List<CatDomain>> getCat();
}
