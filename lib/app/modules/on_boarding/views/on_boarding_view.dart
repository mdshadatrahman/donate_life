import 'package:donate_life/app/utils/app_sizes.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/app/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Right vector
          Positioned(
            right: 0,
            child: SvgPicture.asset('assets/svg/blood_hand.svg'),
          ),
          //Left vector
          Positioned(
            left: 15,
            top: 130,
            child: SvgPicture.asset('assets/svg/big_plus.svg'),
          ),

          //blood text
          Positioned(
            top: 300,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your blood',
                  style: FontStyles.timesNewRoman42Primary,
                ),
                Row(
                  children: const [
                    Text(
                      'DONATION',
                      style: FontStyles.timesNewRoman36Secondary,
                    ),
                    Text(
                      ' can',
                      style: FontStyles.timesNewRoman42Primary,
                    ),
                  ],
                ),
                const Text(
                  'literally help',
                  style: FontStyles.timesNewRoman42Primary,
                ),
                const Text(
                  'save lives.',
                  style: FontStyles.timesNewRoman42Primary,
                ),

                //Bar
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 3,
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      'Blood can’t be manufactured. It can only come from the generosity of donors like you.',
                      style: TextStyle(
                        fontSize: AppSizes.fontSize14,
                        color: AppColors.secondaryColor,
                        fontFamily: Fonts.poppins,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 30,
            left: 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Your Help Matters',
                  style: TextStyle(
                    fontSize: AppSizes.fontSize14,
                    color: AppColors.secondaryColor,
                    fontFamily: Fonts.poppins,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Find Donor Nearby',
                  style: TextStyle(
                    fontSize: AppSizes.fontSize16,
                    color: AppColors.primaryColor,
                    fontFamily: Fonts.poppins,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: InkWell(
              onTap: () {
                controller.goNext();
              },
              child: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: AppColors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
