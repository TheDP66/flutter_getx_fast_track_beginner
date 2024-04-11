import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_1.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_2.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_3.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi9/pages/page_4.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(PageSatu());
            },
            child: const Text("Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PageDua());
            },
            child: const Text("Page 2"),
          ),
        ],
      ),
    );
  }
}
