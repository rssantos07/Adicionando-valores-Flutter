import 'package:flutter/material.dart';
import 'package:projetoaula/pages/home_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula36',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
     
    );
  }
}
