import 'package:get_it/get_it.dart';
import 'package:in_ports/cats/in_ports.dart';
import 'package:in_ports/cats/search_cats_in_port.dart';
import 'package:out_ports/cats/out_ports.dart';
import 'package:out_ports/cats/search_cats_out_port.dart';
import 'package:use_cases/cats/cat_use_cases.dart';
import 'package:use_cases/cats/search_cats_use_cases.dart';

void businessDI(GetIt getIt) {
  getIt.registerLazySingleton<CatInPorts>(
    () => GetCatUseCase(getIt<CatOutPorts>()),
  );

  getIt.registerLazySingleton<SearchCatInPorts>(
    () => SearchCatUseCase(getIt<SearchCatOutPorts>()),
  );
}
