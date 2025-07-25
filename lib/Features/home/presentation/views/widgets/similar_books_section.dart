import 'package:bookly/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.titleMedium.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListview(),
      ],
    );
  }
}
