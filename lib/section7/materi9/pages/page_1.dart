import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_3.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page 1"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(PageTiga());
          },
          child: const Text("Page 3"),
        ),
      ),
    );
  }
}
