import 'package:get/get.dart';
import 'package:rapidcab/views/screens/auth/login_screen.dart';

class SplashController extends GetxController {
  bool isLoading = true;
  bool noInternet = false;

  gotoNextPage() async {
    noInternet = false;
    update();
    Get.to(() => const LoginScreen());
  }
}
