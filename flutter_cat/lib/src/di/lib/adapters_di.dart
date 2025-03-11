import 'package:adapters/cat_adapter/adapter/get_cats_adapter.dart';
import 'package:adapters/cat_adapter/adapter/search_cat_adapter.dart';
import 'package:adapters/cat_adapter/datasource/dto/response/get_cats_datasource.dart';
import 'package:adapters/cat_adapter/datasource/dto/response/search_cats_datasource.dart';
import 'package:adapters/shared/http/http_interface.dart';
import 'package:adapters/shared/http/http_service.dart';
import 'package:get_it/get_it.dart';
import 'package:out_ports/cats_out_ports/get_cats_out_ports.dart';
import 'package:out_ports/cats_out_ports/search_cats_out_port.dart';
import 'package:dio/dio.dart';

void adaptersDI(GetIt getIt) {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerLazySingleton<HttpService>(() => HttpService(
        HttpInterface(Dio()),
      ));

  getIt.registerSingleton<GetCatDatasource>(
      GetCatDatasource(getIt.get<HttpService>()));

  getIt.registerLazySingleton<GetCatsOutPort>(() => GetCatAdapter(
        getIt.get<GetCatDatasource>(),
      ));

  getIt.registerLazySingleton<SearchCatsDatasource>(
      () => SearchCatsDatasource(getIt.get<HttpService>()));

  getIt.registerLazySingleton<SearchCatOutPorts>(() => SearchCatAdapter(
        getIt.get<SearchCatsDatasource>(),
      ));
}
