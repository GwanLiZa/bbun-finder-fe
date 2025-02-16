import 'package:auto_route/auto_route.dart';
import 'package:bbun/presentation/pages/onboarding_page.dart';
import 'package:bbun/presentation/pages/profile_edit_page.dart';
import 'package:bbun/presentation/pages/main_page.dart';
import 'package:bbun/presentation/pages/detail_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: '/onboarding', page: OnboardingRoute.page, initial: true),
        AutoRoute(path: '/profile-edit', page: ProfileEditRoute.page),
        AutoRoute(path: '/main', page: MainRoute.page, initial: false),
        AutoRoute(path: '/detail', page: DetailRoute.page, initial: false),
      ];
}
