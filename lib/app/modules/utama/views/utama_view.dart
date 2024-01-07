import 'package:flutter/material.dart';
import 'package:flutter_resep_makanan/app/data/colors.dart';
import 'package:flutter_resep_makanan/app/modules/utama/controllers/utama_controller.dart';
import 'package:flutter_resep_makanan/app/modules/utama/widgets/resep_card.dart';
import 'package:flutter_resep_makanan/app/routes/app_pages.dart';
import 'package:get/get.dart';

class UtamaView extends GetView<UtamaController> {
  const UtamaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsAll.bgColor,
          leading: Image.asset("assets/img/logo.png"),
          title: const Text(
            'Resep Makanan',
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(() => (controller.isLoading.value)
            ? Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: ColorsAll.grey),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "loading.....",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorsAll.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            : ListView.builder(
                itemCount: controller.resepModel.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(
                        Routes.DETAIL,
                        arguments: controller.resepModel[index],
                      );
                    },
                    child: ResepCard(
                        title: controller.resepModel[index].name,
                        cookTime: controller.resepModel[index].totalTime,
                        rating: controller.resepModel[index].rating.toString(),
                        thumbnailUrl: controller.resepModel[index].images),
                  );
                },
              )));
  }
}
