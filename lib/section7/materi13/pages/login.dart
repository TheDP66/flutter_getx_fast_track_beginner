import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_fast_track_flutter_beginner/section7/materi13/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginC = Get.put(LoginController());
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberme") != null) {
      loginC.rememberme.value = true;
      loginC.emailC.text = box.read("dataRememberme")['email'];
      loginC.passC.text = box.read("dataRememberme")['pass'];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => TextField(
              controller: loginC.passC,
              autocorrect: false,
              obscureText: loginC.isHidden.value,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Password",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () => loginC.isHidden.toggle(),
                  icon: const Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
          ),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginC.rememberme.value,
              onChanged: (value) {
                loginC.rememberme.toggle();
              },
              title: const Text("Remember me"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              loginC.login();
            },
            child: const Text("LOGIN"),
          ),
        ],
      ),
    );
  }
}
