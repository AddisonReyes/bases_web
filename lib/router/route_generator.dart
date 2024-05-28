import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bases_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';

const kStatefulPage = '/stateful';
const kProviderPage = '/provider';
const k404Page = '/404Page';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kStatefulPage:
        return _fadeRoute(const CounterView(), kStatefulPage);

      case kProviderPage:
        return _fadeRoute(CounterProviderView(), kProviderPage);

      default:
        return _fadeRoute(const View404(), k404Page);
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
