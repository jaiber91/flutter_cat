import 'package:domain/cat/cat_domain.dart';

abstract class CatInPorts {
  Future<CatDomain> getCat({
    required String breeds,
  });
}
