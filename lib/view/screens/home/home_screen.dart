import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/view/widgets/bottom_nav/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> stringList = ["Morning", "Afternoon", "Evening", "Evening"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        body: Stack(
          children: [
            Image.asset(
              AppImages.bgLineImage,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: AppColors.colorBlack,
            ),
            Positioned(
              top: 77, left: 25, right: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60, width: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(32),
                            image: const DecorationImage(image: AssetImage(AppImages.avatarImage))
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                              color: AppColors.secondaryColor_1,
                              borderRadius: BorderRadius.circular(32),
                              border: Border.all(color: AppColors.secondaryColor.withOpacity(0.2), width: 2)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Search workout..",
                                style: TextStyle(
                                    color: AppColors.secondaryColor_2,
                                    fontFamily: "Nanotech",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.6
                                ),
                              ),
                              Image.asset(
                                AppIcons.searchIcon,
                                height: 24, width: 24,
                                color: AppColors.colorBlack_1,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Have the best",
                              style: TextStyle(
                                color: AppColors.colorBlack,
                                fontFamily: "Nanotech",
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Yoga Experience",
                              style: TextStyle(
                                  color: AppColors.colorBlack,
                                  fontFamily: "Nanotech",
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 77,
                        alignment: Alignment.center,
                        padding: const EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 20),
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor_1,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(color: AppColors.secondaryColor.withOpacity(0.2), width: 2)
                        ),
                        child: Image.asset(
                          AppIcons.filterIcon,
                          height: 24, width: 24,
                          color: AppColors.colorBlack_1,
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 253, left: 0, right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(left: 25),
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: List.generate(stringList.length, (index) => GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 17),
                          decoration: BoxDecoration(
                              color: index == selectedIndex ? AppColors.primaryColor : AppColors.colorBlack,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text(
                            stringList[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: index == selectedIndex ? AppColors.colorBlack : AppColors.colorWhite,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: "Nanotech"
                            ),
                          ),
                        ),
                      )),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
                    child: Column(
                      children: List.generate(2, (index) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              AppImages.rectangle4,
                              height: 170,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                      )),
                    ),
                  )
                ],
              ),
            ),

            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavBar(currentIndex: 0),
            )
          ],
        ),
      ),
    );
  }
}
