import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly/core/utils/service_loctaor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: Scaffold(
       body: const HomeViewBody(),
      ),
    );
  }
}