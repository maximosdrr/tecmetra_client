import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';
import 'package:tecmetra_cliente/pages/login/widgets/input-area/widgets/text-field/index.dart';

class LoginInputArea extends StatefulWidget {
  LoginInputArea({Key key}) : super(key: key);

  @override
  _LoginInputAreaState createState() => _LoginInputAreaState();
}

class _LoginInputAreaState extends State<LoginInputArea> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            child: AppTextField(
              hintText: "Email",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: AppTextField(
              hintText: "Senha",
              obscureText: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: CircularCheckBox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: checkBoxValue,
                        onChanged: (value) {
                          setState(() {
                            checkBoxValue = !checkBoxValue;
                            print(checkBoxValue);
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text("Lembre-se de mim"),
                    )
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Esqueceu a senha ?",
                    style: TextStyle(
                      color: HexColor.fromHex("#0047CC"),
                    ),
                  ),
                ),
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, "/forgot_password", (route) => false),
              )
            ],
          ),
        ],
      ),
    );
  }
}
