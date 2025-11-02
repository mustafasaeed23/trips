
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/assets.dart';
import '../theme/font_style.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Container(
            width: double.infinity,
            height: 43.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.searchIcon, color: Colors.black26),
                  SizedBox(width: 10.w),
                  Text(
                    "Search",
                    style: FontsStyle.style12grey.copyWith(fontSize: 13.r),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: InkWell(
            onTap: () {
              // DoctorSortBottomSheet.doctorSortBottomSheet(context);
            },
            child: SvgPicture.asset(Assets.sortIcon, width: 24.w, height: 24.h),
          ),
        ),
      ],
    );
  }
}
