import 'package:flutter/material.dart';

import 'custom_buttom.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomButton(
            text: '19.19\$',
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Free preview',
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            backgroundColor: Color(0xffEF8262),
          ),
        ),
      ],
    );
  }
}
