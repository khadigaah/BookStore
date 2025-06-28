import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatefulWidget {
  const FeaturedBookListView({super.key});

  @override
  State<FeaturedBookListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedBookListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: CustomBookImage(),
        ),
      ),
    );
  }
}