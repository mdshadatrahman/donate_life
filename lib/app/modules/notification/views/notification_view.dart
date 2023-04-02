import 'package:donate_life/app/modules/notification/components/notification_tile.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: const Text(
          'Notification',
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height - AppBar().preferredSize.height - 110,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Obx(
                () => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.notifications.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        controller.notifications[index]['isToday']
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index == 0
                                      ? const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                          child: Text(
                                            'New',
                                            style: TextStyle(
                                              color: AppColors.secondaryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(),
                                  NotificationTile(notification: controller.notifications[index]),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.notifications.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        controller.notifications[index]['isToday'] == false
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index == controller.firstEarlierNotificationIndex.value
                                      ? const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                          child: Text(
                                            'Earlier',
                                            style: TextStyle(
                                              color: AppColors.secondaryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                        )
                                      : const SizedBox(),
                                  NotificationTile(
                                    notification: controller.notifications[index],
                                  ),
                                ],
                              )
                            : const SizedBox(),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
