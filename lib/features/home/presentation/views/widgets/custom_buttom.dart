import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.borderRadius,
      this.backgroundColor,
      this.textColor});
  final String text;
  final BorderRadius borderRadius;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor ?? Colors.white,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: kSegoeUi),
          )),
    );
  }
}
