part of 'widgets.dart';

class ActiveDot extends StatelessWidget {
  const ActiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 12.h,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colours.orange,
        borderRadius: BorderRadius.circular(200),
      ),
    );
  }
}
