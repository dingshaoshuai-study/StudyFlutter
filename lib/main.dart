import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:study_flutter/BaseUI.dart';
import 'package:study_flutter/Route2.dart';
import 'package:study_flutter/base/ButtonRoute.dart';
import 'package:study_flutter/base/CheckboxRoute.dart';
import 'package:study_flutter/base/ImageRoute.dart';
import 'package:study_flutter/base/TextFieldRoute.dart';
import 'package:study_flutter/base/TextRoute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "page_route2": (context) => const Route2(),
        "BaseUI_route": (context) => const BaseUI(),
        "text_route": (context) => const TextRoute(),
        "button_route": (context) => const ButtonRoute(),
        "image_route": (context) => const ImageRoute(),
        "checkbox_route": (context) => const CheckboxRoute(),
        "text_field_route": (context) => const TextFieldRoute(),
      },
      home: const MyHomePage(title: '我的标题'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String words = "";

  @override
  void initState() {
    super.initState();
    _counter = 1;
    print("initState");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _randomWords() {
    setState(() {
      words = WordPair.random().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "BaseUI_route");
                },
                child: const Text("跳转基础组件界面")),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text("新添加的视图 ${widget.title} $_counter "),
            TextButton(
                // onPressed: () async {
                //   var result = await Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) {
                //             return const Route2();
                //           },
                //           fullscreenDialog: true));
                //   print("返回值：$result");
                // },
                onPressed: () {
                  // Navigator.pushNamed(context, "page_route2",
                  //     arguments: "自定义标题");
                  Navigator.pushNamed(context, "text_route");
                },
                child: const Text("跳转界面")),
            Text("随机字符串：$words")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugDumpRenderTree();
          _incrementCounter();
          _randomWords();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("数字加了：1")),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
