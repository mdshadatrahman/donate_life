import 'package:donate_life/app/modules/search_donor/components/custom_popup.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/app/utils/custom_dropdown.dart';
import 'package:donate_life/utils/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/search_donor_controller.dart';

class SearchDonorView extends GetView<SearchDonorController> {
  const SearchDonorView({Key? key}) : super(key: key);
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
          'Search Donor',
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
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
              const CustomDropDown(
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
              const SizedBox(height: 25),
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
                        'Available Donor',
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 12,
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
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const CustomPopupDialog();
                            },
                          );
                        },
                        child: Container(
                          height: 80,
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
                                        'Md Sadman Sakib',
                                        style: TextStyle(
                                          // decoration: TextDecoration.underline,
                                          color: AppColors.secondaryColor,
                                          fontSize: 14,
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 2.5),
                                      Text(
                                        'Varsity Front Gate Rampura, Dhaka',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontSize: 12,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
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
