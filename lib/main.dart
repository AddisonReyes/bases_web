import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/router/router.dart';
import 'package:bases_web/locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();

  Flurorouter.configureRoutes();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      initialRoute: '/',
      title: 'RutasApp',
      navigatorKey: locator<NavigatorService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
    );
  }
}
