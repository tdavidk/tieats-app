import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tieats/core/res/colours.dart';
import 'package:tieats/core/res/typography_style.dart';

class ButtonBalanceCard extends StatelessWidget {
  final String icon;
  final String title;
  const ButtonBalanceCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40.w,
          height: 40.w,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colours.black17C,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset(
            icon,
            width: 24.w,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          style: TypographyStyle.semiBold.copyWith(
            fontSize: 12.sp,
            color: Colours.black17C,
          ),
        )
      ],
    );
  }
}
