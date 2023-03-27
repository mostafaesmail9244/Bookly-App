import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kDetailsView);
        },
        child: Row(
          children: [
            SizedBox(
              height: 100,
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          AssetsData.photo,
                        ),
                      )),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 50.w,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtsectrafine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'j.k.Rowling',
                  style: Styles.textStyle14.copyWith(color: Colors.grey[500]),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const BookRating()
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
