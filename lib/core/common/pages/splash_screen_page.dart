part of 'pages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  startSplashScreen() {
    var duration = const Duration(seconds: 2);

    return Timer(
      duration,
      () {
        // ! Routing to onboarding page
        Get.offAllNamed(Routes.ONBOARDING);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.orange,
      body: Center(
        child: SvgPicture.asset(
          MediaRes.iconLogo,
          width: 218.w,
        ),
      ),
    );
  }
}
