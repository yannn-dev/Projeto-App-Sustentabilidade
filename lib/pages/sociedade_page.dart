import 'package:flutter/material.dart';

class SociedadePage extends StatelessWidget {
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
                            'SOCIEDADE',
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
                                'O pilar social trata das pessoas e da qualidade de vida.\nEle busca garantir que todos possuam acesso aos seus direitos\nbásicos, como saúde, educação,'
                                    ' moradia, segurança e respeito.\nExemplos práticos:\n- Garantir educação para todos.\n- Políticas para diminuir a pobreza e a desigualdade.\n'
                                    '- Lutar contra o preconceito e a exclusão.\nQuando esse pilar é esquecido, aumentam os problemas sociais, como fome, violência, falta de acesso a serviços e injustiça.'
                                    ' Esse é um segmento crítico, quando é afetado a frase do filósofo inglês Thomas Hobbes que diz O homem é o lobo do homem, se fundamenta. Nesse caso, ocorre a degradação do desenvolvimento da humanidade. Todos são pessoas, todos  vivem no mesmo planeta, é dever de todos prezar pela boa qualidade de vida dos seres humanos.'
                                    ' A sustentabilidade valoriza a vida não só de um, mas de todos os seres vivos.\n\n Pense em você, pense no coletivo, cuide das pessoas que desse modo, o planeta sorri! ',
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