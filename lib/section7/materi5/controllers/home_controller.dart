import 'package:get/get.dart';

class HomeController extends GetxController {
  // Reactive State Manager
  // var counter = 0.obs;
  void increment() {
    counter++;
  }

  // Simple State Manager
  int counter = 0;
  void refreshData() {
    update();
  }
}
