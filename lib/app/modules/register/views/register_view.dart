import 'package:flutter/material.dart';
import 'package:flutter_resep_makanan/app/data/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: ListView(
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
                    "Silahkan Mendaftar",
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
                    "Username",
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
                  child: TextFormField(
                    validator: (value) => controller.validasiUsername(value!),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    controller: controller.usernameController,
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                  child: TextFormField(
                    validator: (value) => controller.validasiEmail(value!),
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
                  child: Obx(() => TextFormField(
                        validator: (value) =>
                            controller.validasiPassword(value!),
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
                  height: 30,
                ),
                InkWell(
                  splashColor: ColorsAll.transparant,
                  hoverColor: ColorsAll.transparant,
                  highlightColor: ColorsAll.transparant,
                  onTap: () {
                    controller.registerAccount();
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
