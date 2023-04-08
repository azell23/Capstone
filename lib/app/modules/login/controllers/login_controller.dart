import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final getStorge = GetStorage();
  //TODO: Implement LoginController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  login() {
    getStorge.write("id", 1);
    getStorge.write("name", "Alberts");
    Get.offAllNamed(Routes.DASHBOARD);
  }
}
