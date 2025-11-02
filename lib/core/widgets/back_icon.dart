
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trips_task/core/theme/assets.dart';
import 'package:trips_task/core/utils/exctenstions.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () {
        context.pop();
      },
      child: Container(
        width: 30.w,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 1.w),
        ),
        child: SvgPicture.asset(
          Assets.backIcon,
          width: 30.w,
          height: 30.h,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
