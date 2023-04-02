import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<DateTime> selectedBirthDay = DateTime.now().obs;
  Rx<DateTime> selectedLastDonationDate = DateTime.now().obs;

  RxBool isViewing = false.obs;

  Future<void> selectBirthDay(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedBirthDay.value,
      firstDate: DateTime(1950, 1),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedBirthDay.value) {
      selectedBirthDay.value = picked;
    }
  }

  Future<void> selectLastDonation(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedLastDonationDate.value,
      firstDate: DateTime(1950, 1),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedLastDonationDate.value) {
      selectedLastDonationDate.value = picked;
    }
  }

  String get selectedDateFormatted {
    return "${selectedBirthDay.value.day}-${selectedBirthDay.value.month}-${selectedBirthDay.value.year}";
  }

  String get selectedLastDonationFormatted {
    return "${selectedLastDonationDate.value.day}-${selectedLastDonationDate.value.month}-${selectedLastDonationDate.value.year}";
  }
}
