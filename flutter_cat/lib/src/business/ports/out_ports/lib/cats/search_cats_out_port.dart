import 'package:domain/cat/cat_domain.dart';

abstract class SearchCatOutPorts {
  Future<List<CatDomain>> searchsCat(String query);
}
