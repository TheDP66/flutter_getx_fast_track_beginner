import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataInt = 0.obs;

  void incrementInt() {
    dataInt++;
  }

  void decrementInt() {
    dataInt--;
  }

  RxString dataString = "data".obs;

  void updateString() {
    dataString.value = "UPDATED";
  }

  void resetString() {
    dataString.value = "data";
  }

  RxDouble dataDouble = 0.0.obs;

  void incrementDouble() {
    dataDouble.value = dataDouble.value + 0.1;
  }

  void decrementDouble() {
    dataDouble.value = dataDouble.value - 0.1;
  }

  RxBool dataBool = false.obs;

  void toogleBool() {
    dataBool.toggle();
    // dataBool.value = !dataBool.value;
  }

  RxList<dynamic> dataList = [1, 2, 3].obs;

  void addData() {
    dataList.add(dataList.length + 1);
  }

  void overwriteData() {
    dataList[0] = 999;
  }

  var dataSet = RxSet({1, 2, 3});

  void addSet() {
    dataSet.add(dataList.length + 1);
  }

  void overwriteSet() {
    dataSet.value = {99, 2, 3};
  }

  RxMap<String, dynamic> dataMap = {
    "id": 1,
    "nama": "Ocy",
    "umur": 99,
  }.obs;

  void changeMap() {
    dataMap['nama'] = "Ai";
  }
}
