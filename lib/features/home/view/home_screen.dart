import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const ItCoursesApp());
}

//StatelessWidget - нет своего состояния
//StatefulWidget - есть свое состояние
class ItCoursesApp extends StatelessWidget {
  const ItCoursesApp({super.key});
  @override
  Widget build(BuildContext context) {
    //метод build, чтобы что-то отстроить
    return MaterialApp(
      theme: ThemeData(
          //общие стили для виджетов, например scaffoldBackgroundColor
          primaryColor: const Color.fromRGBO(112, 130, 255, 100),
          useMaterial3: true,
          fontFamily: 'Inter'),
      home: const MyHomePage(), //базовая страница приложения
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(24.0),
            sliver: SliverAppBar(
              leading: SvgPicture.asset(
                'assets/svg/logo.svg',
                height: 38,
              ),
              title: const Text('it.courses'),
              titleTextStyle:
                  const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              surfaceTintColor: Colors.transparent,
              pinned: true,
              snap: true,
              floating: true,
            ),
          ),
          /*const SliverToBoxAdapter(
              child:
                  SizedBox(height: 16)), //расстояние между апбаром и сливерлистом*/
          const SliverToBoxAdapter(
            child: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: SearchButton(), //extract widget строки поиска
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Мои курсы',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverList.builder(
              itemBuilder: (context, index) =>
                  const RhymeListCard() //extract widget карточка рифма с лайком
              )
        ],
      ),
    );
  }
}

//контенер для стилизации карточки истории рифмы и карточки рифмы с лайком
class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
    required this.child,
    required this.width,
    this.margin, //если свойство не нужно везде задавать
    this.padding = const EdgeInsets.only(left: 12),
  });

  final double width;
  final Widget child;
  final EdgeInsets? margin; //если свойство не нужно везде задавать
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: theme.cardColor, borderRadius: BorderRadius.circular(12)),
      child: child,
    );
  }
}

//виджет с карточками рифмы и лайка
class RhymeListCard extends StatelessWidget {
  const RhymeListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            height: 100,
            image: NetworkImage(
                'https://all-events.ru/upload/iblock/a60/it8415tgvka1gch4hvu57k23d4qhllwd.png'),
          ),
          Text('Курс', style: theme.textTheme.bodyMedium),
          IconButton(
              onPressed: () {},
              icon:
                  Icon(Icons.favorite, color: theme.hintColor.withOpacity(0.3)))
        ],
      ),
    );
  }
}

//виджет строки поиска рифмы
class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        width: double.infinity, //во всю ширину
        margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: theme.hintColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey[700],
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Поиск курса...',
              style: TextStyle(
                  fontSize: 16,
                  color: theme.hintColor.withOpacity(0.5),
                  fontWeight: FontWeight.w400),
            ),
          ],
        ));
  }
}
