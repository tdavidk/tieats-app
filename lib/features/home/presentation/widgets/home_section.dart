import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tieats/core/res/colours.dart';
import 'package:tieats/core/res/typography_style.dart';

class HomeSection extends StatelessWidget {
  final String title;
  final String actionTitle;
  final VoidCallback? onTap;
  const HomeSection({
    super.key,
    required this.title,
    required this.actionTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TypographyStyle.bold.copyWith(
            fontSize: 20.sp,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionTitle,
            style: TypographyStyle.semiBold.copyWith(
              fontSize: 12.sp,
              color: Colours.grey8C,
            ),
          ),
        ),
      ],
    );
  }
}
