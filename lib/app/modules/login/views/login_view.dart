import 'package:donate_life/app/modules/login/components/textfield_with_country.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/app/utils/primary_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // TODO Skip to home page
                        },
                        child: Row(
                          children: [
                            const Text(
                              'Skip',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_double_arrow_right_sharp,
                              color: Colors.black.withOpacity(0.5),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Lottie.asset(
                    'assets/lottie/hello.json',
                    repeat: false,
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Enter your mobile number',
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const FittedBox(
                    child: Text(
                      'Donatelife will send an OTP to verify your mobile number.',
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomDropDownWithFlag(),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: Get.width * 0.8,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'By providing my mobile number, I hareby agree and',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'accept the ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                //TODO: Terms of Service
                              },
                              child: const Text(
                                'Terms of Service',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.secondaryColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const Text(
                              ' and ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                //TODO: Navigate to Privacy Policy
                              },
                              child: const Text(
                                ' Privacy Policy.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.secondaryColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              PrimaryButton(
                onTap: () {
                  //TODO: Navigate to Request OTP
                },
                text: 'Request OTP',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
