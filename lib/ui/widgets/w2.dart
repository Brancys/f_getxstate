import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Value'),
          ElevatedButton(
              key: const Key('resetButton'),
              onPressed: null,
              child: Text('Reset'))
        ],
      ),
    );
  }
}
