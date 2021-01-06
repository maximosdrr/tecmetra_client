import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/login/widgets/footer/index.dart';
import 'package:tecmetra_cliente/pages/login/widgets/header/index.dart';
import 'package:tecmetra_cliente/pages/login/widgets/input-area/index.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginHeader(),
            LoginInputArea(),
            LoginFooter(),
          ],
        ),
      ),
    );
  }
}
