import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/view/screens/onboard/inner_widget/first_screen_content.dart';
import 'package:bdcalling_it_task/view/screens/onboard/inner_widget/second_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

  PageController pageController = PageController();

  List<Widget> widgets = [const FirstScreenContent(), const SecondScreenContent()];

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
        body: PageView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: widgets.length,
          itemBuilder: (context, index) => widgets[index],
        )
      ),
    );
  }
}
