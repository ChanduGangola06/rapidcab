import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidcab/core/theme/theme_util.dart';
import 'package:rapidcab/core/utils/dimensions.dart';
import 'package:rapidcab/core/utils/my_color.dart';
import 'package:rapidcab/core/utils/my_images.dart';
import 'package:rapidcab/data/controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    ThemeUtil.makeSplashTheme();
    super.initState();
    final controller = Get.put(SplashController());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.gotoNextPage();
    });
  }

  @override
  void dispose() {
    ThemeUtil.allScreenTheme();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (controller) {
      return Scaffold(
        backgroundColor:
            controller.noInternet ? MyColor.colorWhite : MyColor.primaryColor,
        body: Center(
          child: Image.asset(
            MyImages.appLogoWhite,
            height: Dimensions.appLogoHeight,
            width: Dimensions.appLogoWidth,
          ),
        ),
      );
    });
  }
}
