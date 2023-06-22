import 'dart:math';

import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

  final PageController pageController = PageController();

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparentColor,
      statusBarIconBrightness: Brightness.dark
    ));
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        body: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              AppImages.bgLineImage,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: AppColors.colorBlack,
            ),
            Positioned.fill(
              top: 88,
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: (){},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Nanotech",
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryColor
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Step 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Nanotech",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: AppColors.colorBlack
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SizedBox(
                    width: 270,
                    child: Text(
                      "Pick a goal for your body",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Nanotech",
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorBlack,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Your goal will define your routine",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Nanotech",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.colorGrey,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Transform.rotate(
                        angle: pi / 13,
                        child: Image.asset(
                          AppImages.rectangle1,
                          width: 230,
                          height: 241,
                          color: AppColors.secondaryColor_1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              AppImages.rectangle1,
                              width: 230,
                              height: 241,
                              color: AppColors.secondaryColor,
                            ),
                          ],
                        ),
                      ),
                      Transform.rotate(
                        angle: - (pi / 13),
                        child: Image.asset(
                          AppImages.rectangle1,
                          width: 230,
                          height: 241,
                          color: AppColors.secondaryColor_1,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
