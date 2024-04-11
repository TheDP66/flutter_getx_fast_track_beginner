import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi13/controllers/login_controller.dart';

class HomePage extends StatelessWidget {
  final LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME PAGE"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loginC.logout();
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
