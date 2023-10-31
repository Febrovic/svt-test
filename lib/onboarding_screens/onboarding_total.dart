import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:sv_test/login/login_screen.dart';
import 'package:sv_test/reusable_widgets/button_without_image.dart';

class OnBoardingTotal extends StatefulWidget {
  const OnBoardingTotal({super.key});

  @override
  State<OnBoardingTotal> createState() => _OnBoardingTotalState();
}

class _OnBoardingTotalState extends State<OnBoardingTotal> {
  PageController? _pageController;
  int currentIndex = 0;

  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/icons8-airplanes-60 1.jpg'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'sv-Test',
                    style: TextStyle(
                      fontFamily: 'Acme',
                      fontWeight: FontWeight.w400,
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 84,
              ),
              SizedBox(
                width: double.infinity,
                height: 100.h,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: onChangedFunction,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: SvgPicture.asset('images/onboarding1.svg'),
                        ),
                        const SizedBox(
                          height: 67,
                        ),
                        const Text(
                          'Welcome to sv-Test',
                          style: TextStyle(
                            fontFamily: 'Acme',
                            fontWeight: FontWeight.w400,
                            fontSize: 30.0,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            'Infrare reavas kroren. Stereofas metrosexualitet amuns. Premuda kontraspektiga. Kuplavönas kaskade. Onde.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              color: Color(0XFFB8C0CB),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: SvgPicture.asset('images/onboarding2.svg'),
                        ),
                        const SizedBox(
                          height: 67,
                        ),
                        const Text(
                          'Smart Test',
                          style: TextStyle(
                            fontFamily: 'Acme',
                            fontWeight: FontWeight.w400,
                            fontSize: 30.0,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            'Infrare reavas kroren. Stereofas metrosexualitet amuns. Premuda kontraspektiga. Kuplavönas kaskade. Onde.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              color: Color(0XFFB8C0CB),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: SvgPicture.asset('images/onboarding3.svg'),
                        ),
                        const SizedBox(
                          height: 67,
                        ),
                        const Text(
                          'Welcome to sv-Test',
                          style: TextStyle(
                            fontFamily: 'Acme',
                            fontWeight: FontWeight.w400,
                            fontSize: 30.0,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            'Infrare reavas kroren. Stereofas metrosexualitet amuns. Premuda kontraspektiga. Kuplavönas kaskade. Onde.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Acme',
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              color: Color(0XFFB8C0CB),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Indicator(
                    positionIndex: 0,
                    currentIndex: currentIndex,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Indicator(
                    positionIndex: 1,
                    currentIndex: currentIndex,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Indicator(
                    positionIndex: 2,
                    currentIndex: currentIndex,
                  ),
                ],
              ),
              const SizedBox(
                height: 63,
              ),
              currentIndex != 2
                  ? Padding(
                      padding:
                          const EdgeInsets.only(right: 25.0, bottom: 160.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const LoginScreen()));
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                fontFamily: 'Acme',
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: ButtonWithoutImage(
                          text: 'Get Started',
                          pressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const LoginScreen()));
                          }),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const Indicator(
      {super.key, required this.currentIndex, required this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          color:
              positionIndex == currentIndex ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
