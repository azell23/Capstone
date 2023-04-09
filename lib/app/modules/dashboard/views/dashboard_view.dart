import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:capstone/app/modules/home/views/home_view.dart';
import 'package:capstone/app/modules/food/views/food_view.dart';
import 'package:capstone/app/modules/profile/views/profile_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                FoodView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                Icon: ImageIcon(
                  AssetImage('assets/icons/ic_home.png'),
                ),
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                Icon: ImageIcon(
                  AssetImage('assets/icons/ic_food.png'),
                ),
                label: 'Food',
              ),
              _bottomNavigationBarItem(
                Icon: ImageIcon(
                  AssetImage('assets/icons/ic_user.png'),
                ),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({Icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon,
      label: label,
    );
  }
}
