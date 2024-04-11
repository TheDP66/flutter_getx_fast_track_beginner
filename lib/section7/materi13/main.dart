import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// import './section7/materi9/pages/home.dart';

import './controllers/login_controller.dart';
import './pages/login.dart';
import './pages/home.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

//// Section 7 Materi 13
class MyApp extends StatelessWidget {
  final LoginController loginC = Get.put(LoginController());

  //// Karea tidak perlu dipanggil beberapa kali
  //// Get.put dapat ditaruh di main.dart
  // final homeC = Get.lazyPut(() => HomeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/login",
          page: () => LoginPage(),
        ),
      ],
    );
  }
}
