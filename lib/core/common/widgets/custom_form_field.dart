part of 'widgets.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool? obscureText;
  final VoidCallback? toggleObscure;
  final String? hintText;
  final String label;
  final Widget? prefixIcon;

  const CustomFormField({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.obscureText,
    this.toggleObscure,
    this.hintText,
    required this.label,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TypographyStyle.bold.copyWith(
            fontSize: 12.sp,
            color: Colours.labelForm,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          onTapOutside: (_) {
            FocusScope.of(context).unfocus();
          },
          style: TypographyStyle.semiBold.copyWith(
            fontSize: 14.sp,
            color: Colours.black,
          ),
          obscureText: obscureText ?? false,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          cursorColor: Colours.black,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            hintText: hintText,
            hintStyle: TypographyStyle.semiBold.copyWith(
              fontSize: 14.sp,
              color: Colours.greyDarker,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colours.orange,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colours.borderForm,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colours.borderForm,
              ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: obscureText != null
                ? IconButton(
                    icon: Icon(
                      obscureText == true
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colours.black,
                      size: 24,
                    ),
                    onPressed: toggleObscure,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
