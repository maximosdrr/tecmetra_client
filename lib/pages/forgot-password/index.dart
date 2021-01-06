import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';
import 'package:tecmetra_cliente/pages/login/widgets/input-area/widgets/text-field/index.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  HexColor.fromHex('#7D51CD'),
                  HexColor.fromHex('#1AC9F4'),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    alignment: Alignment.bottomLeft,
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 32,
                      ),
                      onTap: () => Navigator.pushNamedAndRemoveUntil(
                          context, "/login", (route) => false),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      top: 15,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Esqueceu\nsua senha ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: AppTextField(
                  hintText: "Email",
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 25,
                  left: 10,
                  right: 10,
                ),
                height: 45.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          HexColor.fromHex('#1AC9F4'),
                          HexColor.fromHex('#7D51CD'),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      // constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Redefinir Senha",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
