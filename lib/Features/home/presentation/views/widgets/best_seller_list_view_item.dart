import 'package:bookly/core/utils/assets.dart';
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
          Column(
            children: [
            ],
          ),
        ],

      ),
    );
  }
}