import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/view/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {

  final int currentIndex;

  const BottomNavBar({required this.currentIndex, super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List<String> iconList = [AppIcons.categoryIcon, AppIcons.activityIcon, AppIcons.heartIcon];

  var bottomNavIndex = 0;

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
      color: AppColors.colorWhite,
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.colorBlack,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(iconList.length, (index) => InkWell(
            onTap: (){
              _onTap(index);
            },
            child: Image.asset(
              iconList[index],
              height: 20, width: 20,
              color: index == bottomNavIndex ? AppColors.primaryColor : AppColors.colorGrey,
            ),
          )),
        ),
      ),
    );
  }

  void _onTap(int index) {

    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        Get.toNamed(AppRouter.homeScreen);
      }
    }

    else if (index == 1) {
      if (!(widget.currentIndex == 1)) {
        Get.toNamed(AppRouter.activityScreen);
      }
    }

    else if (index == 2) {
      if (!(widget.currentIndex == 2)) {
        Get.toNamed(AppRouter.videoGuideScreen);
      }
    }
  }
}
