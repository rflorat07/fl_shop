import 'package:flutter/material.dart';

import 'package:fl_shop/utility/size_config.dart';
import 'package:fl_shop/screens/splash/components/body_content.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Init SizeConfig
    SizeConfig().init(context);
    return const Scaffold(
      body: BodyComponent(),
    );
  }
}
