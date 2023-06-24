import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:bdcalling_it_task/core/app_icons.dart';
import 'package:bdcalling_it_task/core/app_images.dart';
import 'package:bdcalling_it_task/view/widgets/bottom_nav/bottom_nav_bar.dart';
import 'package:bdcalling_it_task/view/widgets/button/circle_button.dart';
import 'package:flutter/material.dart';

class VideoGuideScreen extends StatefulWidget {
  const VideoGuideScreen({super.key});

  @override
  State<VideoGuideScreen> createState() => _VideoGuideScreenState();
}

class _VideoGuideScreenState extends State<VideoGuideScreen> {

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      setState(() {
        scrollController.offset;
      });
    });
    super.initState();
  }

  List<Map<String, String>> data = [
    {
      "image" : AppImages.image2,
      "title" : "Warm Up Exercise 1",
      "duration" : "24 min",
      "content" : "Alternating knee to chest for 20m- Walk back recovery"
    },
    {
      "image" : AppImages.image1,
      "title" : "Warm Up Exercise 2",
      "duration" : "26 min",
      "content" : "Alternating knee to chest for 20m- Walk back recovery"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        body: SingleChildScrollView(
          controller: scrollController,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                AppImages.bgLineImage,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: AppColors.colorBlack,
              ),

              Positioned(
                top: 85, left: 25, right: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Video Guide",
                      style: TextStyle(
                        color: AppColors.colorBlack,
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        fontFamily: "Nanotech",
                      ),
                    ),
                    const SizedBox(height: 30),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: data.length, // Increase the item count as needed
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => const SizedBox(height: 15),
                      itemBuilder: (context, index) => Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor_1,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 180,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage(data[index]["image"]!),
                                  fit: BoxFit.fill
                                )
                              ),
                              child: CircleButton(
                                size: 33,
                                iconSize: 17,
                                imageSrc: AppIcons.playIcon,
                                bgColor: AppColors.primaryColor,
                                iconColor: AppColors.colorBlack,
                                press: (){},
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data[index]["title"]!,
                                  style: const TextStyle(
                                    color: AppColors.colorBlack,
                                    fontFamily: "Nanotech",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.watch_later,
                                      color: AppColors.colorBlack,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      data[index]["duration"]!,
                                      style: const TextStyle(
                                          color: AppColors.colorBlack,
                                          fontFamily: "Nanotech",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Text(
                              data[index]["content"]!,
                              style: const TextStyle(
                                  color: AppColors.colorBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(currentIndex: 2),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
