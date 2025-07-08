
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimailarBooksListView extends StatelessWidget {
  const SimailarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5,),
          child: CustomBookImage(
            imageUrl: 'https://cdn.create.vista.com/downloads/24aa286d-f016-4cd6-8d53-e74e814e2770_640.jpeg',
          ),
        ),
      ),
    );
  }
}
