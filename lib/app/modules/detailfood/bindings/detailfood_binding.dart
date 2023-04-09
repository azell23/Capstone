import 'package:get/get.dart';

import '../controllers/detailfood_controller.dart';

class DetailfoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailfoodController>(
      () => DetailfoodController(),
    );
  }
}
