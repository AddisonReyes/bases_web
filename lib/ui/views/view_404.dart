import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Error 404',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'No se encontró la página',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            CustomFlatButton(
              text: 'Regresar',
              onPressed: () {
                locator<NavigatorService>().navigateTo('/stateful');
              },
            )
          ],
        ),
      ),
    );
  }
}
