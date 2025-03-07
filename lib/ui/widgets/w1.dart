import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Value'),
          ElevatedButton(
              key: const Key('incrementButton'),
              onPressed: null,
              child: Text('Increment'))
        ],
      ),
    );
  }
}
