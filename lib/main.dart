import 'package:bases_web/router/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      // routes: {
      //   '/stateful': (BuildContext context) => const CounterPage(),
      //   '/provider': (BuildContext context) => const CounterProviderPage(),
      // },
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
