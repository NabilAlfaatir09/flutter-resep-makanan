import 'package:flutter_resep_makanan/app/modules/about/controllers/about_controller.dart';
import 'package:flutter_resep_makanan/app/modules/utama/controllers/utama_controller.dart';
import 'package:get/get.dart';

import '../controllers/bottom_bar_controller.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(
      () => BottomBarController(),
    );
    Get.lazyPut<UtamaController>(
      () => UtamaController(),
    );
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );
  }
}
