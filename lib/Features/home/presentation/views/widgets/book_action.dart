import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:  CustomBotton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),
            topLeft: Radius.circular(16)),
            title: '19.99 €',),
          ),
          Expanded(child: CustomBotton(
            backgroundColor: kBottonColor,
            textColor: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(16),
            bottomRight: Radius.circular(16)),
            title: 'Free Preview',),
          )
]);  }
}