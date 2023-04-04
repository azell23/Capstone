import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:capstone/theme/color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: bodyHeight * 0.3,
                width: mediaQueryWidth * 0.5,
                child: Image.asset('assets/image/login_logo.png'),
              ),
              Text(
                'Gass Count',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: bodyHeight * 0.7,
                width: mediaQueryWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hai, ',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Selamat Datang',
                          style: TextStyle(
                              fontSize: 24,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'Masukan akunmu terlebih dahulu ya...',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Email',
                        hintText: 'Masukan Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: 'Password',
                        hintText: 'Masukan Password',
                        prefixIcon: Icon(Icons.lock_rounded),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.DASHBOARD),
                        child: Text(
                          'Masuk',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
