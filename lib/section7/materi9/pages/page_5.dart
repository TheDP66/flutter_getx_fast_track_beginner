import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_1.dart';

class PageLima extends StatelessWidget {
  const PageLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 5"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(
              PageSatu(),
            );
          },
          child: const Text("Page 1"),
        ),
      ),
    );
  }
}
