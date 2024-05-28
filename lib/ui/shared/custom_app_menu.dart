import 'package:bases_web/locator.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:bases_web/services/navigator_service.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => (constraints.maxWidth > 520)
          ? const _TabletDesktopMenu()
          : const _MobileMenu(),
    );
    // return const _TabletDesktopMenu();
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () {
              // Navigator.popAndPushNamed(context, '/stateful');
              // navigationService.navigateTo('/stateful');
              locator<NavigatorService>().navigateTo('/stateful');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () {
              // Navigator.popAndPushNamed(context, '/provider');
              // navigationService.navigateTo('/provider');
              locator<NavigatorService>().navigateTo('/provider');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: () {
              // Navigator.popAndPushNamed(context, '/aaa');
              // navigationService.navigateTo('/aaa');
              locator<NavigatorService>().navigateTo('/aaa');
            },
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () {
              // Navigator.popAndPushNamed(context, '/stateful');
              // navigationService.navigateTo('/stateful');
              locator<NavigatorService>().navigateTo('/stateful');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () {
              // Navigator.popAndPushNamed(context, '/provider');
              // navigationService.navigateTo('/provider');
              locator<NavigatorService>().navigateTo('/provider');
            },
            color: Colors.black,
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: () {
              // Navigator.popAndPushNamed(context, '/aaa');
              // navigationService.navigateTo('/aaa');
              locator<NavigatorService>().navigateTo('/aaa');
            },
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
