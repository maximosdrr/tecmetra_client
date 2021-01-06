import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/widgets/app-button/index.dart';

class LoginFooter extends StatefulWidget {
  LoginFooter({Key key}) : super(key: key);

  @override
  _LoginFooterState createState() => _LoginFooterState();
}

class _LoginFooterState extends State<LoginFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppButton(
            text: "Entrar",
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, "/dashboard", (route) => false),
            width: MediaQuery.of(context).size.width * 0.85,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 15, bottom: 30),
              child: RichText(
                text: TextSpan(
                  text: 'Não tem uma conta ?',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Cadastre-se',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              "/register",
              (route) => false,
            ),
          )
        ],
      ),
    );
  }
}
