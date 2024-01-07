import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resep_makanan/app/routes/app_pages.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var hiddenPassword = false.obs;

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  registerAccount() async {
    try {
      if (formKey.currentState!.validate()) {
        await firebaseAuth
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text)
            .then((value) {
          Get.snackbar(
            "Berhasil",
            "Anda Berhasil Register",
            duration: const Duration(seconds: 3),
          );
          Get.offNamed(Routes.BOTTOM_BAR);
        });
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == "email-already-in-use") {
          Get.snackbar("Error", "Akun sudah terdaftar, Gunakan Email lain");
        }
      } else {
        Get.snackbar(
            "Error", "Harap Masukkan Username,Email dan Password dengan benar");
      }
    }
  }

  validasiUsername(String value) {
    if (value.isEmpty) {
      return Get.snackbar(
        "Error",
        "Username harus diisi!!",
        duration: const Duration(seconds: 2),
      );
    }
    return null;
  }

  validasiEmail(String value) {
    if (value.isEmail) {
      return null;
    } else {
      return Get.snackbar(
        "Error",
        "Isi Email dengan benar!!",
        duration: const Duration(seconds: 2),
      );
    }
  }

  validasiPassword(String value) {
    if (value.length < 6) {
      return Get.snackbar(
        "Error",
        "Password minimal 6 huruf",
        duration: const Duration(seconds: 2),
      );
    }
    return null;
  }
}
