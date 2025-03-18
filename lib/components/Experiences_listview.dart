import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/components/experiences_card.dart';
import 'package:sutradharmobileapp/homepage/presentation/homepagecontroller.dart';
import 'package:sutradharmobileapp/routes.dart';

class ProductListview extends StatelessWidget {
  final HomePageController homePageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 5,
      width: Get.width,
      child: Obx(
        () => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homePageController.productList.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.productdetails);
                },
                child: ExperiencesCard(
                  title: homePageController.productList[index].name,
                  imagePath:
                      homePageController.productList[index].images[0].src,
                  price: homePageController.productList[index].price,
                ));
          },
        ),
      ),
    );
  }
}
