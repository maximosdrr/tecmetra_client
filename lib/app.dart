import 'package:flutter/material.dart';

import 'router.dart';

class TecmetraApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tecmetra',
      initialRoute: '/',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        platform: TargetPlatform.iOS,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
