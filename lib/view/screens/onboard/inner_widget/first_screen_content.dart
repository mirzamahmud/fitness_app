import 'dart:math';

import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/view/router/app_router.dart';
import 'package:bdcalling_it_task/view/components/button/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreenContent extends StatefulWidget {
  const FirstScreenContent({super.key});

  @override
  State<FirstScreenContent> createState() => _FirstScreenContentState();
}

class _FirstScreenContentState extends State<FirstScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
              ),
              const SizedBox(height: 30),
              CircleButton(
                imageSrc: AppIcons.rightArrow,
                size: 70,
                iconSize: 35,
                press: (){},
              )
            ],
          ),
        )
      ],
    );
  }
}
