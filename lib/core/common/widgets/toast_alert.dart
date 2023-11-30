part of 'widgets.dart';

class ToastAlert {
  const ToastAlert._();

  static void showToastWarningBottom(
      {required String title, required String message}) {
    Get.showSnackbar(
      GetSnackBar(
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.transparent,
        messageText: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colours.failedColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TypographyStyle.bold.copyWith(
                  color: Colours.white,
                ),
              ),
              Text(
                message,
                style: TypographyStyle.bold.copyWith(
                  color: Colours.greyLight,
                ),
              ),
            ],
          ),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  static void showToastSuccessTop({required String message}) {
    Get.showSnackbar(
      GetSnackBar(
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.transparent,
        messageText: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colours.successColor,
          ),
          child: Text(
            message,
            style: TypographyStyle.bold.copyWith(
              color: Colours.white,
            ),
          ),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // static showDialogConfirmation(
  //   BuildContext context, {
  //   required String title,
  //   required String subtitle,
  //   required String buttonTitle,
  //   required VoidCallback onPressed,
  // }) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(24),
  //         topRight: Radius.circular(24),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return StatefulBuilder(builder: (context, setState) {
  //         return Container(
  //           decoration: const BoxDecoration(
  //             color: Colours.grey7,
  //             borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(12),
  //               topRight: Radius.circular(12),
  //             ),
  //           ),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.only(
  //                   left: 24,
  //                   top: 22,
  //                 ),
  //                 child: Text(
  //                   title,
  //                   style: TypographyStyle.subheadingLarge.copyWith(
  //                     color: Colours.black,
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 12),
  //               const Divider(
  //                 thickness: 4,
  //                 color: Colours.grey8,
  //               ),
  //               const SizedBox(height: 16),
  //               Theme(
  //                 data: ThemeData(
  //                   unselectedWidgetColor: const Color(0xff979797),
  //                 ),
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(left: 24, right: 24),
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Text(
  //                         subtitle,
  //                         style: TypographyStyle.bodySmall
  //                             .copyWith(color: Colours.black),
  //                       ),
  //                       const SizedBox(height: 16),
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Expanded(
  //                             child: Padding(
  //                               padding:
  //                                   const EdgeInsets.symmetric(horizontal: 10),
  //                               child: OutlineButton(
  //                                 title: 'Kembali',
  //                                 onPressed: () {
  //                                   Get.back();
  //                                 },
  //                               ),
  //                             ),
  //                           ),
  //                           Expanded(
  //                             child: Padding(
  //                               padding:
  //                                   const EdgeInsets.symmetric(horizontal: 10),
  //                               child: ButtonPrimary(
  //                                 title: buttonTitle,
  //                                 onPressed: onPressed,
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                       const SizedBox(height: 20),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  //     },
  //   );
  // }

  // static showFilterDialog(
  //   BuildContext context, {
  //   String sort = 'asc',
  //   String ascTitle = 'Urutkan berdasarkan abjad A-Z',
  //   String descTitle = 'Urutkan berdasarkan abjad Z-A',
  //   required VoidCallback onPressed,
  //   void Function(String?)? onChanged,
  // }) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(24),
  //         topRight: Radius.circular(24),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return StatefulBuilder(builder: (context, setState) {
  //         return Container(
  //           decoration: const BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(24),
  //               topRight: Radius.circular(24),
  //             ),
  //           ),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.only(
  //                   left: 16,
  //                   top: 16,
  //                   bottom: 8,
  //                 ),
  //                 child: Text(
  //                   'Filter',
  //                   style: TypographyStyle.subheadingLarge.copyWith(
  //                     color: Colours.black,
  //                   ),
  //                 ),
  //               ),
  //               const Divider(
  //                 thickness: 4,
  //                 color: Colours.grey8,
  //               ),
  //               const SizedBox(height: 16),
  //               Theme(
  //                 data: ThemeData(
  //                   unselectedWidgetColor: const Color(0xff979797),
  //                 ),
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(left: 10, right: 10),
  //                   child: Column(
  //                     children: [
  //                       RadioListTile(
  //                         title: Text(
  //                           ascTitle,
  //                           style: TypographyStyle.subheadingSmall
  //                               .copyWith(color: Colours.grey2),
  //                         ),
  //                         activeColor: Colours.red,
  //                         controlAffinity: ListTileControlAffinity.trailing,
  //                         value: "asc",
  //                         groupValue: sort,
  //                         onChanged: onChanged,
  //                       ),
  //                       RadioListTile(
  //                         title: Text(
  //                           descTitle,
  //                           style: TypographyStyle.subheadingSmall
  //                               .copyWith(color: Colours.grey2),
  //                         ),
  //                         activeColor: Colours.red,
  //                         controlAffinity: ListTileControlAffinity.trailing,
  //                         value: "desc",
  //                         groupValue: sort,
  //                         onChanged: onChanged,
  //                         // onChanged: (value) {
  //                         //   setState(() {
  //                         //     sort = value.toString();
  //                         //   });
  //                         // },
  //                       ),
  //                       const SizedBox(height: 16),
  //                       Padding(
  //                         padding: const EdgeInsets.symmetric(horizontal: 10),
  //                         child: ButtonPrimary(
  //                           title: 'Terapkan',
  //                           onPressed: onPressed,
  //                         ),
  //                       ),
  //                       const SizedBox(height: 16),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  //     },
  //   );
  // }
}
