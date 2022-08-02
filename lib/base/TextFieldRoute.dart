import 'package:flutter/material.dart';

class TextFieldRoute extends StatefulWidget {
  const TextFieldRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TextFieldRouteState();
}

class _TextFieldRouteState extends State<TextFieldRoute> {
  final TextEditingController _unameController = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  @override
  void initState() {
    super.initState();
    _unameController.text = "默认用户名";
    _unameController.selection = TextSelection(
        baseOffset: 3, extentOffset: _unameController.text.length);
    _unameController.addListener(() {
      print("用户名输入了：${_unameController.text}");
    });

    focusNode1.addListener(() {
      print("账号输入框焦点变化： ${focusNode1.hasFocus}");
    });

    focusNode2.addListener(() {
      print("密码输入框焦点变化：${focusNode2.hasFocus}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础组件 - TextField"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                controller: _unameController,
                focusNode: focusNode1,
                decoration: const InputDecoration(
                  label: Text("用户名"),
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.lightBlue)),
                ),
              ),
              TextField(
                focusNode: focusNode2,
                decoration: InputDecoration(
                    label: Text("密码"),
                    hintText: "您的登录密码",
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true, // 密码
              ),
              ElevatedButton(
                  onPressed: () {
                    focusScopeNode ??= FocusScope.of(context);
                    if (focusScopeNode?.focusedChild == focusNode1) {
                      focusScopeNode?.requestFocus(focusNode2);
                    } else {
                      focusScopeNode?.requestFocus(focusNode1);
                    }
                  },
                  child: Text("切换焦点")),
              ElevatedButton(
                  onPressed: () {
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                  child: Text("关闭键盘")),
            ],
          ),
        ));
  }
}
