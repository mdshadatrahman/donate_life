import 'package:donate_life/app/modules/create_profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final profileController = Get.put(ProfileController());
  List<Map<String, String>> bloodGroups = [
    {'title': 'Search Donor', 'subtitle': 'Search Donor By Area'},
    {'title': 'Add Donor', 'subtitle': 'Your Helps Matter'},
    {'title': 'Blood Bank', 'subtitle': 'Blood Bank Near You'},
    {'title': 'Ambulance', 'subtitle': 'Your Nearby Service'},
    {'title': 'Status Feed', 'subtitle': 'Emergency Blood Post'},
    {'title': 'Blood Donor', 'subtitle': 'Community'},
  ];
}
