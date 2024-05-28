import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  CounterProviderPage({super.key});

  int num = 16;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CounterProvider(base: num.toString());
      },
      child: const _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomAppMenu(),
            const Spacer(),
            const Text(
              'Contador Provider',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  'Contador: ${counterProvider.counter}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFlatButton(
                  text: 'Decrementar',
                  onPressed: () {
                    counterProvider.decrement();
                  },
                ),
                CustomFlatButton(
                  text: 'Incrementar',
                  onPressed: () {
                    counterProvider.increment();
                  },
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
