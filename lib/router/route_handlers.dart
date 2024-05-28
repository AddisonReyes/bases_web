// Handlers
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

final Handler counterStatefulHandler = Handler(
  handlerFunc: (context, parameters) {
    return CounterView(
      base: parameters['base']?[0] ?? '5',
    );
  },
);

final Handler counterProviderHandler = Handler(
  handlerFunc: (context, parameters) {
    print(parameters);
    return CounterProviderView(
      base: parameters['base']?[0] ?? '15',
    );
  },
);

final Handler dashboardUserHandler = Handler(
  handlerFunc: (context, parameters) {
    print(parameters);
    return const Center(
      child: CircularProgressIndicator(),
    );
  },
);

final Handler nullHandler = Handler(
  handlerFunc: (context, parameters) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  },
);

final Handler Page404Handler = Handler(
  handlerFunc: (context, parameters) {
    return const View404();
  },
);
