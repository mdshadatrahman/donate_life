import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/bottom_nav_bar_controller.dart';

class BottomNavBarView extends GetView<BottomNavBarController> {
  const BottomNavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Obx(
                () => controller.selectedPage.value,
              ),
              //Bottom nav bar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(10, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.changeIndex(0);
                        },
                        child: Obx(
                          () => SvgPicture.asset(
                            controller.selectedIndex.value == 0 ? 'assets/svg/bottom_nav/Home-1.svg' : 'assets/svg/bottom_nav/Home.svg',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.changeIndex(1);
                        },
                        child: Obx(
                          () => SvgPicture.asset(
                            controller.selectedIndex.value == 1 ? 'assets/svg/bottom_nav/History-1.svg' : 'assets/svg/bottom_nav/History.svg',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.changeIndex(2);
                        },
                        child: Obx(
                          () => SvgPicture.asset(
                            controller.selectedIndex.value == 2
                                ? 'assets/svg/bottom_nav/Notification-1.svg'
                                : 'assets/svg/bottom_nav/Notification.svg',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.changeIndex(3);
                        },
                        child: Obx(
                          () => SvgPicture.asset(
                            controller.selectedIndex.value == 3 ? 'assets/svg/bottom_nav/Menu-1.svg' : 'assets/svg/bottom_nav/Menu.svg',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
