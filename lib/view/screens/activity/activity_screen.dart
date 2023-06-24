import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/view/components/bottom_nav/bottom_nav_bar.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {

  var data = [0.5, 0.0, 1.0, -0.3, 0.7, 0.5, 1.0];
  var days = ["T", "W", "T", "F", "S", "S", "M"];

  List<Map<String, dynamic>> bmiData = [
    {
      "color" : AppColors.primaryColor,
      "title" : "Good"
    },
    {
      "color" : AppColors.dotColor,
      "title" : "Average"
    },
    {
      "color" : AppColors.colorRed,
      "title" : "Low"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                AppImages.bgLineImage,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: AppColors.colorBlack,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Monday 11 July",
                      style: TextStyle(
                        color: AppColors.colorBlack,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: "Nanotech",
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor_1,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Weight",
                                style: TextStyle(
                                  color: AppColors.colorBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: "Nanotech",
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "59.8",
                                      style: TextStyle(
                                        color: AppColors.colorBlack,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 24,
                                        fontFamily: "Nanotech",
                                      ),
                                    ),
                                    TextSpan(
                                      text: "kg",
                                      style: TextStyle(
                                        color: AppColors.colorBlack,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: "Nanotech",
                                      ),
                                    )
                                  ]
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Sparkline(
                            fallbackHeight: 50,
                            data: data,
                            pointColor: AppColors.secondaryColor,
                            pointsMode: PointsMode.all,
                            pointSize: 10,
                            lineColor: AppColors.colorBlack,
                            lineWidth: 4,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(days.length, (index) => Text(
                              days[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.colorGrey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: "Nanotech"
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          color: AppColors.colorBlack,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Weekly Report",
                                style: TextStyle(
                                  color: AppColors.colorWhite,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: "Nanotech",
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "2634",
                                        style: TextStyle(
                                          color: AppColors.colorWhite,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          fontFamily: "Nanotech",
                                        ),
                                      ),
                                      TextSpan(
                                        text: "kcal",
                                        style: TextStyle(
                                          color: AppColors.colorWhite,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          fontFamily: "Nanotech",
                                        ),
                                      )
                                    ]
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 40),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset(
                                AppImages.chartImage,
                                height: 160,
                                width: MediaQuery.of(context).size.width,
                              ),
                              Positioned.fill(
                                top: -95, left: 3,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 60, height: 33,
                                    padding: const EdgeInsets.only(bottom: 5),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: AppColors.transparentColor,
                                      image: DecorationImage(
                                        image: AssetImage(AppIcons.unionIcon),
                                        fit: BoxFit.fill
                                      )
                                    ),
                                    child: const Text(
                                      "163 kcal",
                                      style: TextStyle(
                                        color: AppColors.colorBlack,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "BMI",
                                style: TextStyle(
                                  color: AppColors.colorWhite,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: "Nanotech",
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "17.5",
                                        style: TextStyle(
                                          color: AppColors.colorWhite,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          fontFamily: "Nanotech",
                                        ),
                                      ),
                                      TextSpan(
                                        text: "bp",
                                        style: TextStyle(
                                          color: AppColors.colorWhite,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          fontFamily: "Nanotech",
                                        ),
                                      )
                                    ]
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 100,
                            animation: true,
                            lineHeight: 10.0,
                            animationDuration: 2000,
                            percent: 0.8,
                            barRadius: const Radius.circular(5),
                            progressColor: AppColors.primaryColor,
                            backgroundColor: AppColors.colorBlack,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: List.generate(3, (index) => Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 10, width: 10,
                                    decoration: BoxDecoration(
                                      color: bmiData[index]["color"]!,
                                      shape: BoxShape.circle
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    bmiData[index]["title"]!,
                                    style: const TextStyle(
                                      color: AppColors.colorWhite,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Nanotech"
                                    ),
                                  )
                                ],
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(currentIndex: 1),
      ),
    );
  }
}
