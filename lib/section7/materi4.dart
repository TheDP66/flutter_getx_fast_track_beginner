import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Container(
                height: 300,
                color: Colors.white,
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                  ],
                ),
              ),
            );

            // showModalBottomSheet(
            //   context: context,
            //   builder: (context) => Container(
            //     height: 300,
            //     color: Colors.amber,
            //     child: ListView(
            //       children: const [
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text("Home"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.person),
            //           title: Text("Profile"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.settings),
            //           title: Text("Settings"),
            //         ),
            //       ],
            //     ),
            //   ),
            // );
          },
          child: const Text("OPEN BOTTOM SHEET"),
        ),
      ),
    );
  }
}
