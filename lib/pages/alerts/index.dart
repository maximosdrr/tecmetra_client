import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/alerts/widgets/alert_item.dart';
import 'package:tecmetra_cliente/utils/default_gradient.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';

class AlertsPage extends StatefulWidget {
  AlertsPage({Key key}) : super(key: key);

  @override
  _AlertsPageState createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  final tableHeadTextStyle = TextStyle(
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerFade(
              height: 120,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton.icon(
                      label: Text(
                        "Alarmes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                gradient: defaultGradient(),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 37,
                    child: Text(
                      "Bloco",
                      style: tableHeadTextStyle,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Imovel",
                      style: tableHeadTextStyle,
                    ),
                  ),
                  Text(
                    "Grandeza",
                    style: tableHeadTextStyle,
                  ),
                  Text(
                    "Medidor",
                    style: tableHeadTextStyle,
                  ),
                  Text(
                    "Leitura",
                    style: tableHeadTextStyle,
                  ),
                ],
              ),
            ),
            AlarmeItem(),
            AlarmeItem(),
            AlarmeItem(),
          ],
        ),
      ),
    );
  }
}
