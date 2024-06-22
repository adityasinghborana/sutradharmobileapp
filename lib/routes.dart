import 'package:get/get.dart';
import 'package:sutradharmobileapp/AuthModule/LoginModule/presentation/login_screen.dart';
import 'package:sutradharmobileapp/AuthModule/SignupModule/presentation/signup_screen.dart';
import 'package:sutradharmobileapp/ProductDetails/presentation/productscreen.dart';
import 'package:sutradharmobileapp/homepage/presentation/homepagescreen.dart';
import 'Onboardingscreen/presentation/Onboarding_screen.dart'; // Splash screen widget

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String products = '/allproducts';
  static const String productdetails = '/products';

  static List<GetPage> routes = [
    GetPage(
      name: onboarding,
      page: () => OnBoardingScreen(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: signup,
      page: () => SignUpPage(),
    ),
    GetPage(
      name: home,
      page: () => HomePageScreen(),
    ),
    GetPage(
      name: productdetails,
      page: () => ProductDetails(),
    ),
  ];
}
