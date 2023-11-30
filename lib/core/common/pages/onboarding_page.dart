part of 'pages.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  bool isScrolling = false;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    MediaRes.iconLogoWithText,
                    width: 123.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.REGISTER);
                    },
                    child: Text(
                      'Skip',
                      style: TypographyStyle.bold.copyWith(
                        fontSize: 16.sp,
                        color: Colours.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 380.h,
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 37.5),
                          child: SvgPicture.asset(
                            onboardingList[index].media,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          onboardingList[index].title,
                          style: TypographyStyle.extraBold.copyWith(
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: Text(
                            onboardingList[index].subtitle,
                            textAlign: TextAlign.center,
                            style: TypographyStyle.semiBold.copyWith(
                              fontSize: 14.sp,
                              color: Colours.greyDarker,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildDots(),
                  currentPage == onboardingList.length - 1
                      ? ButtonPrimary(
                          width: 140.w,
                          title: 'Create Account',
                          onPressed: () {
                            Get.offAllNamed(Routes.REGISTER);
                          },
                        )
                      : GestureDetector(
                          onTap: () {
                            final nexPage =
                                (_pageController.page?.toInt() ?? 0) + 1;

                            _pageController.animateToPage(
                              nexPage,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeOut,
                            );
                          },
                          child: Container(
                            width: 44.w,
                            height: 44.w,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colours.orange,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              MediaRes.iconArrowRight,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingList.length,
        (index) => currentPage == index ? const ActiveDot() : const Dot(),
      ),
    );
  }
}
