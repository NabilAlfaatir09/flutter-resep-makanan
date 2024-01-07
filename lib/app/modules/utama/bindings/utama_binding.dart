import 'package:get/get.dart';

import '../controllers/utama_controller.dart';

class UtamaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UtamaController>(
      () => UtamaController(),
    );
  }
}
