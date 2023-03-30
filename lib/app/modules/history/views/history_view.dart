import 'package:donate_life/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double space = 15;
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: Get.width,
              // height: Get.height * 0.2,
              child: SvgPicture.asset(
                'assets/svg/history/top.svg',
                fit: BoxFit.fill,
              ),
            ),
            const Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Donation History',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              right: 30,
              child: Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(
                    'assets/svg/history/add.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 20,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Blood Donor',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          'assets/svg/history/blue_tick.svg',
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    const Text(
                      'Mr. ArghyaRaj Niloy',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const DonationInfo(title: 'blood\ntype', value: 'AB+'),
                        SizedBox(width: space),
                        const VerticalYellowBar(),
                        SizedBox(width: space),
                        const DonationInfo(title: 'unit\ndonated', value: '05'),
                        SizedBox(width: space),
                        const VerticalYellowBar(),
                        SizedBox(width: space),
                        const DonationInfo(title: 'last\ndonation', value: '26 march'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: Get.width * 0.9,
                      child: const Text(
                        'Every year, millions of people are diagnosed with cancer. Many will need blood and platelets during chemotherapy. In addition, people with chronic illnesses often need frequent transfusions throughout their lives.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.8,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: Get.width * 0.9,
                      height: Get.height * 0.5,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return DonationCard(
                            color: index % 2 == 0 ? AppColors.primaryColor : AppColors.blue,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DonationCard extends StatelessWidget {
  const DonationCard({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: Get.width * 0.9,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Stack(
            children: [
              Positioned(
                right: 65,
                top: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  'assets/svg/history/logo_white.svg',
                  height: 200,
                ),
              ),
              Positioned(
                right: 50,
                top: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  'assets/svg/history/donate_life.svg',
                  height: 110,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  'assets/svg/history/bar_code.svg',
                  height: 160,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Last Donation Date: 26.01.2023',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Patient Name',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Mr. ArghyaRaj Niloy',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Dhaka Medical College (DMC)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Seat No: Male-256',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Contact: +880 1732 265986',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalYellowBar extends StatelessWidget {
  const VerticalYellowBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.primaryColor,
      ),
    );
  }
}

class DonationInfo extends StatelessWidget {
  const DonationInfo({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 11,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.8,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value.toUpperCase(),
          style: const TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 14,
            letterSpacing: 0.8,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
