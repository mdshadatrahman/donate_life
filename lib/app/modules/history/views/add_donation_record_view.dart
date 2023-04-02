import 'package:donate_life/app/modules/history/controllers/history_controller.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/app/utils/custom_dropdown.dart';
import 'package:donate_life/app/utils/custom_dropdown_with_flag.dart';
import 'package:donate_life/app/utils/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddDonationRecordView extends GetView<HistoryController> {
  const AddDonationRecordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.secondaryColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          'Add Donation Record',
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: Get.height - AppBar().preferredSize.height - 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            controller.selectDate(context);
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 53,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.primaryColor.withOpacity(0.2),
                                    width: 1,
                                  ),
                                  // color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: AppColors.black.withOpacity(0.1),
                                  //     blurRadius: 10,
                                  //     offset: const Offset(0, 5),
                                  //   ),
                                  // ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Obx(
                                        () => Text(
                                          controller.selectedDateFormatted,
                                          style: const TextStyle(
                                            color: AppColors.secondaryColor,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.calendar_month_outlined,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -10,
                                left: 10,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 2.5,
                                  ),
                                  color: AppColors.primaryColor,
                                  child: const Text(
                                    'Last Donation Date',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const CustomTextField(
                          title: 'Patient Name',
                          keyboardType: TextInputType.name,
                          isRequired: true,
                        ),
                        const CustomTextField(
                          title: 'Hospital/Center Name',
                          keyboardType: TextInputType.name,
                          isRequired: true,
                        ),
                        const CustomTextField(
                          title: 'Seat/Ward No.',
                          keyboardType: TextInputType.number,
                          isRequired: true,
                        ),
                        const CustomDropDownWithFlag(
                          title: 'Country/region',
                        ),
                        const CustomDropDownWithFlag(
                          title: 'Country/region',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Expanded(
                              child: CustomDropDown(
                                title: 'City',
                                customCategory: [
                                  'Chuadanga',
                                  'Jashore',
                                  'Kushtia',
                                  'Magura',
                                  'Meherpur',
                                  'Narail',
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: CustomDropDown(
                                title: 'Area (optional)',
                                customCategory: [
                                  'Chuadanga',
                                  'Jashore',
                                  'Kushtia',
                                  'Magura',
                                  'Meherpur',
                                  'Narail',
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const CustomTextField(
                          title: 'Patient Mobile No.',
                          keyboardType: TextInputType.phone,
                          isRequired: true,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Add History',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
