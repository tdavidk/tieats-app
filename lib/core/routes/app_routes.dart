// ignore_for_file: constant_identifier_names
part of 'routes.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const REGISTER = _Paths.REGISTER;
  static const SIGN_IN = _Paths.SIGN_IN;
  static const OTP = _Paths.OTP;
}

abstract class _Paths {
  static const SPLASH = '/splash';
  static const ONBOARDING = '/onboarding';
  static const REGISTER = '/register';
  static const SIGN_IN = '/sign-in';
  static const OTP = '/otp';
}
