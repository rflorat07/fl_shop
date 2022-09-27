import 'package:fl_shop/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

import 'package:fl_shop/utility/constants.dart';
import 'package:fl_shop/utility/size_config.dart';

import 'package:fl_shop/components/default_button.dart';
import 'package:fl_shop/screens/splash/components/splash_content.dart';

class BodyComponent extends StatefulWidget {
  const BodyComponent({Key? key}) : super(key: key);

  @override
  State<BodyComponent> createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"]!,
                  text: splashData[index]["text"]!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) =>
                            buildDot(index: index, currentPage: currentPage),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                        text: 'Continue',
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        }),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AnimatedContainer buildDot({required int index, required int currentPage}) {
  return AnimatedContainer(
    duration: kAnimationDuration,
    height: 6,
    width: currentPage == index ? 20 : 6,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
    ),
  );
}
