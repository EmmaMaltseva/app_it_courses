import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'it.courses'),
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
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Мои курсы',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  )),
              Text('Рекомендуем для тебя',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  )),
              Card(
                  color: Colors.white,
                  elevation: 0.06,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            color: Colors.white,
                            child: Image.network(
                                "https://digital-academy.ru/foto/school/skypro-2.png"),
                          ),
                          Text('Профессия разработчик на Python')
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
