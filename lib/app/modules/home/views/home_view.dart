import 'package:donate_life/app/routes/app_pages.dart';
import 'package:donate_life/app/utils/colors.dart';
import 'package:donate_life/utils/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double space = 15;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.primaryColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: SizedBox(
        height: Get.height,
        child: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * 0.5,
              child: SvgPicture.asset(
                'assets/svg/home/background_blood.svg',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: SvgPicture.asset('assets/svg/logo_named.svg'),
            ),

            //Profile picture
            Positioned(
              top: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Get.put(HomeController()); // TODO: temporary solution
                  controller.profileController.isViewing.value = true;
                  Get.toNamed(Routes.PROFILE);
                },
                child: ClipPath(
                  clipper: CircleClipper(),
                  child: Container(
                    width: 45,
                    height: 45,
                    color: AppColors.yellow,
                  ),
                ),
              ),
            ),

            Positioned(
              top: 90,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const DonationInfo(title: 'blood\ntype', value: 'AB+'),
                      SizedBox(width: space),
                      const VerticalYellowBar(),
                      SizedBox(width: space),
                      const DonationInfo(title: 'unit\ndonated', value: '05'),
                      SizedBox(width: space),
                      const VerticalYellowBar(),
                      SizedBox(width: space),
                      const DonationInfo(title: 'last\ndonation', value: '26 march'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Every blood',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'DONOR is a hero!',
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: AppColors.yellow,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: Get.width - 40,
                    child: const Text(
                      'Donating blood is one of the easiest things you can do to help save a life. It only takes about 1 hour of your time, with 10 minutes of that being the actual blood donation. That small amount of time in your day can mean a lifetime to others.',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                        height: 1.6,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              left: 20,
              right: 20,
              child: SizedBox(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                width: Get.width,
                height: Get.height * 0.43, //TODO might have to change
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.95,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Get.toNamed(Routes.SEARCH_DONOR);
                        } else if (index == 1) {
                          Get.toNamed(Routes.ADD_DONOR);
                        } else if (index == 2) {
                          Get.toNamed(Routes.BLOOD_BANK);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: ShapeDecoration(
                            color: AppColors.white,
                            shape: ContinuousRectangleBorder(
                              side: const BorderSide(
                                style: BorderStyle.solid,
                                color: AppColors.primaryColor,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(70.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: SvgPicture.asset('assets/svg/logo.svg'),
                              ),
                              const Text(
                                'Search Donor',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              const Text(
                                'Search Donor By Area',
                                style: TextStyle(
                                  fontSize: 7,
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VerticalYellowBar extends StatelessWidget {
  const VerticalYellowBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.yellow,
      ),
    );
  }
}

class DonationInfo extends StatelessWidget {
  const DonationInfo({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 11,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.8,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value.toUpperCase(),
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 14,
            letterSpacing: 0.8,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
