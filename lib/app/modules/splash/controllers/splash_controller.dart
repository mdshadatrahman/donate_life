import 'dart:developer';

import 'package:donate_life/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), () async {
      log('SplashController');
      Get.offAllNamed(Routes.HOME);
    });
    super.onInit();
  }
}
