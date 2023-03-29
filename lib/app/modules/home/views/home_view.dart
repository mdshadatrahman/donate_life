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
      body: Stack(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * 0.54,
            child: SvgPicture.asset(
              'assets/svg/home/background_blood.svg',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: SvgPicture.asset('assets/svg/logo_named.svg'),
          ),

          //Profile picture
          Positioned(
            top: 40,
            right: 20,
            child: ClipPath(
              clipper: CircleClipper(),
              child: Container(
                width: 45,
                height: 45,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        
          
        ],
      ),
    );
  }
}
