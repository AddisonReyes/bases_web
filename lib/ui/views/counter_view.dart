import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  CounterView({super.key, required this.base});

  String base;

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int num = 0;

  @override
  void initState() {
    if (int.tryParse(widget.base) != null) {
      setState(() {
        num = int.parse(widget.base);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
        ],
      ),
    );
  }
}
