import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';
import 'package:tecmetra_cliente/utils/default_gradient.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';
import 'package:tecmetra_cliente/widgets/gauge_chart/index.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ContainerFade(
              height: 375,
              borderRadius: 50,
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 28,
                      ),
                      onTap: () => Navigator.pushNamed(context, '/alerts'),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 120,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                height: 390,
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, '/consume'),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            top: 10,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Atualizado em 08/01/2020",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Container(
                          width: 350,
                          height: 350,
                          padding: EdgeInsets.all(25),
                          child: DashboardGaugeChart(
                            consumePerMonth: 20438,
                            bottomNumber: 005513550,
                            percente: 83,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 520,
              left: 20,
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/reports'),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Container(
                        height: 270,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          gradient: defaultGradient(),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(
                                      left: 15,
                                      top: 15,
                                    ),
                                    child: Text(
                                      "Relatórios",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(
                                      left: 15,
                                      top: 5,
                                    ),
                                    child: Text(
                                      "Mensal",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 20,
                                bottom: 20,
                              ),
                              child: Icon(
                                Icons.insert_chart,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamedAndRemoveUntil(
                              (context), '/goals', (route) => false),
                          child: Card(
                            child: Container(
                              height: 130,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                gradient: defaultGradient(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 15,
                                          ),
                                          child: Text(
                                            "Metas",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: EdgeInsets.only(
                                            top: 5,
                                            left: 15,
                                          ),
                                          child: Text(
                                            "3",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      right: 10,
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.ac_unit,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, '/alerts'),
                          child: Card(
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              height: 130,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                gradient: defaultGradient(),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 15),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Alarmes",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.only(top: 5, left: 15),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "0",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      bottom: 10,
                                      right: 10,
                                    ),
                                    child: Icon(
                                      Icons.notifications,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              //Stack height
              height: 830,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.insert_chart_outlined,
                  size: 28,
                  color: HexColor.fromHex("#9a8bb5"),
                ),
                label: Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 16,
                    color: HexColor.fromHex("#9a8bb5"),
                  ),
                ),
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.comment_bank_outlined,
                  size: 28,
                  color: HexColor.fromHex("#9a8bb5"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/profile',
                ),
                icon: Icon(
                  Icons.person_outlined,
                  size: 28,
                  color: HexColor.fromHex("#9a8bb5"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
