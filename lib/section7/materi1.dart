import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final counter = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("RENDERED");

    return Scaffold(
      appBar: AppBar(
        title: const Text("WIDGET"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${counter.data.value}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ), // Obeservasi perubahan pada widget ini
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: const Text("+"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CounterController extends GetxController {
  var data = 0.obs; // State yang akan selalu di pantau perubahannya

  increment() {
    data++;
  }

  decrement() {
    data--;
  }
}
