import 'package:donate_life/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put<SplashController>(SplashController());
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
          child: SizedBox(
            width: Get.width * 0.5,
            child: SvgPicture.asset(
              'assets/svg/logo.svg',
            ),
          ),
        ),
      ),
    );
  }
}
