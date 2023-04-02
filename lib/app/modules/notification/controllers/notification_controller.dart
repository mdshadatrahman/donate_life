import 'package:get/get.dart';

class NotificationController extends GetxController {
  @override
  void onInit() {
    getFirestEarlierNotificationIndex();
    super.onInit();
  }

  RxList<Map<String, dynamic>> notifications = <Map<String, dynamic>>[
    {
      'title': 'Emergency Alert',
      'description': 'AB+ Blood Needed in DMC',
      'icon': 'assets/svg/notifications/emergency.svg',
      'time': '07:12 PM',
      'flag': 'red',
      'isRead': false,
      'isToday': true,
    },
    {
      'title': 'Emergency Alert',
      'description': 'AB+ Blood Needed in nearby',
      'icon': 'assets/svg/notifications/emergency.svg',
      'time': '06:56 PM',
      'flag': 'red',
      'isRead': false,
      'isToday': true,
    },
    {
      'title': 'Donate Blood',
      'description': 'Complete your 120 days',
      'icon': 'assets/svg/notifications/thumbs_up.svg',
      'time': '04:00 PM',
      'flag': 'green',
      'isRead': false,
      'isToday': true,
    },
    {
      'title': 'Get a T-shirt',
      'description': 'Join today YBD Community',
      'icon': 'assets/svg/notifications/discount.svg',
      'time': '11:00 AM',
      'flag': 'black',
      'isRead': false,
      'isToday': true,
    },
    {
      'title': 'Congratulations',
      'description': '05th time successfully dona...',
      'icon': 'assets/svg/notifications/blue_tick.svg',
      'time': '12.10.2022',
      'flag': 'blue',
      'isRead': false,
      'isToday': false,
    },
    {
      'title': 'Emergency Alert',
      'description': 'AB+ Blood Needed in DMC',
      'icon': 'assets/svg/notifications/emergency.svg',
      'time': '12.10.2022',
      'flag': 'red',
      'isRead': false,
      'isToday': false,
    },
  ].obs;

  RxInt firstEarlierNotificationIndex = 0.obs;
  getFirestEarlierNotificationIndex() {
    for (int i = 0; i < notifications.length; i++) {
      if (!notifications[i]['isToday']) {
        firstEarlierNotificationIndex.value = i;
        break;
      }
    }
  }
}
