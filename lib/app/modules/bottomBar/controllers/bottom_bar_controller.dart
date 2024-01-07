import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var currentIndex = 0.obs;
  void changeCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
