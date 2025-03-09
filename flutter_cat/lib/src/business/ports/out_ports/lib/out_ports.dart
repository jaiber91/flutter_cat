import 'package:domain/cat/cat_domain.dart';

abstract class CatOutPorts {
  Future<CatDomain> getCat({
    required String breeds,
  });
}
