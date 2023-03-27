import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: FeaturedLIstViewItem(),
            ));
  }
}
