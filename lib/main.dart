import 'package:flutter/material.dart';
import 'package:trabalho_semestral_equipetango/pages/entrada_page.dart';
import 'package:trabalho_semestral_equipetango/pages/treinamento_sustentavel_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Treinamento Sustentável',
      home: TelaTreinamento(),
      debugShowCheckedModeBanner: false,
    );
  }
}