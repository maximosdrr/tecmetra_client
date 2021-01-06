import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/reports/widgets/mouth_dropdown.dart';
import 'package:tecmetra_cliente/pages/reports/widgets/year_dropdown.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';
import 'package:tecmetra_cliente/widgets/gauge_chart/index.dart';

class ReportsPage extends StatefulWidget {
  ReportsPage({Key key}) : super(key: key);

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ContainerFade(
              height: 350,
            ),
            Positioned(
              top: 30,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton.icon(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 32,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Relatorios",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/dashboard',
                        (route) => false,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 15,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90,
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
              top: 510,
              left: 20,
              right: 20,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "De",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Até",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 80,
                                  child: ReportsMouthDropDown(),
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  child: ReportsYearDropDown(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 90,
                                  child: ReportsMouthDropDown(),
                                ),
                                Container(
                                  height: 70,
                                  width: 80,
                                  child: ReportsYearDropDown(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text(
                              "MED.INICIO",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "MED.FINAL",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "CONSUMO",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text("493.112m²"),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("515.855m³"),
                          ),
                          Container(
                            child: Text("22.743"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 750,
            )
          ],
        ),
      ),
    );
  }
}
