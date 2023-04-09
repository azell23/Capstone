import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:capstone/app/component/cardDeteksi.dart';

import 'package:capstone/app/component/cardFood.dart';

import 'package:capstone/app/model/food.dart';
import '../../../routes/app_pages.dart';
import 'package:capstone/theme/color.dart';
import '../controllers/food_controller.dart';

class FoodView extends GetView<FoodController> {
  const FoodView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
            title: Text('Information Food'),
            centerTitle: true,
            backgroundColor: primaryColor,
          ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              // margin:
              //     EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: bgColor),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text('List Food',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final FoodDetail gas = foodList[index];
                        return InkWell(
                          onTap: () => Get.toNamed(Routes.DETAILFOOD),
                          child: Card_Gas(food: gas),
                        );
                      },
                      itemCount: foodList.length,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card_Gas extends StatelessWidget {
  const Card_Gas({
    super.key,
    required this.food,
  });

  final FoodDetail food;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Image.network(food.image, fit: BoxFit.fill),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    food.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(food.cal),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
