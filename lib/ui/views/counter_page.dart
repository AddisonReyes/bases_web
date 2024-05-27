import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomAppMenu(),
            const Spacer(),
            const Text(
              'Contador Stateful',
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
                  'Contador: $num',
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
                    setState(() {
                      num--;
                    });
                  },
                ),
                CustomFlatButton(
                  text: 'Incrementar',
                  onPressed: () {
                    setState(() {
                      num++;
                    });
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
