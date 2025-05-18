import 'package:flutter/material.dart';
import 'package:trabalho_semestral_equipetango/pages/inicial_page.dart';
import 'package:trabalho_semestral_equipetango/pages/treinamento_sustentavel_page.dart';

class CreditosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'TREINAMENTO SUSTENTÁVEL\nUnisagrado',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Expanded(
                  child: Center(
                    child: Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.green],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'CRÉDITOS\nDesenvolvedores:\nFilipe Pereira Ferraz\nKaique Rabesco Valverde\nRafaela Sanchez\nOrientador:\nDr. Prof. Elvio Gilverto da Silva',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.yellow[100],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: 30),
                          Image.asset(
                            'assets/images/Ciencia_da_Computacao.jpg',
                            width: 250,
                          ),
                          Image.asset(
                            'assets/images/coordenadoria-de-extensao.jpg',
                            width: 250,
                          ),
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TreinamentoSustentavelPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[700],
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'CONTINUAR',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_right_alt),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}