import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var hiddenPassword = false.obs;

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  loginAccount() async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) {
        Get.snackbar(
          "Berhasil",
          "Selamat Datang ${emailController.text}",
          duration: const Duration(seconds: 3),
        );
        Get.offNamed(Routes.BOTTOM_BAR);
      });
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == "invalid-email") {
          Get.snackbar("Error", "Email salah");
        } else if (e.code == "wrong-password") {
          Get.snackbar("Error", "Password salah");
        }
      } else {
        Get.snackbar("Error", "Silahkan Registrasi jika belum mempunyai Akun");
      }
    }
  }
}
