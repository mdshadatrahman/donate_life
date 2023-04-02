import 'package:donate_life/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class CustomPopupDialog extends StatelessWidget {
  const CustomPopupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    double space = 20;
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: AppColors.primaryColor, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Close button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(
                    Icons.close,
                    color: AppColors.primaryColor,
                    size: 40,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Blood Donor',
                          style: TextStyle(
                            letterSpacing: 1,
                            color: AppColors.secondaryColor,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset('assets/svg/blue_tick.svg')
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Md Sadman Store',
                      style: TextStyle(
                        letterSpacing: 0.8,
                        color: AppColors.secondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  SvgPicture.asset(
                    'assets/svg/menu/logo_white.svg',
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'donate',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'life',
                            style: TextStyle(
                              color: AppColors.yellow,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Community Member',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const DonationInfo(title: 'blood\ntype', value: 'AB+'),
                    SizedBox(width: space),
                    const VerticalRedBar(),
                    SizedBox(width: space),
                    const DonationInfo(title: 'unit\ndonated', value: '05'),
                    SizedBox(width: space),
                    const VerticalRedBar(),
                    SizedBox(width: space),
                    const DonationInfo(title: 'last\ndonation', value: '26 march'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Address: 123, ABC Road, XYZ, Dhaka, Bangladesh\nContact: 0123456789\n',
                  style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontSize: 14,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),

            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {}, //TODO launch phone call
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/svg/call.svg',
                      color: AppColors.primaryColor,
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Call Sadman',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class VerticalRedBar extends StatelessWidget {
  const VerticalRedBar({
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