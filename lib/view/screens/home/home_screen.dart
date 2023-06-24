import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/view/router/app_router.dart';
import 'package:bdcalling_it_task/view/widgets/bottom_nav/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> stringList = ["Morning", "Afternoon", "Evening", "Evening"];
  int selectedIndex = 0;

  List<Map<String, String>> data = [
    {
      "title" : "Jumping",
      "content" : "Perform your yoga and poses",
    },
    {
      "title" : "Swimming",
      "content" : "Perform your yoga and poses",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20),
          child: Stack(
            clipBehavior: Clip.none,
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
                top: 253,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(left: 25),
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: List.generate(
                          stringList.length,
                              (index) => GestureDetector(
                            onTap: () {
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                stringList[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: index == selectedIndex ? AppColors.colorBlack : AppColors.colorWhite,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: "Nanotech",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: 2, // Increase the item count as needed
                        padding: const EdgeInsets.only(top: 50),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => Get.toNamed(AppRouter.exerciseStepScreen),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(
                                  AppImages.rectangle4,
                                  height: 170,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 0,
                                  right: 0,
                                  child: Image.asset(
                                    AppImages.rectangle3,
                                    height: 180,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                                Positioned.fill(
                                  bottom: 10,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]["title"]!,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: AppColors.primaryColor,
                                            fontFamily: "Nanotech",
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 2
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          data[index]["content"]!,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: AppColors.colorWhite,
                                            fontFamily: "Nanotech",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(currentIndex: 0),
        extendBody: true,
      ),
    );
  }
}
