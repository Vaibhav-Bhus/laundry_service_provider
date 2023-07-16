import 'package:flutter/material.dart';
import 'package:laundry_service_provider/constants/images.dart';
import 'package:laundry_service_provider/screens/mobile_number.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const MobileNumberScreen(),
      duration: 4500,
      imageSize: 450,
      pageRouteTransition: PageRouteTransition.SlideTransition,
      imageSrc: splashScreenImage,
      backgroundColor: const Color(0XFF5597FF),
    );
  }
}
