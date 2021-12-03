import 'package:flutter/material.dart';
import 'package:projetoaula/controllers/coracao_controller.dart';

class Coracao extends StatefulWidget {
  @override
  _CoracaoState createState() => _CoracaoState();
}

class _CoracaoState extends State<Coracao> {
  bool favorito = false;
  int quant = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: curtidasController,
        builder: (BuildContext context, Widget? child) {
          return Column(
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    curtidasController.aumentarCoracao(true);
                  },
                  child: Icon(
                    Icons.favorite,
                    color: curtidasController.favorito ? Colors.red : Colors.grey,
                    size: curtidasController.favorito ? 96 : 56,
                  ),
                ),
              ),
              Text('Likes: ${curtidasController.curtidas}'),
            ],
          );
        },
      ),
    );
  }
}
