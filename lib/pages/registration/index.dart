import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/login/widgets/input-area/widgets/text-field/index.dart';
import 'package:tecmetra_cliente/widgets/app-button/index.dart';
import 'package:tecmetra_cliente/widgets/container-fade/index.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerFade(
              height: 200,
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 15,
                        left: 15,
                      ),
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
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Cadastre-se\nPara Continuar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  AppTextField(
                    hintText: "Nome",
                  ),
                  AppTextField(
                    hintText: "CPF",
                  ),
                  AppTextField(
                    hintText: "Email",
                  ),
                  AppTextField(
                    hintText: "Como quer ser chamado ?",
                  ),
                  AppTextField(
                    hintText: "Telefone",
                  ),
                  AppTextField(
                    hintText: "Senha",
                  ),
                  AppTextField(
                    hintText: "Confirmar Senha",
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    child: AppButton(
                      width: MediaQuery.of(context).size.width * 0.8,
                      text: "Cadastrar",
                      onPressed: () {
                        // print("Cadastrou");
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: InkWell(
                      child: RichText(
                        text: TextSpan(
                          text: 'Já tem uma conta?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Entre agora',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      onTap: () => Navigator.pushNamedAndRemoveUntil(
                          context, "/login", (route) => false),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
