import 'package:donate_life/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.onPressed,
    required this.firstText,
    required this.lastText,
    required this.iconPath,
  });
  final VoidCallback onPressed;
  final String firstText;
  final String lastText;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 60,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.secondaryColor.withOpacity(0.05),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 10),
            Row(
              children: [
                Text(
                  firstText,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.white,
                    letterSpacing: 0.8,
                  ),
                ),
                Text(
                  lastText,
                  style: const TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.8,
                    color: AppColors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
