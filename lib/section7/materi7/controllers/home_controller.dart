import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt observ = 0.obs;

  void change() => observ++;

  @override
  void onInit(){
    interval(observ, (data)=> print("STILL CHANGED"), time: Duration(seconds: 2),); // Pantau setiap 2 detik meskipun ADA PERUBAHAN
    // debounce(observ, (data)=> print("NO CHANGED"), time: Duration(seconds: 2),); // Pantau setiap 2 detik selama TIDAK ADA PERUBAHAN
    // once(observ, (data)=> print("FIRST CHANGED")); // Cuma Sekali pantau
    // ever(observ, (data)=> print("CHANGED")); // Setiap ada perubahan
    super.onInit();
  }
}