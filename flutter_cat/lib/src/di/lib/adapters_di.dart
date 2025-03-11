import 'package:adapters/cat_adapter/adapter/cat_adapter.dart';
import 'package:adapters/cat_adapter/adapter/search_cat_adapter.dart';
import 'package:adapters/cat_adapter/datasource/dto/response/cat_datasource.dart';
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

  getIt.registerSingleton<CatDatasource>(
      CatDatasource(getIt.get<HttpService>()));

  getIt.registerLazySingleton<GetCatsOutPort>(() => CatAdapter(
        getIt.get<CatDatasource>(),
      ));

  getIt.registerLazySingleton<SearchCatsDatasource>(
      () => SearchCatsDatasource(getIt.get<HttpService>()));

  getIt.registerLazySingleton<SearchCatOutPorts>(() => SearchCatAdapter(
        getIt.get<SearchCatsDatasource>(),
      ));
}
