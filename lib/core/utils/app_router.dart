import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
 static const kHomeView = '/homeView';
 static const kBookDetailsView = '/bookDetailsView';
 static const kSearchViewBody = '/searchViewBody';
 static final router = GoRouter(
  routes:[
      GoRoute(
      path: '/',
      builder: (context,state) =>
        const SplashView()
    ),
      GoRoute(
      path: kHomeView,
      builder: (context,state)
        => const HomeView()

    ),
     GoRoute(
      path: kBookDetailsView,
      builder: (context,state) =>
        const BookDetailsView ()
    ),
     GoRoute(
      path: kSearchViewBody,
      builder: (context,state) =>
        const SearchViewBody ()
    ),
  ],
);
}