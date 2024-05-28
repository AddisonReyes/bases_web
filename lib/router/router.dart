import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/stateful',
      handler: _counterStatefulHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/stateful/:base',
      handler: _counterStatefulHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionType: TransitionType.none,
    );
    router.define(
      '/',
      handler: _nullHandler,
      transitionType: TransitionType.none,
    );
    router.notFoundHandler = _404PageHandler;
  }

  // Handlers
  static final Handler _counterStatefulHandler = Handler(
    handlerFunc: (context, parameters) {
      return CounterView(
        base: parameters['base']?[0] ?? '5',
      );
    },
  );

  static final Handler _counterProviderHandler = Handler(
    handlerFunc: (context, parameters) {
      print(parameters);
      return CounterProviderView(
        base: parameters['base']?[0] ?? '15',
      );
    },
  );

  static final Handler _nullHandler = Handler(
    handlerFunc: (context, parameters) {
      return Container(
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    },
  );

  static final Handler _404PageHandler = Handler(
    handlerFunc: (context, parameters) {
      return const View404();
    },
  );
}
