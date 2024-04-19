import 'package:app_it_courses/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ItCoursesApp());
}

//StatelessWidget - нет своего состояния
//StatefulWidget - есть свое состояние
class ItCoursesApp extends StatefulWidget {
  const ItCoursesApp({super.key});

  @override
  State<ItCoursesApp> createState() => _ItCoursesAppState();
}

class _ItCoursesAppState extends State<ItCoursesApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    //метод build, чтобы что-то отстроить
    return MaterialApp.router(
      title: 'it.courses',
      theme: ThemeData(
          //общие стили для виджетов, например scaffoldBackgroundColor
          primaryColor: const Color.fromARGB(156, 31, 46, 140),
          useMaterial3: true,
          fontFamily: 'Inter'),
      routerConfig: _router.config(),
    );
  }
}
