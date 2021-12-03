import 'package:flutter/material.dart';
import 'package:projetoaula/pages/coracao_page.dart';
import '/controllers/salario_controller.dart';
import '/pages/help_page.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HelpPAge(),
                )),
            icon: Icon(Icons.help),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Meu App',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'monospace',
                  )),
              decoration: BoxDecoration(),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Curtidas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Coracao(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.monetization_on, size: 72, color: Colors.green),
          AnimatedBuilder(
            animation: salarioController,
            builder: (BuildContext context, Widget? child) {
              return Text(
                'R\$ ${salarioController.salario}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(
                child: Row(
                  children: [
                    Icon(Icons.arrow_downward),
                    Icon(Icons.monetization_on_outlined),
                  ],
                ),
                onPressed: () {
                  salarioController.diminuirSalario(100);
                },
              ),
              OutlinedButton(
                child: Row(
                  children: [
                    Icon(Icons.arrow_upward),
                    Icon(Icons.monetization_on_outlined),
                  ],
                ),
                onPressed: () {
                  salarioController.aumentarSalario(200);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
