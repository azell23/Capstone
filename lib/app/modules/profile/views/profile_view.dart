import 'package:capstone/theme/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../theme/string.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(

      appBar: AppBar(
        title: Text(tProfile),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset("assets/images/man.jpg")),
          ),
          const SizedBox( height: 10),
          Text(tProfileUsername, style: Theme.of(context).textTheme.headlineMedium),
          Text(tEmail, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: ( ) {},
              style: ElevatedButton.styleFrom(
                backgroundColor: bgSplash, side: BorderSide.none, shape: const StadiumBorder()),
              child: const Text(tEditProfile, style: TextStyle(color: Colors.black),),
            ),
          ),
          const SizedBox( height: 30),
          const Divider(),
          const SizedBox(height: 10),

          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: bgColor.withOpacity(0.1),
              ),
              child: const Icon(LineAwesomeIcons.alternate_sign_out, color: Colors.grey),
              ),
              title: Text(tLogout, style: Theme.of(context).textTheme.bodySmall,),
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Icon(LineAwesomeIcons.angle_right, size: 18,color: Colors.grey
              ),
          ),)
        ]),
      )),
    );
  }
}
