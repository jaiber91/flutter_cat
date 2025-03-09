import 'package:get_it/get_it.dart';
import 'package:in_ports/in_ports.dart';
import 'package:out_ports/out_ports.dart';
import 'package:use_cases/cat_use_cases.dart';

void businessDI(GetIt getIt) {
  getIt.registerLazySingleton<CatInPorts>(
    () => GetCatUseCase(getIt<CatOutPorts>()),
  );
}
