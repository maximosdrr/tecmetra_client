import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/login/widgets/header/header-button/index.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';

class LoginHeader extends StatefulWidget {
  LoginHeader({Key key}) : super(key: key);

  @override
  _LoginHeaderState createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerFade(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context, "/", (route) => false),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Faça login\npara continuar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: LoginHeaderButton(
                          assetName: "facebook",
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: LoginHeaderButton(
                          assetName: "google",
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
