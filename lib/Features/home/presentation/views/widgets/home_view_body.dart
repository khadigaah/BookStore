import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CutomAppBar(),
            ),
            FeaturedBookListView(),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,),
              child: Text('Best Seller', style: Styles.titleMedium),
            ),
            SizedBox(height: 20),
          ],
        )
      ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
