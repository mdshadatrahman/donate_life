import 'package:get/get.dart';

import '../controllers/blood_bank_controller.dart';

class BloodBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BloodBankController>(
      () => BloodBankController(),
    );
  }
}
