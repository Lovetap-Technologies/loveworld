import 'package:flutter/material.dart';
import 'package:loveworld/components/constants.dart';
import 'package:loveworld/components/raw_material_button.dart';
import 'package:loveworld/screens/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;
  List<String> onBoardingText = [
    'We’re Young! but our love for the Lord Jesus Never runs dry.',
    'We’re full of the praise of our Lord and there is no stopping us.',
    'We’re the Pastor Chris Generation. Prepared for these last days. Full of faith!',
  ];
  List<String> onBoardingHeaderText = ['Be Ablaze', '', ''];
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Stack(
          children: [
            PageView.builder(
              itemCount: 3,
              physics: const AlwaysScrollableScrollPhysics(),
              onPageChanged: (value) => setState(() {
                isLastPage = value == 2;
                index = value;
              }),
              controller: controller,
              itemBuilder: (context, index) => Container(
                height: double.infinity,
                width: double.infinity,
                foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit:
                      mediaquery.size.width < 600 ? BoxFit.cover : BoxFit.cover,
                  image: AssetImage("assets/onboard_${index + 1}.png"),
                )),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 40,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isLastPage
                      ? const SizedBox.shrink()
                      : ElevatedButton(
                          onPressed: () {
                            controller.animateToPage(
                              2,
                              duration: const Duration(
                                seconds: 1,
                              ),
                              curve: Curves.fastOutSlowIn,
                            );
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 90,
                horizontal: 30,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 30,
                                  ),
                                  child: SmoothPageIndicator(
                                    onDotClicked: (index) =>
                                        controller.animateToPage(
                                      index,
                                      duration: const Duration(
                                        seconds: 1,
                                      ),
                                      curve: Curves.easeInOut,
                                    ),
                                    controller: controller,
                                    count: 3,
                                    effect: const ExpandingDotsEffect(
                                      activeDotColor: Color(0xFF2F80ED),
                                      dotColor: Colors.white,
                                      spacing: 5,
                                      offset: 8,
                                      expansionFactor: 2,
                                      dotHeight: 10,
                                      dotWidth: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          rawMaterialButton(
                            isLastPage
                                ? () async {
                                    final prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.setBool(
                                      'showHome',
                                      true,
                                    );
                                    // ignore: use_build_context_synchronously
                                    Navigator.pushNamed(
                                      context,
                                      WelcomeScreen.id,
                                    );
                                  }
                                : () {
                                    controller.nextPage(
                                      duration: const Duration(
                                        seconds: 1,
                                      ),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                            isLastPage
                                ? const Text(
                                    'Get Started',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                    ),
                                  )
                                : const Text(
                                    'Next',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                            kcyanbutton,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          onBoardingHeaderText[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: mediaquery.size.height * 0.1,
                          left: 10,
                          right: 10,
                        ),
                        child: Text(
                          onBoardingText[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
