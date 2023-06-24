import 'dart:math';

import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/view/router/app_router.dart';
import 'package:bdcalling_it_task/view/components/button/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreenContent extends StatelessWidget {
  const SecondScreenContent({super.key});

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
        Positioned(
          top: 65,
          left: 30,
          right: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transform.rotate(
                    angle: pi,
                    child: Image.asset(
                      AppIcons.rightArrow,
                      height: 24, width: 24,
                      color: AppColors.colorBlack,
                    ),
                  ),
                ),
              ),
              InkWell(
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
              )
            ],
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
                  "Step 2",
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
                  "Add weight of your body",
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
                "Your weight will define your routine",
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
              const SizedBox(height: 20 * 3),
              Image.asset(
                AppImages.scaleImage,
                height: 160, width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
        Positioned(
            top: 500,
            child: Container(
              height: 160, width: 170,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: AppColors.transparentColor,
                  image: DecorationImage(
                      image: AssetImage(AppImages.rectangle2),
                      fit: BoxFit.fitHeight
                  )
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "52.4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.colorWhite,
                        fontWeight: FontWeight.w700,
                        fontSize: 40
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "kg",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.colorWhite,
                        fontWeight: FontWeight.w400,
                        fontSize: 30
                    ),
                  )
                ],
              ),
            )
        ),
        Positioned(
          bottom: 100,
          child: CircleButton(
            imageSrc: AppIcons.rightArrow,
            size: 70,
            iconSize: 35,
            press: (){
              Get.offAndToNamed(AppRouter.homeScreen);
            },
          ),
        )
      ],
    );
  }
}
