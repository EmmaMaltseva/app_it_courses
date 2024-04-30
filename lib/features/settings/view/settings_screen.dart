import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_it_courses/features/promotions/model/promotion_model.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 232, 255),
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding: EdgeInsets.all(24.0),
            sliver: SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              backgroundColor: Color.fromARGB(255, 232, 232, 255),
              elevation: 0.0,
              surfaceTintColor: Colors.transparent,
              title: Text('Настройки'),
              leading: SvgPicture.asset(
                "assets/svg/logo.svg",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Тёмная тема',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  CupertinoSwitch(
                    value: true,
                    onChanged: (v) {},
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Уведомления',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  CupertinoSwitch(
                    value: true,
                    onChanged: (v) {},
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Разрешить аналитику',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  CupertinoSwitch(
                    value: true,
                    onChanged: (v) {},
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
