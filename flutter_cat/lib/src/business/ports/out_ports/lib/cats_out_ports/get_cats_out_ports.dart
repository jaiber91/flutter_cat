import 'package:domain/cat_domain/cat_domain.dart';

abstract class GetCatsOutPort {
  Future<List<CatDomain>> getCat();
}
