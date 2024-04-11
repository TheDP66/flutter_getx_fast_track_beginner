import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_3.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(PageTiga());
              },
              child: const Text("Page 3"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("<< BACK"),
            ),
          ],
        ),
      ),
    );
  }
}
