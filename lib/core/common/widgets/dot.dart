part of 'widgets.dart';

class Dot extends StatelessWidget {
  const Dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.h,
      height: 12.h,
      margin: const EdgeInsets.only(right: 8),
      decoration: const BoxDecoration(
        color: Colours.greyLight,
        shape: BoxShape.circle,
      ),
    );
  }
}
