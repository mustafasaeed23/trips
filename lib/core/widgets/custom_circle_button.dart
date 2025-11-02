import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    super.key,
    required this.assetName,
    this.buttonColor,
  });
  final String assetName;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.grey.shade100,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        assetName,
        width: 22.w,
        height: 22.h,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
