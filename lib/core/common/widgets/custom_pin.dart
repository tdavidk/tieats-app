part of 'widgets.dart';

class CustomPin extends StatelessWidget {
  final Function(String)? onCompleted;
  final Function(String)? onChanged;

  const CustomPin({
    super.key,
    this.onCompleted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      keyboardType: TextInputType.number,
      onCompleted: onCompleted,
      onChanged: onChanged,
      defaultPinTheme: PinTheme(
        height: 48.w,
        width: 48.w,
        textStyle:
            TypographyStyle.bold.copyWith(fontSize: 20, color: Colours.orange),
        decoration: BoxDecoration(
          color: Colours.fillPinForm,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colours.borderPinForm),
        ),
      ),
      errorPinTheme: PinTheme(
        height: 48.w,
        width: 48.w,
        textStyle:
            TypographyStyle.bold.copyWith(fontSize: 20, color: Colours.orange),
        decoration: BoxDecoration(
          color: Colours.fillFocusPinForm,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colours.orange),
        ),
      ),
      focusedPinTheme: PinTheme(
        height: 48.w,
        width: 48.w,
        textStyle:
            TypographyStyle.bold.copyWith(fontSize: 20, color: Colours.orange),
        decoration: BoxDecoration(
          color: Colours.fillFocusPinForm,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colours.orange),
        ),
      ),
      submittedPinTheme: PinTheme(
        height: 48.w,
        width: 48.w,
        textStyle: TypographyStyle.bold.copyWith(
          fontSize: 20.sp,
          color: Colours.orange,
        ),
        decoration: BoxDecoration(
          color: Colours.fillFocusPinForm,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colours.orange),
        ),
      ),
    );
  }
}
