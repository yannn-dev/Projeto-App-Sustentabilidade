import 'package:flutter/material.dart';
import 'dart:math';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  void initState(){
    super.initState();
    questions.shuffle();
  }
  int currentQuestion = 0;
  int score = 0;
  int? selectedAnswer;
  bool answered = false;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Qual dos itens abaixo é reciclável?',
      'options': ['Papel', 'Restos de comida', 'Bituca de cigarro', 'Espelho'],
      'correct': 0,
    },
    {
      'question': 'O que é sustentabilidade?',
      'options': [
        'Economizar dinheiro',
        'Reduzir impostos',
        'Atender às necessidades atuais sem comprometer o futuro',
        'Aumentar a produção industrial'
      ],
      'correct': 2,
    },
    // Adicione mais perguntas seguindo o mesmo formato
    {
      'question': 'Qual é uma fonte de energia renovável?',
      'options': ['Carvão', 'Petróleo', 'Energia solar', 'Gás natural'],
      'correct': 2,
    },
    {
      'question': 'O que é compostagem?',
      'options': [
        'Misturar lixo comum',
        'Processo de reciclagem de plástico',
        'Transformar resíduos orgânicos em adubo',
        'Queimar resíduos tóxicos'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual dos seguintes é um dos 3 Rs da sustentabilidade?',
      'options': ['Refletir', 'Reduzir', 'Reagir', 'Recompor'],
      'correct': 1,
    },
    {
      'question': 'Como economizar água em casa?',
      'options': [
        'Deixar a torneira aberta',
        'Tomar banhos longos',
        'Consertar vazamentos',
        'Lavar calçadas com mangueira'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual é o principal gás do efeito estufa?',
      'options': ['Oxigênio', 'Hidrogênio', 'Dióxido de carbono (CO2)', 'Nitrogênio'],
      'correct': 2,
    },
    {
      'question': 'Qual prática ajuda na preservação das florestas?',
      'options': [
        'Desmatamento',
        'Uso de papel reciclado',
        'Construção de estradas',
        'Caça ilegal'
      ],
      'correct': 1,
    },
    {
      'question': 'O que fazer com óleo de cozinha usado?',
      'options': [
        'Jogar na pia',
        'Descartar no lixo comum',
        'Guardar e levar para reciclagem',
        'Enterrar no quintal'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual é a melhor atitude ao ver lixo no chão?',
      'options': [
        'Ignorar',
        'Chutar para o lado',
        'Recolher e descartar corretamente',
        'Reclamar nas redes sociais'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual dessas atitudes ajuda a reduzir a pegada de carbono?',
      'options': [
        'Usar carro para curtas distâncias',
        'Comer alimentos ultraprocessados',
        'Consumir produtos locais e sazonais',
        'Deixar aparelhos no modo standby'
      ],
      'correct': 2,
    },
    {
      'question': 'O que significa a sigla ODS, usada pela ONU?',
      'options': [
        'Organização de Desenvolvimento Sustentável',
        'Objetivos de Desenvolvimento Sustentável',
        'Ordem de Direitos Sociais',
        'Observatório de Desenvolvimento Social'
      ],
      'correct': 1,
    },
    {
      'question': 'Qual a melhor forma de descartar pilhas e baterias usadas?',
      'options': [
        'No lixo comum',
        'Enterrar no solo',
        'Levar a pontos de coleta específicos',
        'Jogar no vaso sanitário'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual destes materiais demora mais para se decompor na natureza?',
      'options': [
        'Papel',
        'Plástico',
        'Casca de banana',
        'Pano de algodão'
      ],
      'correct': 1,
    },
    {
      'question': 'Qual o principal objetivo da reciclagem?',
      'options': [
        'Criar novos aterros sanitários',
        'Economizar água',
        'Reduzir a quantidade de resíduos e reaproveitar materiais',
        'Diminuir o uso de internet'
      ],
      'correct': 2,
    },
  ];

  void confirmAnswer() {
    if (selectedAnswer != null && !answered) {
      setState(() {
        answered = true;
        if (selectedAnswer == questions[currentQuestion]['correct']) {
          score++;
        }
      });
    }
  }

  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedAnswer = null;
        answered = false;
      });
    } else {
      // Fim do quiz
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Quiz finalizado!'),
          content: Text('Você acertou $score de ${questions.length} perguntas.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Text('Voltar ao início'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Sustentável'),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Pergunta ${currentQuestion + 1} de ${questions.length}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              question['question'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ...List.generate(question['options'].length, (index) {
              final isSelected = selectedAnswer == index;
              final isCorrect = question['correct'] == index;

              Color getColor() {
                if (!answered) {
                  return isSelected ? Colors.lightGreen : Colors.white;
                } else {
                  if (isCorrect) return Colors.green;
                  if (isSelected && !isCorrect) return Colors.red;
                  return Colors.white;
                }
              }

              return GestureDetector(
                onTap: () {
                  if (!answered) {
                    setState(() {
                      selectedAnswer = index;
                    });
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: getColor(),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    question['options'][index],
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              );
            }),
            SizedBox(height: 20),
            if (!answered)
              ElevatedButton(
                onPressed: confirmAnswer,
                child: Text('Confirmar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            if (answered)
              ElevatedButton(
                onPressed: nextQuestion,
                child: Text('Continuar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
