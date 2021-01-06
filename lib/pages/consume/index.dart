import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';
import 'package:tecmetra_cliente/pages/consume/widgets/custom_row_button.dart';
import 'package:tecmetra_cliente/pages/consume/widgets/custom_row_text.dart';
import 'package:tecmetra_cliente/utils/default_gradient.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';
import 'package:tecmetra_cliente/widgets/gauge_chart/index.dart';

class ConsumePage extends StatefulWidget {
  ConsumePage({Key key}) : super(key: key);

  @override
  _ConsumePageState createState() => _ConsumePageState();
}

class _ConsumePageState extends State<ConsumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ContainerFade(
              height: 370,
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
                        "Consumo",
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
              top: 500,
              left: 25,
              right: 25,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      color: HexColor.fromHex('#DFE7F5'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ConsumeCustomRowText(
                            text: '0',
                          ),
                          ConsumeCustomRowText(
                            text: '0',
                          ),
                          ConsumeCustomRowText(
                            text: '5',
                          ),
                          ConsumeCustomRowText(
                            text: '1',
                          ),
                          ConsumeCustomRowText(
                            text: '3',
                          ),
                          ConsumeCustomRowText(
                            text: '5',
                          ),
                          ConsumeCustomRowText(
                            text: '5',
                          ),
                          ConsumeCustomRowText(
                            text: '0',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Consumo",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ConsumeCustomRowButton(
                              text: 'Dez',
                              onPressed: () {},
                              isActive: true,
                            ),
                            ConsumeCustomRowButton(
                              text: 'Nov',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Out',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Set',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Ago',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Jul',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Jun',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Mai',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Abr',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Mar',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Fev',
                              onPressed: () {},
                            ),
                            ConsumeCustomRowButton(
                              text: 'Jan',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20,
                      ),
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Consumo Total",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Total consumido no mês referente",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 15,
                            ),
                          ),
                          Container(
                            height: 30,
                            padding: EdgeInsets.only(
                              right: 10,
                            ),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              gradient: defaultGradient(),
                            ),
                            alignment: Alignment.centerRight,
                            child: Text(
                              "24.354m³",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 850,
            )
          ],
        ),
      ),
    );
  }
}
