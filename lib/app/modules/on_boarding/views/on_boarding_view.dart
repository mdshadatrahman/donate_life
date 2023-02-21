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
              children: [
                Text(
                  'Blood',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
