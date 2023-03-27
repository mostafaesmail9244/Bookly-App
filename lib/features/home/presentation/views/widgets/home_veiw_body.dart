import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(height: 30.h, child: const FeaturedBooksListView()),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
