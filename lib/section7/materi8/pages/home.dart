import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../pages/home2.dart';

class HomePage extends StatelessWidget {
  // Get.put dapat ditaruh dihalaman yang menggunakan controller tersebut
  // Tetapi disarankan menggunakan Get.lazyPut di main.dart
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DEPENDENCY MANAGEMENT"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${homeC.data['name']} - ${homeC.data['age']} Tahun",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home2Page(),
                    // builder: (context) => Home2Page(HomePage()),
                    // builder: (context) => Home2Page(data2),
                  ),
                );
              },
              child: const Text("NEXT >>"),
            ),
          ],
        ),
      ),
    );
  }
}
