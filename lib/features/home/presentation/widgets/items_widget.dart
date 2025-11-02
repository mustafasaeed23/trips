import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trips_task/core/theme/app_colors.dart';
import 'package:trips_task/core/theme/assets.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Text('Items', style: TextStyle(color: Colors.white, fontSize: 24)),
          Spacer(),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xff171717),
              shape: BoxShape.circle,
            ),
            child: Center(child: SvgPicture.asset(Assets.filtersIcon)),
          ),
          SizedBox(width: 15),
          Container(
            height: 48,
            width: 3,
            decoration: BoxDecoration(
              color: Color(0xff171717),
              borderRadius: BorderRadius.circular(2.5),
            ),
          ),
          SizedBox(width: 15),
          Container(
            width: 177,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.goldColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.plusIcon),
                SizedBox(width: 10),
                Text(
                  'Add new item',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
