import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SNACKBAR"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Success",
              "This is message",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.white,
              mainButton: TextButton(
                onPressed: () {},
                child: const Text("UNDO"),
              ),
            );

            // ScaffoldMessenger.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text("Success!"),
            //     action: SnackBarAction(label: "UNDO", onPressed: () {}),
            //   ),
            // );
          },
          child: const Text("OPEN SNACKBAR"),
        ),
      ),
    );
  }
}
