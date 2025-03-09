import 'package:adapters/cat_adapter/adapter/cat_adapter.dart';
import 'package:adapters/cat_adapter/datasource/dto/response/cat_datasource.dart';
import 'package:adapters/shared/http/http_interface.dart';
import 'package:adapters/shared/http/http_service.dart';
import 'package:get_it/get_it.dart';
import 'package:out_ports/out_ports.dart';
import 'package:dio/dio.dart';

void adaptersDI(GetIt getIt) {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerLazySingleton<HttpService>(() => HttpService(
        HttpInterface(Dio()),
      ));

  getIt.registerSingleton<CatDatasource>(
      CatDatasource(getIt.get<HttpService>()));

  getIt.registerLazySingleton<CatOutPorts>(() => CatAdapter(
        getIt.get<CatDatasource>(),
      ));
}
