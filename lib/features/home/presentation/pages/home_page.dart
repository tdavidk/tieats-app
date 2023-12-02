import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tieats/core/extensions/context_extension.dart';
import 'package:tieats/core/res/colours.dart';
import 'package:tieats/core/res/media_res.dart';
import 'package:tieats/core/res/typography_style.dart';
import 'package:tieats/features/home/presentation/widgets/button_balance_card.dart';
import 'package:tieats/features/home/presentation/widgets/button_categories.dart';
import 'package:tieats/features/home/presentation/widgets/home_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colours.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Location',
                            style: TypographyStyle.medium.copyWith(
                              fontSize: 14.sp,
                              color: Colours.grey,
                            ),
                          ),
                          Text(
                            'Jl. Palapa Blok A No.19',
                            style: TypographyStyle.bold.copyWith(
                              fontSize: 16.sp,
                              color: Colours.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 44.w,
                        height: 44.w,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colours.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.w,
                              spreadRadius: 5.w,
                              color: Colours.black.withOpacity(0.05),
                              offset: Offset(4.w, 4.w),
                            )
                          ],
                        ),
                        child: SvgPicture.asset(
                          MediaRes.iconFav,
                          width: 24.w,
                          height: 24.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.w,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colours.greyCFD,
                          border: Border.all(color: Colours.greyBEE),
                        ),
                        child: SvgPicture.asset(
                          MediaRes.iconFilter,
                          width: 20.w,
                          height: 20.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: context.width,
                    height: 94.h,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          MediaRes.balanceBgImagePNG,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colours.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.h),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      MediaRes.iconWallet,
                                    ),
                                    SizedBox(width: 4.w),
                                    Text(
                                      'Your Balance',
                                      style: TypographyStyle.semiBold.copyWith(
                                        fontSize: 14.sp,
                                        color: Colours.black17C,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  'Rp 1.230.323',
                                  style: TypographyStyle.bold.copyWith(
                                    fontSize: 18.sp,
                                    color: Colours.black17C,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const ButtonBalanceCard(
                                icon: MediaRes.iconTopUp,
                                title: 'Top Up',
                              ),
                              SizedBox(width: 20.w),
                              const ButtonBalanceCard(
                                icon: MediaRes.iconPay,
                                title: 'Pay',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeSection(
                        title: 'Categories',
                        actionTitle: 'See More',
                        onTap: () {},
                      ),
                      SizedBox(height: 12.h),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonCategories(
                            icon: MediaRes.iconNearest,
                            title: 'Nearest',
                          ),
                          ButtonCategories(
                            icon: MediaRes.iconPromo,
                            title: 'Promos',
                          ),
                          ButtonCategories(
                            icon: MediaRes.iconHealthy,
                            title: 'Healthy',
                          ),
                          ButtonCategories(
                            icon: MediaRes.iconBestSeller,
                            title: 'Best Seller',
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colours.white,
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HomeSection(
                      title: 'Top Rated Restaurant',
                      actionTitle: 'See More',
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    width: 140.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFE6E6E6),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://images.unsplash.com/photo-1635451778386-e5778e66f61e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            width: 140.w,
                            height: 120.h,
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '1.22 km',
                                    style: TypographyStyle.medium.copyWith(
                                      fontSize: 10.sp,
                                      color: Colours.grey8C,
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  Container(
                                    width: 3.w,
                                    height: 3.w,
                                    color: const Color(0xFFD9D9D9),
                                  ),
                                  SizedBox(width: 5.5.w),
                                  Text(
                                    '8 min',
                                    style: TypographyStyle.medium.copyWith(
                                      fontSize: 10.sp,
                                      color: Colours.grey8C,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                'Sushi House, Tangerang City',
                                style: TypographyStyle.bold.copyWith(
                                  fontSize: 12.sp,
                                  color: Colours.black,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    MediaRes.iconStar,
                                    width: 12.w,
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '4.8',
                                    style: TypographyStyle.medium.copyWith(
                                      fontSize: 8.sp,
                                      color: Colours.grey8C,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Container(
                                    width: 3.w,
                                    height: 3.w,
                                    color: const Color(0xFFD9D9D9),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    '100+ Ratings',
                                    style: TypographyStyle.medium.copyWith(
                                      fontSize: 8.sp,
                                      color: Colours.grey8C,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
