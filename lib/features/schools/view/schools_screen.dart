import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_it_courses/features/schools/model/schools_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SchoolsScreen extends StatefulWidget {
  const SchoolsScreen({
    super.key,
  });

  @override
  State<SchoolsScreen> createState() => _SchoolsScreenState();
}

class _SchoolsScreenState extends State<SchoolsScreen> {
  List<SchoolModel> display_list = List.from(schools_list);

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
              title: const Text(
                'Лучшие школы',
              ),
              leading: SvgPicture.asset(
                "assets/svg/logo.svg",
              ),
            ),
          ),
          SliverList.builder(
            itemCount: display_list.length,
            itemBuilder: (context, index) => Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(10, 0, 0, 0),
                    blurRadius: 13.0,
                  ),
                ],
              ),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 24)
                    .copyWith(bottom: 20),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                    spacing: 0.5,
                    runSpacing: 5.0,
                    children: [
                      SvgPicture.asset(
                        display_list[index].logo!,
                        width: 120,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_half_sharp,
                                    color: Colors.yellow,
                                  ),
                                ],
                              )),
                              SizedBox(
                                width: 5,
                              ),
                              Text('${display_list[index].countReview} отзывов',
                                  style: const TextStyle(
                                    color: Color.fromARGB(118, 0, 0, 0),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.school,
                                    color: Color.fromARGB(255, 187, 187, 187),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                      '${display_list[index].countCourse} курсов',
                                      style: const TextStyle(
                                        color: Color.fromARGB(118, 0, 0, 0),
                                      ))
                                ],
                              ),
                              SizedBox(width: 20),
                              Row(
                                children: [
                                  Icon(
                                    Icons.card_giftcard,
                                    color: Color.fromARGB(255, 187, 187, 187),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                      '${display_list[index].countPromo} акции',
                                      style: const TextStyle(
                                        color: Color.fromARGB(118, 0, 0, 0),
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}
