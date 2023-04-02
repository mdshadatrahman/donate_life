import 'package:donate_life/app/modules/menu/components/custom_filled_button.dart';
import 'package:donate_life/app/modules/menu/components/outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          height: Get.height - 130,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/menu/full_logo.svg',
                      ),
                      GestureDetector(
                        onTap: () {
                          //TODO Logout
                        },
                        child: SvgPicture.asset(
                          'assets/svg/menu/logout.svg',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  CustomOutlinedButton(
                    onPressed: () {},
                    text: 'Create Community',
                    iconPath: 'assets/svg/menu/community.svg',
                  ),
                  CustomOutlinedButton(
                    onPressed: () {},
                    text: 'Join us as a Volunteer',
                    iconPath: 'assets/svg/menu/join_vol.svg',
                  ),
                  CustomOutlinedButton(
                    onPressed: () {},
                    text: '24/7 Support',
                    iconPath: 'assets/svg/menu/support.svg',
                  ),
                  CustomOutlinedButton(
                    onPressed: () {},
                    text: 'Frequently Asked Questions',
                    iconPath: 'assets/svg/menu/faq.svg',
                  ),
                  CustomOutlinedButton(
                    onPressed: () {},
                    text: 'Create Paid Ad',
                    iconPath: 'assets/svg/menu/create_ads.svg',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomFilledButton(
                    onPressed: () {},
                    firstText: 'About donate',
                    lastText: 'life',
                    iconPath: 'assets/svg/menu/logo_white.svg',
                  ),
                  CustomOutlinedButton(
                    onPressed: () {},
                    text: 'Donate Us',
                    iconPath: 'assets/svg/menu/donate.svg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
