import 'package:bdcalling_it_task/core/app_colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final double size;
  final double? iconSize;
  final Color bgColor;
  final Color iconColor;
  final String imageSrc;
  final VoidCallback press;

  const CircleButton({
    this.size = 40,
    this.iconSize,
    this.bgColor = AppColors.colorBlack,
    this.iconColor = AppColors.colorWhite,
    required this.imageSrc,
    required this.press,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: size, width: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle
        ),
        child: Image.asset(
          imageSrc,
          height: iconSize,
          width: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
