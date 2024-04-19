import 'package:app_it_courses/features/courses/model/course_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class CoursesScreen extends StatefulWidget {
  const CoursesScreen({
    super.key,
  });

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  static List<CourseModel> main_courses_list = [
    CourseModel(
        "Профессия разработчик на Python",
        "assets/svg/skypro.svg",
        'онлайн вебинары',
        '10 месяцев',
        '4 часа в неделю',
        137900,
        'https://sky.pro/courses/programming/python-web-course-video'),
    CourseModel(
        "Профессия разработчик на Python",
        "assets/svg/geekbrains.svg",
        'онлайн вебинары',
        '10 месяцев',
        '4 часа в неделю',
        137900,
        'https://sky.pro/courses/programming/python-web-course-video'),
    CourseModel(
        "Профессия разработчик на Python",
        "assets/svg/skillbox.svg",
        'онлайн вебинары',
        '10 месяцев',
        '4 часа в неделю',
        137900,
        'https://sky.pro/courses/programming/python-web-course-video'),
    CourseModel(
        "Умная разработчик на Python",
        "assets/svg/skillfactorysvg.svg",
        'онлайн вебинары',
        '10 месяцев',
        '4 часа в неделю',
        137900,
        'https://sky.pro/courses/programming/python-web-course-video'),
    CourseModel(
        "Профессия разработчик на Python",
        "assets/svg/skypro.svg",
        'онлайн вебинары',
        '10 месяцев',
        '4 часа в неделю',
        137900,
        'https://sky.pro/courses/programming/python-web-course-video'),
  ];

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
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 232, 232, 255),
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Мои курсы",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
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
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: display_list.length == 0
                    ? const Center(
                        child: Text("Результат не найден",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal)),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      display_list[index].logo!,
                                      width: 100,
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          display_list[index].title!,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text('Формат: '),
                                        Text(
                                          '${display_list[index].format!}',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Длительность: '),
                                        Text(
                                          '${display_list[index].dlitelnost!}',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Интенсивность: '),
                                        Text(
                                          '${display_list[index].intensivnost!}',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Стоимость: '),
                                        Text(
                                          '${display_list[index].price!}',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.arrow_circle_right_outlined,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "На сайт",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 130, 112, 255),
                                        elevation: 0,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
              )
            ],
          ),
        ));
  }
}

/*Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 180, 199, 254),
                Color.fromARGB(255, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
      ),*/
