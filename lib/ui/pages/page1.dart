import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/w1.dart';
import '../widgets/w2.dart';
import '../widgets/w3.dart';
import '../widgets/w4.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(flex: 2, child: W1()),
                  Expanded(flex: 2, child: W2()),
                  Expanded(child: W3()),
                  Expanded(flex: 2, child: W4()),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: ElevatedButton(
                    key: const Key('page2Button'),
                    onPressed: () => Get.to(() => const Page2()),
                    child: const Text('Page 2')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
