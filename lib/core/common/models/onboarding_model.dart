import 'package:tieats/core/res/media_res.dart';

class OnboardingModel {
  final String media;
  final String title;
  final String subtitle;

  OnboardingModel({
    required this.media,
    required this.title,
    required this.subtitle,
  });
}

List onboardingList = [
  OnboardingModel(
    media: MediaRes.onboarding1Image,
    title: 'Welcome to Tieats!',
    subtitle: 'Where Flavor Meets Your Doorstep',
  ),
  OnboardingModel(
    media: MediaRes.onboarding2Image,
    title: 'Exclusive Offer for New Users',
    subtitle:
        'Enjoy special discounts created just for you. Save big on your favorite meals!',
  ),
  OnboardingModel(
    media: MediaRes.onboarding3Image,
    title: 'Fast and Reliable Delivery',
    subtitle:
        'Your food, delivered quickly and reliably. Hot and fresh, right to your door!',
  ),
];
