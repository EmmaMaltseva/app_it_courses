import 'package:app_it_courses/features/courses/model/course_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        "https://i0.wp.com/junilearning.com/wp-content/uploads/2020/06/python-programming-language.webp?fit=1920%2C1920&ssl=1",
        137900),
    CourseModel(
        "Профессия разработчик на Python",
        "https://blog.skillfactory.ru/wp-content/uploads/2023/07/img_1303.png",
        137900),
    CourseModel(
        "Профессия разработчик на Python",
        "https://blog.skillfactory.ru/wp-content/uploads/2023/07/img_1303.png",
        137900),
    CourseModel(
        "Умная разработчик на Python",
        "https://blog.skillfactory.ru/wp-content/uploads/2023/07/img_1303.png",
        137900),
    CourseModel(
        "Профессия разработчик на Python",
        "https://blog.skillfactory.ru/wp-content/uploads/2023/07/img_1303.png",
        137900),
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
                          child: Column(
                            children: [
                              Text(
                                display_list[index].title!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 15),
                              ),
                              Text(
                                '${display_list[index].price!}',
                                style: TextStyle(fontSize: 13),
                              ),
                              SizedBox(
                                height: 200.0,
                                width: 200.0, // fixed width and height
                                child: Image.network(display_list[index].url!,
                                    height: 200, fit: BoxFit.fill),
                              )
                            ],
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
