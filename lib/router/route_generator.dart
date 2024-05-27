import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bases_web/ui/pages/page404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kStatefulPage = '/stateful';
const kProviderPage = '/provider';
const k404Page = '/404Page';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kStatefulPage:
        return _fadeRoute(const CounterPage(), kStatefulPage);

      case kProviderPage:
        return _fadeRoute(CounterProviderPage(), kProviderPage);

      default:
        return _fadeRoute(const Page404(), k404Page);
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(
        name: routeName,
      ),
      pageBuilder: (_, __, ___) {
        return child;
      },
      transitionDuration: const Duration(
        milliseconds: 36,
      ),
      transitionsBuilder: (_, animation, __, ___) {
        if (kIsWeb) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        } else {
          return CupertinoPageTransition(
            primaryRouteAnimation: animation,
            secondaryRouteAnimation: __,
            linearTransition: true,
            child: child,
          );
        }
      },
    );
  }
}
