import 'package:bookly/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .18,
              vertical: 20,
            ),
            child: const CustomBookImage(),
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
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 12),
        const SizedBox(width: 5),
        const Text('4.8', style: Styles.titleSmall16),
        const SizedBox(width: 5),
        const Text('(1234)', style: Styles.titleSmall14),
          ],),
          SizedBox(
            height: 25,
          ),
         const BookAction(),
          SizedBox(
            height: 30,
          ),
         Align(
           alignment: Alignment.centerLeft,
           child: Text('You can also like',
            style: Styles.titleSmall16.copyWith(
            fontWeight: FontWeight.w600),),
         ),
          SizedBox(
            height: 10,
          ),
          const SimailarBooksListView(),
          const SizedBox(height: 5,)
        ],
      ),
    );
  }
}
