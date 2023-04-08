import 'package:capstone/theme/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 241, 177, 3), Color.fromARGB(253, 207, 156, 13)],
        begin: Alignment.topCenter, end: Alignment.bottomCenter),
        
        // image: DecorationImage(
        //   image: AssetImage('assets/images/bg_splash.png'),
        ),
      // ),
      child: Center(
        child: Image.asset("assets/icons/ic_splash.png",
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 4,
        ),
      ),
    ));
  }
}
