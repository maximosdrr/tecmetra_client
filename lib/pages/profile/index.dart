import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/extensios/hex.dart';
import 'package:tecmetra_cliente/pages/profile/widgets/menu_list_item.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              top: 60,
              left: 20,
              child: Text(
                "Configurações",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
              left: 20,
              right: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Geral",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: ProfileMenuListItem(
                        title: "Editar Perfil",
                        subtitle: "Atualize e modifique seu perfil",
                        icon: Icons.person,
                        onTap: () => Navigator.pushNamed(
                          context,
                          '/edit_profile',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: ProfileMenuListItem(
                        title: "Notificações",
                        subtitle: "Configuração de Notificação",
                        icon: Icons.notifications,
                        onTap: () => Navigator.pushNamed(
                          context,
                          '/edit_notifications',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: ProfileMenuListItem(
                        title: "Termos de uso",
                        subtitle: "Conheça nossos termos",
                        icon: Icons.article,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: ProfileMenuListItem(
                        title: "Sair",
                        subtitle: "Descontectar-se do Tecmetra",
                        icon: Icons.article,
                        onTap: () => Navigator.pushNamedAndRemoveUntil(
                            context, '/login', (route) => false),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 920,
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
              child: IconButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/dashboard', (route) => false),
                icon: Icon(
                  Icons.insert_chart_outlined,
                  size: 28,
                  color: HexColor.fromHex("#9a8bb5"),
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
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  size: 28,
                  color: HexColor.fromHex("#9a8bb5"),
                ),
                label: Text(
                  "Configs.",
                  style: TextStyle(
                    fontSize: 16,
                    color: HexColor.fromHex("#9a8bb5"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
