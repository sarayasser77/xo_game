import 'package:flutter/material.dart' ;

import 'login_xo.dart';
void main ( ) {
  runApp(MyApp()) ;
}


class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
        home:login()
    );
  }
}