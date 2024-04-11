import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/page_satu", page: () => SatuPage()),
        GetPage(name: "/page_dua", page: () => DuaPage()),
        GetPage(name: "/page_tiga", page: () => TigaPage()),
      ],
      // routes: {
      //   "home": (context) => HomePage(),
      //   "page_satu": (context) => SatuPage(),
      //   "page_dua": (context) => DuaPage(),
      //   "page_tiga": (context) => TigaPage(),
      // },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("SATU PAGE"),
      onPressed: () {
        // Navigator.of(context).pushNamed("page_satu");

        Get.toNamed("/page_satu");
        Get.offAllNamed("/home");
      },
    );
  }
}

class SatuPage extends StatelessWidget {
  const SatuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DuaPage extends StatelessWidget {
  const DuaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TigaPage extends StatelessWidget {
  const TigaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
