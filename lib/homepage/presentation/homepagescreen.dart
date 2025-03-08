import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/components/Appbar.dart';
import 'package:sutradharmobileapp/components/Heading_with_button.dart';
import 'package:auraa_ui/aura_ui.dart';
import 'package:sutradharmobileapp/homepage/presentation/homepagecontroller.dart';
import '../../components/Experiences_listview.dart';
import '../../components/drawer.dart';

class HomePageScreen extends StatelessWidget {
  final HomePageController homePageController = Get.put(HomePageController());
  final PageController pageController = PageController();
  HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MobileHeader(
          context: context,
          isBackButton: false,
        ),
        drawer: drawer(),
        body: SingleChildScrollView(
          child: Column(children: [
            AuraUICarousel(
              images: [
                "https://www.sutradharfashion.com/wp-content/uploads/2024/05/Aster-bow-top-and-ruffled-skirt-set_.jpg",
                "https://www.sutradharfashion.com/wp-content/uploads/2024/05/Amber-kiss-side-pleated-shirt_2.jpg",
                "https://www.sutradharfashion.com/wp-content/uploads/2024/05/Acacia-cut-work-co-ord-set_.jpg"
              ],
              pageController: pageController,
              duration: Duration(seconds: 5),
            ),

            HeadingwithButton(
              label: 'Featured',
              link: true,
            ),
            //ProductListview(),

            SizedBox(
              height: 15,
            ),
            HeadingwithButton(
              label: 'One That Makes You Look Good',
              link: false,
            ),
            SizedBox(
              height: 15,
            ),
            ProductListview(),
          ]),
        ),
      ),
    );
  }
}
