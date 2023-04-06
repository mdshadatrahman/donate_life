import 'package:donate_life/app/modules/home/controllers/home_controller.dart';
import 'package:donate_life/app/modules/home/views/home_view.dart';
import 'package:donate_life/app/modules/inbox/controllers/inbox_controller.dart';
import 'package:donate_life/app/modules/inbox/views/inbox_view.dart';
import 'package:donate_life/app/modules/menu/views/menu_view.dart';
import 'package:donate_life/app/modules/notification/controllers/notification_controller.dart';
import 'package:donate_life/app/modules/notification/views/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  static List<Widget> pages = [
    const HomeView(),
    const InboxView(),
    const NotificationView(),
    const MenuView(),
  ];

  RxInt selectedIndex = 0.obs;
  Rx<Widget> selectedPage = pages[0].obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
    changePage(index);
  }

  changePage(int index) {
    if (index == 0) {
      Get.lazyPut(() => HomeController());
    } else if (index == 1) {
      Get.lazyPut(() => InboxController());
    } else if (index == 2) {
      Get.lazyPut(() => NotificationController());
    } else if (index == 3) {
      Get.lazyPut(() => MenuController());
    }
    selectedPage.value = pages[index];
  }
}
