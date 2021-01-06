import 'package:flutter/material.dart';
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
      body: Stack(
        children: [
          ContainerFade(
            height: 350,
          ),
        ],
      ),
    );
  }
}
