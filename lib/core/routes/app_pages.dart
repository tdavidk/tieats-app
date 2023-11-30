part of 'routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreenPage(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingPage(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpPage(),
    ),
  ];
}
