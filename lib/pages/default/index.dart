import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  final RouteSettings settings;
  const DefaultPage({Key key, this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Sem rota para: ${settings.name}',
        ),
      ),
    );
  }
}
