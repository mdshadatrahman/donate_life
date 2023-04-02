import 'package:get/get.dart';

import '../controllers/add_donor_controller.dart';

class AddDonorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddDonorController>(
      () => AddDonorController(),
    );
  }
}
