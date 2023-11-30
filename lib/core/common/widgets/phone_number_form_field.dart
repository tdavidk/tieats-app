part of 'widgets.dart';

class PhoneNumberFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final String? hintText;
  final String label;

  const PhoneNumberFormField({
    super.key,
    required this.controller,
    this.textInputAction = TextInputAction.next,
    this.hintText,
    required this.label,
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
        IntlPhoneField(
          dropdownIconPosition: IconPosition.trailing,
          dropdownIcon: const Icon(Icons.keyboard_arrow_down_rounded),
          pickerDialogStyle: PickerDialogStyle(
            backgroundColor: Colours.white,
            searchFieldCursorColor: Colours.black,
            searchFieldInputDecoration: InputDecoration(
              labelText: 'Search country',
              labelStyle: TypographyStyle.semiBold.copyWith(
                color: Colours.black,
              ),
            ),
          ),
          controller: controller,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          disableLengthCheck: false,
          style: TypographyStyle.semiBold.copyWith(
            fontSize: 14.sp,
            color: Colours.black,
          ),
          decoration: InputDecoration(
            counterText: '',
            hintText: hintText,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
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
          ),
          initialCountryCode: 'ID',
          onChanged: (value) {},
        ),
      ],
    );
  }
}
