import 'dart:math';

import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ExerciseStepScreen extends StatefulWidget {
  const ExerciseStepScreen({super.key});

  @override
  State<ExerciseStepScreen> createState() => _ExerciseStepScreenState();
}

class _ExerciseStepScreenState extends State<ExerciseStepScreen> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: AppColors.transparentColor
    ));
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: AppColors.transparentColor
    ));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.bgImage2),
                  fit: BoxFit.fill
                )
              ),
            ),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              padding: const EdgeInsets.only(top: 240, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        AppIcons.favoriteIcon,
                        color: AppColors.primaryColor,
                        height: 24, width: 24,
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 165,
                        height: 70,
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.cardBgColor,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: const Text(
                          "Your heart rate is optimal: 132bpm",
                          style: TextStyle(
                            color: AppColors.colorBlack,
                            fontFamily: "Nanotech",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    margin: const EdgeInsets.only(left: 25),
                    decoration: const BoxDecoration(
                        color: AppColors.cardBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        image: DecorationImage(
                            image: AssetImage(AppImages.bgLineImage2),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        Positioned(
                          top: 30, left: 35, right: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Set",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 28,
                                              fontFamily: "Nanotech"
                                          )
                                      ),
                                      TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 28,
                                              fontFamily: "Nanotech"
                                          )
                                      ),
                                      TextSpan(
                                        text: "1/6",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 28,
                                            fontFamily: "Nanotech",
                                            letterSpacing: 1.5
                                        ),
                                      )
                                    ]
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Rep",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 28,
                                              fontFamily: "Nanotech"
                                          )
                                      ),
                                      TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 28,
                                              fontFamily: "Nanotech"
                                          )
                                      ),
                                      TextSpan(
                                        text: "28",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 28,
                                            fontFamily: "Nanotech",
                                            letterSpacing: 1.5
                                        ),
                                      )
                                    ]
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 100, left: 0, right: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 242, width: 242,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  color: AppColors.circleContainerColor,
                                  shape: BoxShape.circle
                              ),
                            ),
                          ),
                        ),

                        /// dots
                        Positioned(
                          top: 104,
                          left: 36,
                          child: Container(
                            height: 20, width: 20,
                            decoration: const BoxDecoration(color: AppColors.secondaryColor, shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          top: 124,
                          right: 45,
                          child: Container(
                            height: 13, width: 13,
                            decoration: const BoxDecoration(color: AppColors.secondaryColor, shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          top: 267,
                          left: -36,
                          child: Container(
                            height: 52, width: 52,
                            decoration: const BoxDecoration(color: AppColors.secondaryColor, shape: BoxShape.circle),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40)
                              )
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 85, left: 25, right: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform.rotate(
                        angle: pi,
                        child: Image.asset(
                          AppIcons.rightArrow,
                          height: 24, width: 24,
                          color: AppColors.colorWhite,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 8, width: 8,
                        decoration: const BoxDecoration(
                          color: AppColors.dotColor,
                          shape: BoxShape.circle
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Syncing",
                        style: TextStyle(
                          color: AppColors.colorWhite,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Nanotech"
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
