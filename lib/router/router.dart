// ignore_for_file: non_constant_identifier_names

import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    var dashboardView = '/dashboard/users/:userid/:roleid';
    var statefulPView = '/stateful/:base';
    var providerView = '/provider';
    var statefulView = '/stateful';
    var noneView = '/';

    router.define(statefulView,
        handler: counterStatefulHandler, transitionType: TransitionType.none);

    router.define(statefulPView,
        handler: counterStatefulHandler, transitionType: TransitionType.none);

    router.define(providerView,
        handler: counterProviderHandler, transitionType: TransitionType.none);

    router.define(dashboardView,
        handler: dashboardUserHandler, transitionType: TransitionType.none);

    router.define(noneView,
        handler: nullHandler, transitionType: TransitionType.none);

    router.notFoundHandler = Page404Handler;
  }
}
