import 'package:bdcalling_it_task/view/screens/activity/activity_screen.dart';
import 'package:bdcalling_it_task/view/screens/exercise_step/exercise_step_screen.dart';
import 'package:bdcalling_it_task/view/screens/home/home_screen.dart';
import 'package:bdcalling_it_task/view/screens/onboard/first_onboard_screen.dart';
import 'package:bdcalling_it_task/view/screens/onboard/second_onboard_screen.dart';
import 'package:bdcalling_it_task/view/screens/splash/splash_screen.dart';
import 'package:bdcalling_it_task/view/screens/video_guide/video_guide_screen.dart';
import 'package:get/get.dart';

class AppRouter{

  static const String splashScreen = "/splash_screen";
  static const String firstOnboardScreen = "/first_onboard_screen";
  static const String secondOnboardScreen = "/second_onboard_screen";
  static const String homeScreen = "/home_screen";
  static const String exerciseStepScreen = "/exercise_step_screen";
  static const String activityScreen = "/activity_screen";
  static const String videoGuideScreen = "/video_guide_screen";

  static List<GetPage> routes = [

    GetPage(
      name: splashScreen,
      page: () => const SplashScreen()
    ),
    GetPage(
        name: firstOnboardScreen,
        page: () => const FirstOnboardScreen()
    ),
    GetPage(
        name: secondOnboardScreen,
        page: () => const SecondOnboardScreen()
    ),
    GetPage(
        name: homeScreen,
        page: () => const HomeScreen()
    ),
    GetPage(
        name: exerciseStepScreen,
        page: () => const ExerciseStepScreen()
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