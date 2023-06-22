import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/core/app_text_style.dart';
import 'package:bdcalling_it_task/view/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparentColor,
        statusBarIconBrightness: Brightness.light
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.bgImage),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.bgLineImage),
                      fit: BoxFit.fitWidth
                  )
              ),
            ),
            Positioned(
              top: 120,
              left: MediaQuery.of(context).viewPadding.left,
              right: MediaQuery.of(context).viewPadding.right,
              child: const Text(
                "fitly",
                textAlign: TextAlign.center,
                style: fontHeading,
              ),
            ),
            Positioned(
              left: 37,
              right: 37,
              bottom: 80,
              child: Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.colorBlack,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.offAndToNamed(AppRouter.onboardScreen),
                      child: Container(
                        padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
                        width: 130,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Text(
                          "Start Now",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Nanotech",
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1.25,
                            color:  Color(0xff333333),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      AppIcons.sliderArrow,
                      width: 48,
                      height: 32,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
