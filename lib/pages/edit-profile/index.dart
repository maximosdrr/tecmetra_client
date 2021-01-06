import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/login/widgets/input-area/widgets/text-field/index.dart';
import 'package:tecmetra_cliente/widgets/app-button/index.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  double _1slideValue = 0;
  double _2slideValue = 0;
  double _3slideValue = 0;
  double _4slideValue = 0;
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
              child: FlatButton.icon(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 28,
                ),
                label: Text(
                  "Editar Perfil",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/profile',
                  (route) => false,
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 10,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 810,
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
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: AppTextField(
                          hintText: 'Nome',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: AppTextField(
                          hintText: 'Senha',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          obscureText: true,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                            ),
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Quantidade de pessoas Residentes",
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                              left: 5,
                            ),
                            child: Slider(
                              value: _1slideValue,
                              onChanged: (value) {
                                setState(() {
                                  _1slideValue = value;
                                });
                              },
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
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Quantidade de Banheiros",
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                              left: 5,
                            ),
                            child: Slider(
                              value: _2slideValue,
                              onChanged: (value) {
                                setState(() {
                                  _2slideValue = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Quantidade de quartos",
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Slider(
                          value: _3slideValue,
                          onChanged: (value) {
                            setState(() {
                              _3slideValue = value;
                            });
                          },
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
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Faixa etária de idade dos moradores",
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          left: 5,
                        ),
                        child: Slider(
                          value: _4slideValue,
                          onChanged: (value) {
                            setState(() {
                              _4slideValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        child: AppButton(
                          width: MediaQuery.of(context).size.width,
                          text: 'Salvar',
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 950,
            )
          ],
        ),
      ),
    );
  }
}
