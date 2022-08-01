import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  const TextRoute({Key? key}) : super(key: key);

  static const textStyleDing = TextStyle(fontFamily: "Ding");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础组件 - Text"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello Dart" * 2,
            textAlign: TextAlign.left,
            style: TextStyle(
              background: Paint()..color = Colors.yellow,
              fontSize: 20,
            ),
          ),
          Text(
            "Hello Dart" * 100,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello Dart" * 3,
            textScaleFactor: 3,
            textAlign: TextAlign.end,
          ),
          const Text.rich(TextSpan(children: [
            TextSpan(text: "百度一下，你就知道："),
            TextSpan(
                text: "https://www.baidu.com",
                style: TextStyle(color: Colors.blue))
          ])),
          DefaultTextStyle(
              style: const TextStyle(
                color: Colors.red,
              ),
              child: Row(
                children: const [
                  Text("第1个"),
                  Text("第2个"),
                  Text(
                    "100",
                    style: textStyleDing,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
