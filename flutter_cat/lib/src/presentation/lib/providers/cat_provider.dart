import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_ports/cats_in_ports/get_cats_in_ports.dart';
import 'package:in_ports/cats_in_ports/search_cats_in_port.dart';
import 'package:flutter_cat/src/presentation/lib/shared/utils/export_di.dart';
import 'package:domain/cat_domain/cat_domain.dart';

final getCatProvider = FutureProvider<List<CatDomain>>((ref) async {
  final getListCast = getIt<GetCatsInPort>();
  return await getListCast.getCat();
});

final searchCatProvider =
    FutureProvider.family<List<CatDomain>, String>((ref, query) async {
  if (query.isEmpty) return [];
  final searchCat = getIt<SearchCatInPorts>();
  return await searchCat.searchsCat(query);
});

final selectedCatProvider = StateProvider<CatDomain?>((ref) => null);
final searchQueryProvider = StateProvider<String>((ref) => '');
