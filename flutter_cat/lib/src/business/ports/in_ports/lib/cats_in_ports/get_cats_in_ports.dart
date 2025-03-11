import 'package:domain/cat_domain/cat_domain.dart';

abstract class GetCatsInPort {
  Future<List<CatDomain>> getCat();
}
