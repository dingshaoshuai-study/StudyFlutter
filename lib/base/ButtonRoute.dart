import 'package:flutter/material.dart';

class ButtonRoute extends StatelessWidget {
  const ButtonRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础组件 - Button"),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("点击了按钮");
                  },
                  child: const Text("按钮")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    size: 20,
                  ),
                  label: Text("按钮")),
              TextButton(
                  onPressed: () {
                    print("点击了文本按钮");
                  },
                  child: const Text("文本按钮")),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_sharp),
                  label: const Text("按钮")),
              OutlinedButton(
                  onPressed: () {
                    print("点击了边框按钮");
                  },
                  child: const Text("边框按钮")),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("按钮")),
              IconButton(
                  iconSize: 20,
                  onPressed: () {
                    print("我来点个赞");
                  },
                  icon: const Icon(Icons.thumb_up)),
            ],
          ),
        ));
  }
}
