import 'package:domain/cat/cat_domain.dart';

abstract class SearchCatInPorts {
  Future<List<CatDomain>> searchsCat(String query);
}
