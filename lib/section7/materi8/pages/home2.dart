import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class Home2Page extends StatelessWidget {
  // Jika sudah di Get.put() tidak perlu Get.put() lagi
  // Tetapi gunakkan Get.find() saja, lebih efektif
  HomeController homeC = Get.find();

  // Home2Page(this.dataPage2);

  // HomePage dataPage2;
  // Map<String, dynamic> dataPage2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${homeC.data2['name']} - ${homeC.data2['age']} Tahun",
              // "${dataPage2['name']} - ${dataPage2['age']} Tahun",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("<< BACK"),
            ),
          ],
        ),
      ),
    );
  }
}
