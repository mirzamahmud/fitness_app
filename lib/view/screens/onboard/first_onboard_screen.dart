import 'dart:math';

import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/view/components/button/circle_button.dart';
import 'package:bdcalling_it_task/view/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class FirstOnboardScreen extends StatefulWidget {
  const FirstOnboardScreen({super.key});

  @override
  State<FirstOnboardScreen> createState() => _FirstOnboardScreenState();
}

class _FirstOnboardScreenState extends State<FirstOnboardScreen> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparentColor,
      statusBarIconBrightness: Brightness.dark
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image.asset(
                AppImages.bgLineImage,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: AppColors.colorBlack,
              ),
              Positioned.fill(
                top: 65,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: InkWell(
                      onTap: () => Get.offAndToNamed(AppRouter.homeScreen),
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
                top: 170,
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 32,
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform.rotate(
                            angle: pi / 13,
                            child: Stack(
                                alignment: Alignment.center,
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset(
                                    AppImages.rectangle1,
                                    width: 230,
                                    height: 241,
                                    color: AppColors.secondaryColor_1,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(AppIcons.dumbleIcon, height: 60, width: 60),
                                        const SizedBox(height: 15),
                                        const SizedBox(
                                          width: 150,
                                          child: Text(
                                            "Athletic physique",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.cardTextColor1,
                                              fontFamily: "Nanotech",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        const SizedBox(height: 25),
                                        Container(
                                          height: 40, width: 40,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(color: AppColors.primaryColor, shape: BoxShape.circle),
                                          child: Image.asset(AppIcons.checkIcon, height: 24, width: 24),
                                        )
                                      ],
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.antiAlias,
                              children: [
                                Image.asset(
                                  AppImages.rectangle1,
                                  width: 230,
                                  height: 241,
                                  color: AppColors.secondaryColor,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AppIcons.dumbleIcon, height: 40, width: 60),
                                      const SizedBox(height: 15),
                                      const SizedBox(
                                        width: 150,
                                        child: Text(
                                          "Classic physique",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.cardTextColor,
                                            fontFamily: "Nanotech",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      Container(
                                        height: 40, width: 40,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(color: AppColors.primaryColor, shape: BoxShape.circle),
                                        child: Image.asset(AppIcons.checkIcon, height: 24, width: 24),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Transform.rotate(
                            angle: - (pi / 13),
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(
                                  AppImages.rectangle1,
                                  width: 230,
                                  color: AppColors.secondaryColor_1,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AppIcons.dumbleIcon, height: 60, width: 60),
                                      const SizedBox(height: 15),
                                      const SizedBox(
                                        width: 150,
                                        child: Text(
                                          "Athletic physique",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.cardTextColor1,
                                            fontFamily: "Nanotech",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      Container(
                                        height: 60, width: 60,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(color: AppColors.primaryColor, shape: BoxShape.circle),
                                        child: Image.asset(AppIcons.checkIcon, height: 24, width: 24),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    CircleButton(
                      imageSrc: AppIcons.rightArrow,
                      size: 70,
                      iconSize: 35,
                      press: (){
                        Get.toNamed(AppRouter.secondOnboardScreen);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
