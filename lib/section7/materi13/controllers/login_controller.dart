import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberme = false.obs;

  void login() async {
    final box = GetStorage();

    if (emailC.text == 'admin@gmail.com' && passC.text == "admin") {
      if (box.read('dataRememberme') != null) {
        box.remove('dataRememberme');
      }

      if (rememberme.isTrue) {
        // Save email and password in storage
        box.write(
          "dataRememberme",
          {
            "email": emailC.text,
            "pass": passC.text,
          },
        );
      }

      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Something Wrong!",
        middleText: "Wrong Email or Password",
      );
    }
  }

  void logout() {
    Get.offAllNamed('/login');
  }
}
