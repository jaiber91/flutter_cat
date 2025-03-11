import 'package:get_it/get_it.dart';
import 'package:in_ports/cats_in_ports/get_cats_in_ports.dart';
import 'package:in_ports/cats_in_ports/search_cats_in_port.dart';
import 'package:out_ports/cats_out_ports/get_cats_out_ports.dart';
import 'package:out_ports/cats_out_ports/search_cats_out_port.dart';
import 'package:use_cases/cats_use_cases/cat_use_cases.dart';
import 'package:use_cases/cats_use_cases/search_cats_use_cases.dart';

void businessDI(GetIt getIt) {
  getIt.registerLazySingleton<GetCatsInPort>(
    () => GetCatUseCase(getIt<GetCatsOutPort>()),
  );

  getIt.registerLazySingleton<SearchCatInPorts>(
    () => SearchCatUseCase(getIt<SearchCatOutPorts>()),
  );
}
