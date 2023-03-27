import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeaturedLIstViewItem extends StatelessWidget {
  const FeaturedLIstViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Image.asset(
          AssetsData.photo,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
