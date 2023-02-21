import 'dart:developer';

import 'package:donate_life/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), () async {
      log('SplashController');
      //TODO: Write logic to check if user is logged in or not and navigate accordingly
      Get.offAllNamed(Routes.ON_BOARDING);
    });
    super.onInit();
  }
}
