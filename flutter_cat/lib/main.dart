import 'package:flutter/material.dart';
import 'package:flutter_cat/src/configs/router_config/package.dart';

void main() {
  runApp(const MainApp());
}

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
