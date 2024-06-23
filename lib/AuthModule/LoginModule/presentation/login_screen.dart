import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/Constants.dart';
import 'package:sutradharmobileapp/components/Textfield.dart';
import 'package:sutradharmobileapp/components/large_button.dart';
import 'package:sutradharmobileapp/components/sociallogin_buttons.dart';
import 'package:sutradharmobileapp/components/text_button.dart';
import 'package:sutradharmobileapp/routes.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image.logo,
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: globalPadding.px_l),
              child: Row(
                children: [Text(staticText.loginEmail)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: globalPadding.px_l,
                  vertical: globalPadding.buttonSmallpy),
              child: TextFieldCustom(
                  textController: loginController.emailController,
                  hintText: staticText.loginEmail),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: globalPadding.px_l,
                  vertical: globalPadding.buttonSmallpy),
              child: Row(
                children: [Text(staticText.loginPassword)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: globalPadding.px_l,
                  vertical: globalPadding.buttonSmallpy),
              child: TextFieldCustom(
                  textController: loginController.passwordController,
                  hideText: true,
                  hintText: staticText.loginPassword),
            ),
            SizedBox(
              height: Height.heightl,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: globalPadding.px_l),
              child: LargeButton(
                label: 'Login',
                onPressed: () {
                  loginController.signIn();
                },
              ),
            ),
            SizedBox(
              height: Height.heightl,
            ),
            RichText(
              text: TextSpan(
                text: staticText.signUpToLogin,
                style: TextStyle(color: themeColor.colorTextPrimary),
                children: [
                  WidgetSpan(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.signup);
                      },
                      child: Text(
                        staticText.signUpLinkText,
                        style: TextStyle(
                          color: themeColor.colorLink, // Change color if needed
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Height.heightl,
            ),
            Text("or"),
            SizedBox(
              height: Height.heightl,
            ),
            SocialLoginButton(
              onpressed: () {
                null;
              },
              imagepath: image.googleIcon,
              label: staticText.loginGoogle,
            ),
            SizedBox(
              height: Height.heightl,
            ),
            SocialLoginButton(
              onpressed: () {
                null;
              },
              imagepath: image.facebookIcon,
              label: staticText.loginFacebook,
            ),
            Text("or"),
            SizedBox(
              height: Height.heightl,
            ),
            CustomTextButton(onpressed: () {}, label: 'forgot password')
          ],
        ),
      ),
    );
  }
}
