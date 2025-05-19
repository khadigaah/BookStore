import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 €',
          style: Styles.titleSmall16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 100),
        const Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 12),
        const SizedBox(width: 5),
        const Text('4.8', style: Styles.titleSmall16),
        const SizedBox(width: 5),
        const Text('(1234)', style: Styles.titleSmall14),
      ],
    );
  }
}
