import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,
      child: Row(
        children: [
        AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsInfo.book4,)
              )
              ),
          ),
        ),
        const SizedBox(width: 25,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
            width: MediaQuery.of(context).size.width*.5,
            child:Text('Harry Potter and the Goblet of Fire.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.titleMedium,),
            ),
            const SizedBox(
              height: 1,),
              Text('J.K. Rowling',
              style: Styles.titleSmall,
              ),
            BookRating(),
         ] ),
        ],
          ),
      );
  }
}