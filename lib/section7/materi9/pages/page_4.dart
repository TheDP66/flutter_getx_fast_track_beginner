import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_5.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 4"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("<< BACK"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageLima());
              },
              child: const Text("Page 5"),
            ),
          ],
        ),
      ),
    );
  }
}
