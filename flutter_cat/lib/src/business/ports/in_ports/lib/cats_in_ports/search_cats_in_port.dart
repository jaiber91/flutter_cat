import 'package:domain/cat_domain/cat_domain.dart';

abstract class SearchCatInPorts {
  Future<List<CatDomain>> searchsCat(String query);
}
