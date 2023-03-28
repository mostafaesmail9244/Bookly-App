import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_book_image.dart';


class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14.h,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: CustomBookImage(),
              )),
    );
  }
}
