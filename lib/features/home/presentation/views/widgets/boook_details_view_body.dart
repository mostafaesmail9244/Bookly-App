import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: const [CustomBookDetailsAppBar()],
          ),
        ),
      ),
    );
  }
}