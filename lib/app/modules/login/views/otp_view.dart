import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/app/utils/primary_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';

import '../controllers/login_controller.dart';

class OtpView extends GetView<LoginController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            height: Get.height - 40,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 30),
                    SizedBox(
                      height: Get.width * 0.8,
                      width: Get.width * 0.8,
                      child: Lottie.asset(
                        'assets/lottie/otp.json',
                        repeat: false,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Enter your 6 digit OTP',
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const FittedBox(
                      child: Text(
                        'We have sent the code verification to +880 1303 373938',
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Text(
                        'Wrong Number?',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Pinput(
                      defaultPinTheme: controller.defaultPinTheme,
                      focusedPinTheme: controller.defaultPinTheme.copyDecorationWith(
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      submittedPinTheme: controller.defaultPinTheme.copyWith(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: controller.defaultPinTheme.decoration!.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      // validator: (s) {
                      //   return s == '123456' ? null : 'Pin is incorrect';
                      // },
                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                      showCursor: true,
                      length: 6,
                      onCompleted: (pin) {},
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: Get.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don’t receive OTP code?  ',
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
                              'Resend Code',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: AppColors.primaryColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
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
                  text: 'Verify',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
