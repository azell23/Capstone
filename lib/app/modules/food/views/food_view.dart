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
                        final FoodDetail makanan = foodList[index];
                        return InkWell(
                          onTap: () => Get.toNamed(Routes.DETAILFOOD),
                          child: Card_Food(food: makanan),
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

class Card_Food extends StatelessWidget {
  const Card_Food({
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
      child: Container(
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(food.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ingredients",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      food.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Total Cal",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      food.cal,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
