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
              Row(
                children: [
                Text('19.99 €',
                style: Styles.titleSmall16.copyWith(fontWeight: FontWeight.bold)
                ,),
                const SizedBox(width: 100,),
                  const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                  ),
                  const Text('4.8',
                  style: Styles.titleSmall16,),
                  const SizedBox(width: 5,),
                  const Text('(1234)',
                  style: Styles.titleSmall14,)
                ],
              )
         ] ),
        ],
          ),
      );
  }
}