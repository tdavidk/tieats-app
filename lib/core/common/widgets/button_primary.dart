part of 'widgets.dart';

// ignore: constant_identifier_names
enum ButtonPrimaryType { Active, Disable }

class ButtonPrimary extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final ButtonPrimaryType type;

  const ButtonPrimary({
    super.key,
    this.width = double.infinity,
    this.height,
    required this.title,
    this.fontSize,
    this.fontWeight = FontWeight.bold,
    this.onPressed,
    this.type = ButtonPrimaryType.Active,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 42.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: type == ButtonPrimaryType.Active
              ? Colours.orange
              : Colours.greyDarker,
          foregroundColor: Colours.white,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize ?? 12.sp,
            fontWeight: fontWeight,
            color: Colours.white,
          ),
        ),
      ),
    );
  }
}
