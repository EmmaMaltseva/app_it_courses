import 'package:app_it_courses/features/courses/model/course_model.dart';
import 'package:app_it_courses/features/courses/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class CoursesScreen extends StatefulWidget {
  const CoursesScreen({
    super.key,
  });

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  List<CourseModel> display_list = List.from(main_courses_list);
  //функция обновления display_list выводимого списка курсов
  void updateList(String value) {
    setState(() {
      display_list = main_courses_list
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 232, 255),
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(24.0),
            sliver: SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              backgroundColor: Color.fromARGB(255, 232, 232, 255),
              elevation: 0.0,
              surfaceTintColor: Colors.transparent,
              title: Text('it.courses'),
              leading: SvgPicture.asset(
                "assets/svg/logo.svg",
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(81),
                child: Container(
                  margin: EdgeInsets.only(bottom: 12, top: 12),
                  width: double.infinity,
                  child: TextField(
                    onChanged: (value) => updateList(value),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Поиск курса...",
                        prefixIcon: const Icon(Icons.search)),
                  ),
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: display_list.length,
            itemBuilder: (context, index) =>
                CardCourse(display_list: display_list, index: index),
          )
        ]));
  }
}
