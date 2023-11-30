import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tieats/core/common/widgets/widgets.dart';
import 'package:tieats/core/res/colours.dart';
import 'package:tieats/core/res/typography_style.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String myPin = '123456';
  String? currentPin;
  bool isFilled = false;
  final int _seconds = 10;
  late final ValueNotifier<int> _timeNotifier;

  @override
  void initState() {
    _timeNotifier = ValueNotifier<int>(_seconds);
    _startCountdown();
    super.initState();
  }

  void _restartCountdown() {
    _timeNotifier.value = _seconds;
    _startCountdown();
  }

  void _startCountdown() {
    Future.delayed(const Duration(seconds: 1), () {
      if (_timeNotifier.value > 0) {
        _timeNotifier.value = _timeNotifier.value - 1;
        _startCountdown();
      }
    });
  }

  @override
  void dispose() {
    _timeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.white,
      appBar: const AppbarPrimary(title: 'OTP Code'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Text(
              "Enter the OTP code we sent via SMS to your registered phone number +62 81273817293",
              textAlign: TextAlign.left,
              style: TypographyStyle.semiBold.copyWith(
                fontSize: 14,
                color: Colours.greyDarker,
              ),
            ),
            SizedBox(height: 20.h),
            CustomPin(
              onChanged: (value) {
                if (value.length == 6) {
                  isFilled = true;
                  currentPin = value;
                } else {
                  isFilled = false;
                }
                setState(() {});
              },
            ),
            SizedBox(height: 8.h),
            ValueListenableBuilder(
                valueListenable: _timeNotifier,
                builder: (context, remainingSeconds, child) {
                  if (remainingSeconds > 0) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Resend Code ($remainingSeconds)',
                        style: TypographyStyle.bold.copyWith(
                          fontSize: 12,
                          color: Colours.greyDarker,
                        ),
                      ),
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {
                        ToastAlert.showToastSuccessTop(
                          message: 'Sent New OTP Code',
                        );
                        _restartCountdown();
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Resend Code',
                          style: TypographyStyle.bold.copyWith(
                            fontSize: 12,
                            color: Colours.blackLight,
                          ),
                        ),
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ButtonPrimary(
          title: 'Continue',
          type: isFilled ? ButtonPrimaryType.Active : ButtonPrimaryType.Disable,
          onPressed: isFilled
              ? () {
                  if (myPin != currentPin) {
                    ToastAlert.showToastWarningBottom(
                      title: 'Incorrect OTP code',
                      message: 'Plase enter the OTP code again',
                    );
                  }
                }
              : null,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
