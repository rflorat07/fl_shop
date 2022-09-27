import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fl_shop/utility/size_config.dart';

class SocialCard extends StatelessWidget {
  final String icon;
  final VoidCallback press;
  const SocialCard({super.key, required this.icon, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
