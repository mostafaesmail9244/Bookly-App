import 'package:booklyapp/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'books_detail_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomBookDetailsAppBar(),
                  ),
                  BooksDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 45,
                    ),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
