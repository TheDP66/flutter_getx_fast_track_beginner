import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIALOG'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
              title: "This is TITLE",
              content: const Text("This is CONTENT"),
              actions: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("CANCEL"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("DONE"),
                ),
              ],
            );

            // Get.dialog(
            //   AlertDialog(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     title: Text('This is TITLE'),
            //     content: Text('This is CONTEXT'),
            //   ),
            // );

            // showDialog(
            //   context: context,
            //   builder: (context) => AlertDialog(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     title: Text('This is TITLE'),
            //     content: Text('This is CONTEXT'),
            //   ),
            // );
          },
          child: const Text("OPEN DIALOG"),
        ),
      ),
    );
  }
}
