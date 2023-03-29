import 'package:booklyapp/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          SearchResultListView()
        ],
      ),
    );
  }
}
