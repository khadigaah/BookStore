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
        const SizedBox(width: 30,),
          Column(
            children: [
            SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
            child:Text('Harry Potter and the Goblet of Fire.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.titleMedium,)),
              Text('J.K Rowling',style: Styles.titleSmall,),
        ],
        ),
        ],
          ),
      );
  }
}