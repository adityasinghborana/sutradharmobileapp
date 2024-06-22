import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:sutradharmobileapp/Constants.dart';
import 'package:sutradharmobileapp/components/introscreen/introscreenonboarding.dart';
import 'package:sutradharmobileapp/routes.dart';

import 'Onboarding_Controller.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnBoardingController controller = Get.put(OnBoardingController());
    return Scaffold(
      body: IntroScreenOnboarding(
          backgroudColor: themeColor.colorBgPrimary,
          foregroundColor: themeColor.colorBgSecondory,
          introductionList: controller.list,
          onTapSkipButton: () {
            Get.toNamed(AppRoutes.login);
          },
          skipTextStyle: TextStyle(color: themeColor.colorLink)),
    );
  }
}
