import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageRoute extends StatelessWidget {
  const ImageRoute({Key? key}) : super(key: key);

  final String url =
      "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础组件 - Image"),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage("images/test.png"),
            width: 300,
            fit: BoxFit.cover,
          ),
          Image(image: NetworkImage(url)),
        ],
      ),
    );
  }
}
