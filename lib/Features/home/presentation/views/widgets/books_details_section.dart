
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
         Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .18,
              vertical: 20,
            ),
            child: const CustomBookImage(
              imageUrl: '',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.titleSmall30,
          ),
          const SizedBox(
            height: 10,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.titleSmall16.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }
}