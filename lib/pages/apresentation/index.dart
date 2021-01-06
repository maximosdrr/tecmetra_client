import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';
import 'package:tecmetra_cliente/widgets/app-button/index.dart';
import 'package:tecmetra_cliente/widgets/gradient-border-button/index.dart';
import 'package:tecmetra_cliente/widgets/gradient-text/index.dart';

class ApresentationPage extends StatefulWidget {
  ApresentationPage({Key key}) : super(key: key);

  @override
  _ApresentationPageState createState() => _ApresentationPageState();
}

class _ApresentationPageState extends State<ApresentationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/imgs/apresentation-background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "lib/assets/imgs/logo.png",
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Soluções \nEm Telemetria",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 30,
                      ),
                      child: Text(
                        "Com a alta tecnologia, a Tecmetra é líder no mercado de individualização de medidores. Conheça hoje mesmo todas as nossas soluções e comece a economizar no final do mês.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    AppButton(
                      text: "Já tenho uma conta",
                      width: MediaQuery.of(context).size.width * 0.85,
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context, "/login", (route) => false),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 45,
                      child: UnicornOutlineButton(
                        strokeWidth: 2,
                        radius: 10,
                        gradient: LinearGradient(
                          colors: [
                            HexColor.fromHex('#1AC9F4'),
                            HexColor.fromHex('#7D51CD'),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                        ),
                        child: GradientText(
                          "Quero fazer parte",
                          fontSize: 16,
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          "/register",
                          (route) => false,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
