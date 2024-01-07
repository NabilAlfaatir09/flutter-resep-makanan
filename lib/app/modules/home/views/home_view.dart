import 'package:flutter/material.dart';
import 'package:flutter_resep_makanan/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 400,
                height: 400,
                child: Image.asset(
                  "assets/img/logo2.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                splashColor: ColorsAll.transparant,
                hoverColor: ColorsAll.transparant,
                highlightColor: ColorsAll.transparant,
                onTap: () {
                  Get.toNamed(Routes.REGISTER);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorsAll.bgColor,
                    border: Border.all(color: ColorsAll.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Atau",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                splashColor: ColorsAll.transparant,
                hoverColor: ColorsAll.transparant,
                highlightColor: ColorsAll.transparant,
                onTap: () {
                  Get.toNamed(Routes.LOGIN);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorsAll.bgColor,
                    border: Border.all(color: ColorsAll.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
