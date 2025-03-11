import 'package:domain/cat_domain/cat_domain.dart';

abstract class SearchCatOutPorts {
  Future<List<CatDomain>> searchsCat(String query);
}
