import 'package:bookly/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const[
      CustomSearchTextField(),
      SizedBox(height: 16,),
      Text('Search Result', style: Styles.titleMedium,),
      SizedBox(height: 16,),
      Expanded(child: SearchResultListView()),
    ],),
    );
  }
}
