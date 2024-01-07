import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AboutController extends GetxController {
  final Uri instagramLink =
      Uri.parse('https://www.instagram.com/nabil_alftr09/');
  final Uri linkedinLink =
      Uri.parse('https://www.linkedin.com/in/nabil-al-faatir/');

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
