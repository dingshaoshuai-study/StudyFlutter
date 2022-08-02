import 'package:flutter/material.dart';

class FormRoute extends StatefulWidget {
  const FormRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FormRouteState();
}

class _FormRouteState extends State<FormRoute> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础组件 - Form"),
      ),
      body: Form(
        key: _formKey, // 设置 GlobalKey，用于后面获取 FormState
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              controller: _unameController,
              decoration: const InputDecoration(
                label: Text("用户名"),
                hintText: "用户名或邮箱",
                icon: Icon(Icons.person),
              ),
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "用户名不能为空";
              },
            ),
            TextFormField(
              controller: _pwdController,
              decoration: const InputDecoration(
                label: Text("密码"),
                hintText: "您的登录密码",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (v) {
                return v!.trim().length > 5 ? null : "密码不能少于6位";
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if ((_formKey.currentState as FormState).validate()) {
                    print("去登录了");
                  }
                },
                child: const Text("登录")),
            Expanded(child: Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    var formState = Form.of(context);
                    if (formState == null) return;
                    if (formState.validate()) {
                      print("第二个来登录了");
                    }
                  },
                  child: const Text("第二个登录"));
            }))
          ],
        ),
      ),
    );
  }
}
