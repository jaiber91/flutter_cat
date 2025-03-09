import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_ports/in_ports.dart';
import 'package:flutter_cat/src/presentation/lib/shared/utils/export_di.dart';
import 'package:domain/cat/cat_domain.dart';

final getCatProvider = FutureProvider<List<CatDomain>>((ref) async {
  final catUseCase = getIt<CatInPorts>();
  return await catUseCase.getCat();
});

final selectedCatProvider = StateProvider<CatDomain?>((ref) => null);
