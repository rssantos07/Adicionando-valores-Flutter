import 'package:flutter/material.dart';
import '/controllers/salario_controller.dart';

class HelpPAge extends StatefulWidget {
  HelpPAge({Key? key}) : super(key: key);

  @override
  _HelpPAgeState createState() => _HelpPAgeState();
}

class _HelpPAgeState extends State<HelpPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: AnimatedBuilder(
        animation: salarioController,
        builder: (BuildContext context, Widget? child) {
          return Container(
            alignment: Alignment.center,
            color: salarioController.salario <= 0 ? Colors.red : Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  salarioController.salario <= 0 ? 'Triste' : 'Feliz',
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (salarioController.salario >= 10000) {
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Voce ja esta feliz'),
                        ),
                      );
                    } else {
                      salarioController.aumentarSalario(10000);
                    }
                  },
                  child: Text('Ficar Feliz'),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    var dialog = AlertDialog(
                      title: Text('Vai trabalhar não pra ver...'),
                      content: Text('Você já tem R\$ ${salarioController.salario}!!!'),
                    );
                    showDialog(context: context, builder: (context) => dialog);
                  },
                  child: Text('Ficar Rico'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
