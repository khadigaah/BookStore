import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatefulWidget {
  const FeaturedBookListView({super.key});

  @override
  State<FeaturedBookListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedBookListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if ( state is FeaturedBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .3,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: state.books.length,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: CustomBookImage(
              imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
            ),
          ),
    ),
  );
} else if(state is FeaturedBooksFailure) {
  return CustomErrorWidget(errMessage: state.errMessage);
} else {
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
