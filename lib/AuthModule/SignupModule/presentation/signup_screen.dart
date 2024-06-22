import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/AuthModule/SignupModule/presentation/Signup_controller.dart';
import 'package:sutradharmobileapp/Constants.dart';
import 'package:sutradharmobileapp/components/Textfield.dart';
import 'package:sutradharmobileapp/components/large_button.dart';
import 'package:sutradharmobileapp/components/sociallogin_buttons.dart';
import 'package:sutradharmobileapp/components/text_button.dart';
import 'package:sutradharmobileapp/routes.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final SignUpController signupController = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SignUp"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image.logoOrange,
          ),
          const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: globalPadding.buttonSmallpx),
            child: Row(
              children: [Text(staticText.loginEmail)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: globalPadding.buttonSmallpx,
                vertical: globalPadding.buttonSmallpy),
            child: TextFieldCustom(
              textController: signupController.emailController,
              hintText: staticText.loginEmail,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: globalPadding.buttonSmallpx,
                vertical: globalPadding.buttonSmallpy),
            child: Row(
              children: [Text(staticText.loginPassword)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: globalPadding.buttonSmallpx,
                vertical: globalPadding.buttonSmallpy),
            child: TextFieldCustom(
              textController: signupController.passwordController,
              hideText: true,
              hintText: staticText.loginPassword,
            ),
          ),
          SizedBox(
            height: Height.heightl,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: globalPadding.buttonSmallpx),
            child: LargeButton(
              label: 'Sign Up',
              onPressed: () {
                signupController.signUp();
              },
            ),
          ),
          SizedBox(
            height: Height.heightl,
          ),
          RichText(
            text: TextSpan(
              text: staticText.loginToSignup,
              style: TextStyle(color: themeColor.colorTextPrimary),
              children: [
                WidgetSpan(
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.login);
                    },
                    child: Text(
                      staticText.signInLinkText,
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
              signupController.googleSignUp(context);
            },
            imagepath: image.googleIcon,
            label: staticText.signupGoogle,
          ),
          SizedBox(
            height: Height.heightl,
          ),
          SocialLoginButton(
            onpressed: () {
              null;
            },
            imagepath: image.facebookIcon,
            label: staticText.signupFacebook,
          ),
          SizedBox(
            height: Height.heightl,
          ),
          Text("or"),
          SizedBox(
            height: Height.heightl,
          ),
          CustomTextButton(onpressed: () {}, label: 'forgot password')
        ],
      ),
    );
  }
}
