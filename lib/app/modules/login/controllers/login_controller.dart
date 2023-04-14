import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  var obscureText = true.obs;
  var isLoading = false.obs;

  final getStorge = GetStorage();
  //TODO: Implement LoginController

  void toglePasswordVisibility() {
    obscureText.toggle();
  }

  void setLoading() {
    isLoading.toggle();
  }

  login() {
    getStorge.write("id", 1);
    getStorge.write("name", "Alberts");
    Get.offAllNamed(Routes.DASHBOARD);
  }
}
