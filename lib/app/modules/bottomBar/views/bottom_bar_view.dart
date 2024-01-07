import 'package:flutter/material.dart';
import 'package:flutter_resep_makanan/app/data/colors.dart';
import 'package:flutter_resep_makanan/app/modules/about/views/about_view.dart';
import 'package:flutter_resep_makanan/app/modules/utama/views/utama_view.dart';

import 'package:get/get.dart';

import '../controllers/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  const BottomBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              UtamaView(),
              AboutView(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2,
                ),
                label: 'About Me',
              ),
            ],
            currentIndex: controller.currentIndex.value,
            backgroundColor: Colors.black,
            selectedItemColor: ColorsAll.blue,
            unselectedItemColor: ColorsAll.bgColor,
            onTap: (value) => controller.changeCurrentIndex(value),
          ),
        ));
  }
}
