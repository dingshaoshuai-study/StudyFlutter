import 'package:flutter/material.dart';

class ProgressRoute extends StatefulWidget {
  const ProgressRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProgressRouteState();
}

class _ProgressRouteState extends State<ProgressRoute>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础组件 - Progress"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: const [
              LinearProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
                value: 0.5,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.yellow),
                value: 0.5,
              ),
              SizedBox(
                height: 20,
                width: 100,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation(Colors.yellow),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation(Colors.yellow),
                  strokeWidth: 20,
                ),
              ),
              SizedBox(
                width: 120,
                height: 80,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation(Colors.yellow),
                ),
              ),
            ],
          ),
        ));
  }
}
