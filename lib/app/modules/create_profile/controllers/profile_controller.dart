import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;
  
  RxBool isViewing = false.obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(1950, 1),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }

  String get selectedDateFormatted {
    return "${selectedDate.value.day}-${selectedDate.value.month}-${selectedDate.value.year}";
  }
}
