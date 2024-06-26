import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:capstone/theme/color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                child: Image.asset('assets/images/login.png'),
              ),
              SizedBox(
                height: 5,
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
                          'Welcome',
                          style: TextStyle(
                              fontSize: 24,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Let’s achieve your fitness goals together with us!',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black45,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black45,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black45,
                          ),
                        ),
                        hintText: "Input your email",
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        prefixIcon: Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          child: Icon(
                            Icons.email,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Obx(
                      () => TextField(
                        obscureText: controller.obscureText.value,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black45,
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.obscureText.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black45,
                            ),
                            onPressed: () {
                              controller.toglePasswordVisibility();
                            },
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black45,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.black45,
                            ),
                          ),
                          hintText: "Input your password",
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: Container(
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            child: Icon(
                              Icons.lock,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('forget tapped');
                          },
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(
                              fontSize: 14,
                              color: primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.login();
                        },
                        child: Text(
                          'Sign In',
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
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 70,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Color(0xff49454f),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Text(
                              'Or',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.4285714286,
                                letterSpacing: 0.1000000015,
                                color: Color(0xff49454f),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                            width: 70,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Color(0xff222222),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () => Get.toNamed(Routes.DASHBOARD),
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 18,
                        ),
                        label: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have a account? ',
                          style: TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(Routes.REGISTER);
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        )
                      ],
                    )
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
