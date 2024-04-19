import 'package:app_it_courses/features/courses/courses.dart';
import 'package:app_it_courses/features/home/home.dart';
import 'package:app_it_courses/features/promotions/promotions.dart';
import 'package:app_it_courses/features/schools/schools.dart';
import 'package:app_it_courses/features/settings/settings.dart';
import 'package:auto_route/auto_route.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyHomeRoute.page, path: '/', children: [
          AutoRoute(
            page: CoursesRoute.page,
            path: 'courses',
          ),
          AutoRoute(
            page: PromotionRoute.page,
            path: 'promotions',
          ),
          AutoRoute(
            page: SchoolsRoute.page,
            path: 'schools',
          ),
          AutoRoute(
            page: SettingsRoute.page,
            path: 'settings',
          ),
        ]),
      ];
}
