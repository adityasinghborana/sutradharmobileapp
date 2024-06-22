import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/components/experiences_card.dart';
import 'package:sutradharmobileapp/homepage/presentation/homepagecontroller.dart';
import 'package:sutradharmobileapp/routes.dart';

class ExperiencesListview extends StatelessWidget {
  final HomePageController homePageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 5,
      width: Get.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homePageController.experiences.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.productdetails);
              },
              child: ExperiencesCard(
                title: homePageController.experiences[index].title,
                imagePath: homePageController.experiences[index].imagepath,
                price: homePageController.experiences[index].location,
              ));
        },
      ),
    );
  }
}
