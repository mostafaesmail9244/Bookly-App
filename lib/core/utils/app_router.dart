import 'package:booklyapp/features/home/presentation/views/book_details_view.dart';
import 'package:booklyapp/features/home/presentation/views/home_viewd.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static final rout = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kDetailsView,
      builder: (context, state) => const BookDetailView(),
    ),
  ]);
}
