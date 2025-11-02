import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

import '../routes/routes.dart';
import '../theme/assets.dart';

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () {
        context.pushNamedTransition(
          routeName: Routes.notificationsScreen,
          type: PageTransitionType.rightToLeft,
        );
      },
      child: Container(
        width: 48.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48.r),
          color: Colors.grey.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            Assets.notificationsIcon,
            width: 30.w,
            height: 30.h,
          ),
        ),
      ),
    );
  }
}
