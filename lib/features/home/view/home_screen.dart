import 'package:app_it_courses/router/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
      routes: const [
        CoursesRoute(),
        PromotionRoute(),
        SchoolsRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.hintColor,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Курсы'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.percent), label: 'Акции'),
              BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Школы'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Настройки'),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
