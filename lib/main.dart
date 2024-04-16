import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      ),
      home: const MyHomePage(title: 'it.courses'), //базовая страница приложения
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //обновляем state виджета (что и в какой момент нужно перестроить)
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(235, 201, 201, 255),
            Color.fromARGB(255, 255, 255, 255)
          ])),
      child: Scaffold(
        //чаще всего отдельный экран
        ///изменения
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Text(widget.title),
          leading: const Icon(Icons.computer),
        ),
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, i) => const ListTile(
            leading: Icon(Icons.icecream_outlined),
            title: Text('Курс'),
          ),
        ),
      ),
    );
  }
}
