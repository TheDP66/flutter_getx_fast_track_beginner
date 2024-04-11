import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeC = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Reactive State Manager
            // Obx(
            //   () => Text(
            //     "${homeC.counter.value}",
            //     style: const TextStyle(
            //       fontSize: 50,
            //     ),
            //   ),
            // ),
            /// Simple State Manager
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                homeC.increment();
              },
              child: const Text("Tambah Data"),
            ),
            const SizedBox(
              height: 30,
            ),
            // Simple State Management
            ElevatedButton(
              onPressed: () {
                homeC.refreshData();
              },
              child: const Text("Refresh Tampilan"),
            ),
          ],
        ),
      ),
    );
  }
}
