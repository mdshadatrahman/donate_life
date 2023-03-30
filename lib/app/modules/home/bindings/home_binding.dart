import 'package:donate_life/app/modules/create_profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    //TODO: temporary solution
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
