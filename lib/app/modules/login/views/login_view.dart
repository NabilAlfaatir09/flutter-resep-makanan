import 'package:flutter/material.dart';
import 'package:flutter_resep_makanan/app/routes/app_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../data/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 250,
                height: 250,
                child: Image.asset(
                  "assets/img/logo2.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Selamat Datang",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Kembali",
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
              Container(
                margin: const EdgeInsets.only(left: 25),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: ColorsAll.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsAll.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  controller: controller.emailController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: ColorsAll.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsAll.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Obx(() => TextField(
                      obscureText:
                          (!controller.hiddenPassword.value) ? true : false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: InkWell(
                          splashColor: ColorsAll.transparant,
                          hoverColor: ColorsAll.transparant,
                          highlightColor: ColorsAll.transparant,
                          onTap: () {
                            controller.hiddenPassword.value =
                                !controller.hiddenPassword.value;
                          },
                          child: (controller.hiddenPassword.value)
                              ? const FaIcon(FontAwesomeIcons.eye)
                              : const FaIcon(FontAwesomeIcons.eyeSlash),
                        ),
                      ),
                      controller: controller.passwordController,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const Text(
                      "Belum punya akun?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorsAll.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      splashColor: ColorsAll.transparant,
                      hoverColor: ColorsAll.transparant,
                      highlightColor: ColorsAll.transparant,
                      onTap: () {
                        Get.offAndToNamed(Routes.REGISTER);
                      },
                      child: const Text(
                        "Daftar",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          color: ColorsAll.blue,
                        ),
                      ),
                    ),
                  ],
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
                  controller.loginAccount();
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
