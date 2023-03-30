import 'package:donate_life/app/modules/create_profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final profileController = Get.put(ProfileController());
}
