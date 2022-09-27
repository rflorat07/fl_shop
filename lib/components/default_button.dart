import 'package:flutter/material.dart';

import 'package:fl_shop/utility/constants.dart';
import 'package:fl_shop/utility/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const DefaultButton({super.key, required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor)),
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(18))),
      ),
    );
  }
}
