import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/edit-notifications/widgets/switch_item.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';

class EditNotificationPage extends StatefulWidget {
  EditNotificationPage({Key key}) : super(key: key);

  @override
  _EditNotificationPageState createState() => _EditNotificationPageState();
}

class _EditNotificationPageState extends State<EditNotificationPage> {
  bool _1switchValue = false;
  bool _2switchValue = false;
  bool _3switchValue = false;
  bool _4switchValue = false;
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
              top: 40,
              child: FlatButton.icon(
                label: Text(
                  "Configurações",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/profile',
                  (route) => false,
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 10,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 16,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "lib/assets/imgs/profile_picture.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Text(
                          "Joás Muniz",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 5,
                        ),
                        child: Text(
                          "AP 1802, Rua Poeta João",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 445,
              left: 10,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        "Geral",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: EditNotificationSwitchItem(
                        title: "Alarme via push",
                        subtitle: "Receber notificações no celular",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: EditNotificationSwitchItem(
                        title: "Aviso sobre metas",
                        subtitle: "Receba aviso sobre suas metas",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: EditNotificationSwitchItem(
                        title: "Notificações sobre dicas",
                        subtitle: "Receba novas dicas sobre o uso",
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
