import 'package:donate_life/app/modules/create_profile/controllers/profile_controller.dart';
import 'package:donate_life/app/routes/app_pages.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/app/utils/custom_dropdown.dart';
import 'package:donate_life/app/utils/custom_dropdown_with_flag.dart';
import 'package:donate_life/app/utils/custom_textfield.dart';
import 'package:donate_life/utils/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: controller.isViewing.value
          ? AppBar(
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
                'Blood Hero Profile',
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.5,
                ),
              ),
            )
          : null,
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: controller.isViewing.value ? MainAxisAlignment.center : MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: controller.isViewing.value ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                        children: [
                          controller.isViewing.value
                              ? const SizedBox()
                              : const Text(
                                  'Create Profile',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                          controller.isViewing.value
                              ? const SizedBox()
                              : const Text(
                                  'Submit your personal details here.',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontSize: 12,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                          controller.isViewing.value ? const SizedBox() : const SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              //TODO controller.getImage();
                            },
                            child: ClipPath(
                              clipper: CircleClipper(),
                              child: Container(
                                height: 100,
                                width: 100,
                                color: AppColors.secondaryColor,
                                child: SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: SvgPicture.asset(
                                    'assets/svg/plus.svg',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Upload your profile picture',
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const CustomTextField(
                    title: 'Full Name',
                    keyboardType: TextInputType.name,
                    isRequired: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Expanded(
                          child: CustomDropDown(
                            title: 'Gender',
                            customCategory: [
                              'Male',
                              'Female',
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.selectLastDonation(context);
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Obx(
                                          () => Text(
                                            controller.selectedLastDonationFormatted,
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
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomTextField(
                    title: 'Email Address (optional)',
                    keyboardType: TextInputType.emailAddress,
                    isRequired: false,
                  ),
                  const CustomTextField(
                    title: 'Mobile Number',
                    keyboardType: TextInputType.streetAddress,
                    isRequired: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Expanded(
                          child: CustomDropDown(
                            title: 'Blood Group',
                            customCategory: [
                              'A+',
                              'A-',
                              'B+',
                              'B-',
                              'AB+',
                              'AB-',
                              'O+',
                              'O-',
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              controller.selectBirthDay(context);
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
                                      'Birth Date',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.BOTTOM_NAV_BAR);
                    },
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Create Profile',
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
    );
  }
}
