import 'package:flutter/material.dart';

class EconomiaPage extends StatelessWidget {
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: Center(
                    child: Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [Colors.blue.shade800, Colors.green.shade700],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'ECONOMIA',
                            style: TextStyle(
                              color: Colors.yellow[100],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 3,
                                  color: Colors.black.withOpacity(0.5),
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                                'Esse pilar fala sobre o desenvolvimento econômico de forma responsável.\n'
                                    'Ou seja, ganhar dinheiro e crescer sem prejudicar o meio ambiente nem explorar as pessoas.\n'
                                    'Exemplos práticos:\n'
                                    '- Empregos com condições justas de trabalho.\n- Apoiar negócios que respeitam a natureza.\n- Incentivar o consumo consciente.\nSe esse pilar não funciona, há crises econômicas, '
                                    'desemprego, exploração do trabalho e desperdício de recursos.'
                                    '\n A economia é um dos fatores que move a humanidade, então é necessário que o progresso econômico não abandone o pensamento sustentável. Sem um lugar para se desenvolver, o desenvolvimento não acontece.'
                                    ' Se algum dia você possuir uma empresa, pense em como o seu produto será descartado, reflita as suas políticas de trabalho para auxiliar no cuidado sustentável. Mesmo sem ter uma empresa, tente sempre promover o comportamento sustentável nas instituições em que você trabalhe e no seu cotidiano.\n\n'
                                    ' Use o seu dinheiro para vitalizar a sociedade e o mundo, criar conexões e ajudar o nosso planeta!',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // volta para a tela anterior
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700],
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 8),
                      Text(
                        'VOLTAR',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}