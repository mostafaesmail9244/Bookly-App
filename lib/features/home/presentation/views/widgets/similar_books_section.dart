import 'package:booklyapp/features/home/presentation/views/widgets/similar_bbooks_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'You can also like',
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 12,
            ),
            SimilarBooksListview()
          ],
        ));
  }
}
