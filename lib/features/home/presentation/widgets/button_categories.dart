import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tieats/core/res/colours.dart';
import 'package:tieats/core/res/typography_style.dart';

class ButtonCategories extends StatelessWidget {
  final String icon;
  final String title;
  const ButtonCategories({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.w,
          height: 60.w,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colours.fillCategory,
          ),
          child: SvgPicture.asset(
            icon,
          ),
        ),
        Text(
          title,
          style: TypographyStyle.medium.copyWith(
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }
}
