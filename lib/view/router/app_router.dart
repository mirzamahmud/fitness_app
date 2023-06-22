import 'package:bdcalling_it_task/view/screens/activity/activity_screen.dart';
import 'package:bdcalling_it_task/view/screens/home/home_screen.dart';
import 'package:bdcalling_it_task/view/screens/onboard/onboard_screen.dart';
import 'package:bdcalling_it_task/view/screens/splash/splash_screen.dart';
import 'package:bdcalling_it_task/view/screens/video_guide/video_guide_screen.dart';
import 'package:get/get.dart';

class AppRouter{

  static const String splashScreen = "/splash_screen";
  static const String onboardScreen = "/onboard_screen";
  static const String homeScreen = "/home_screen";
  static const String activityScreen = "/activity_screen";
  static const String videoGuideScreen = "/video_guide_screen";

  static List<GetPage> routes = [

    GetPage(
      name: splashScreen,
      page: () => const SplashScreen()
    ),
    GetPage(
        name: onboardScreen,
        page: () => const OnboardScreen()
    ),
    GetPage(
        name: homeScreen,
        page: () => const HomeScreen()
    ),
    GetPage(
        name: activityScreen,
        page: () => const ActivityScreen()
    ),
    GetPage(
        name: videoGuideScreen,
        page: () => const VideoGuideScreen()
    )
  ];
}