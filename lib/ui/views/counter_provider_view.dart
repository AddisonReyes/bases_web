import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CounterProviderView extends StatelessWidget {
  CounterProviderView({super.key});

  int num = 16;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return CounterProvider();
      },
      child: const _CounterProviderViewBody(),
    );
  }
}

class _CounterProviderViewBody extends StatelessWidget {
  const _CounterProviderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
        ],
      ),
    );
  }
}
