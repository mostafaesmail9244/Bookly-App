import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/similar_bbooks_list_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'books_actions.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomBookDetailsAppBar(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text('The Jungle Book', style: Styles.textStyle30),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'montserrat',
                  color: Colors.white.withOpacity(0.60),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 38),
              child: BooksAction(),
            ),
            const SizedBox(
              height: 42,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'You can also like',
                  style: Styles.textStyle14,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SimilarBooksListview()
          ],
        ),
      ),
    );
  }
}
