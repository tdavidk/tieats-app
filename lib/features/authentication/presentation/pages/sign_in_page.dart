import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:tieats/core/common/widgets/widgets.dart';
import 'package:tieats/core/res/colours.dart';
import 'package:tieats/core/res/media_res.dart';
import 'package:tieats/core/res/typography_style.dart';
import 'package:tieats/core/routes/routes.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;

  toggleObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              SvgPicture.asset(
                MediaRes.iconLogo,
                width: 138.w,
                color: Colours.orange,
              ),
              SizedBox(height: 20.h),
              Text(
                'Sign In to Continue',
                style: TypographyStyle.extraBold.copyWith(
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Welcome to Tieats where flavor\nmeets your doorstep',
                textAlign: TextAlign.center,
                style: TypographyStyle.extraBold.copyWith(
                  fontSize: 14.sp,
                  color: Colours.greyDarker,
                ),
              ),
              SizedBox(height: 20.h),
              CustomFormField(
                controller: emailController,
                label: 'Email',
                hintText: 'e.g. david@gmail.com',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    MediaRes.iconEmail,
                    width: 24.w,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              CustomFormField(
                controller: passwordController,
                label: 'Password',
                hintText: 'Masukkan password',
                toggleObscure: toggleObscure,
                obscureText: _obscureText,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 24.h),
              ButtonPrimary(
                title: 'Continue',
                onPressed: () {
                  Get.toNamed(Routes.OTP);
                },
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TypographyStyle.regular.copyWith(
                      fontSize: 12,
                      color: Colours.greyDarker,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.REGISTER);
                    },
                    child: Text(
                      'Sign up',
                      style: TypographyStyle.regular.copyWith(
                        fontSize: 12,
                        color: Colours.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
