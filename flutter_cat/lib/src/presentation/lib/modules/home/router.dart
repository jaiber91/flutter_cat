part of 'package.dart';

class RouterHomeModule {
  static get homePage => GoRouteApp(
        path: RouteNames.main.path,
        builder: (context, state) => const HomePage(),
      );
}
