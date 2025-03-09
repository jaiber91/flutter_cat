import 'package:flutter/material.dart';
import 'package:flutter_cat/src/configs/router_config/package.dart';
import 'package:flutter_cat/src/di/lib/setup_di.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  setupDI(locator);

  runApp(const ProviderScope(child: MainApp()));
}

//TODO: EVALUTAE SI IS NECESARY CREATE A FILE FOR THIS
GetIt _getIt = GetIt.I;
GetIt get locator => _getIt;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cat',
      routerConfig: appRouter,
    );
  }
}
