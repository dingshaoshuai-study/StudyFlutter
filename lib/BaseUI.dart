import 'package:flutter/material.dart';

class BaseUI extends StatelessWidget {
  const BaseUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础组件"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "text_route");
                  },
                  child: const Text("跳转 - Text")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "button_route");
                  },
                  child: const Text("跳转 - Button")),
            ],
          ),
        ));
  }
}
