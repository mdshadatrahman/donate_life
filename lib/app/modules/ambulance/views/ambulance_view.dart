import 'package:donate_life/app/modules/ambulance/controllers/ambulance_controller.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/app/utils/custom_dropdown.dart';
import 'package:donate_life/utils/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class AmbulanceView extends GetView<AmbulanceController> {
  const AmbulanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: false,
        leadingWidth: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text(
                'Ambulance',
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: const [
                  Expanded(
                    child: CustomDropDown(
                      title: 'City',
                      customCategory: [
                        'Khulna',
                        'Dhaka',
                        'Rajshahi',
                        'Chittagong',
                        'Barisal',
                        'Sylhet',
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomDropDown(
                      title: 'Area',
                      customCategory: [
                        'Khulna',
                        'Dhaka',
                        'Rajshahi',
                        'Chittagong',
                        'Barisal',
                        'Sylhet',
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Available Ambulance',
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      SvgPicture.asset('assets/svg/active.svg'),
                    ],
                  ),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: Get.height * 0.60,
                width: Get.width,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        height: 80,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.secondaryColor.withOpacity(0.1),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //profile image
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: ClipPath(
                                    clipper: CircleClipper(),
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      color: AppColors.primaryColor,
                                      child: const Icon(
                                        Icons.person,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Service Name',
                                      style: TextStyle(
                                        // decoration: TextDecoration.underline,
                                        color: AppColors.secondaryColor,
                                        fontSize: 14,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 2.5),
                                    SizedBox(
                                      width: 230,
                                      child: Text(
                                        'Dhaka Medical College',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontSize: 12,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/svg/call.svg',
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
