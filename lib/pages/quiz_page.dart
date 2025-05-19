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
    allQuestions.shuffle();
    questions = allQuestions.take(10).toList();
  }
  int currentQuestion = 0;
  int score = 0;
  int? selectedAnswer;
  bool answered = false;

  final List<Map<String, dynamic>> allQuestions = [
    {
      'question': 'Qual é a função das áreas verdes nas cidades?',
      'options': [
        'Servir como estacionamento',
        'Reduzir a temperatura e melhorar a qualidade do ar',
        'Espantar animais silvestres',
        'Aumentar o valor dos imóveis'
      ],
      'correct': 1,
    },
    {
      'question': 'O que são energias limpas?',
      'options': [
        'Fontes de energia com pouca emissão de poluentes',
        'Energia usada apenas em hospitais',
        'Energia gerada por combustíveis fósseis',
        'Energia com cheiro agradável'
      ],
      'correct': 0,
    },
    {
      'question': 'Qual dessas ações é considerada um exemplo de justiça social?',
      'options': [
        'Acesso igualitário à educação e saúde',
        'Cobrança maior de impostos para todos',
        'Privatização de recursos naturais',
        'Redução de salários mínimos'
      ],
      'correct': 0,
    },
    {
      'question': 'O que é o aquecimento global?',
      'options': [
        'Resfriamento das calotas polares',
        'Aumento da temperatura média da Terra causado pela emissão de gases',
        'Fenômeno natural das marés',
        'Explosões solares que atingem a Terra'
      ],
      'correct': 1,
    },
    {
      'question': 'Qual material é mais difícil de ser reciclado?',
      'options': [
        'Alumínio',
        'Vidro',
        'Plástico tipo filme (sacolas finas)',
        'Papelão'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual das alternativas é uma consequência da poluição dos rios?',
      'options': [
        'Aumento da biodiversidade',
        'Melhoria da qualidade da água',
        'Desaparecimento de espécies aquáticas',
        'Expansão da agricultura sustentável'
      ],
      'correct': 2,
    },
    {
      'question': 'O que significa biodiversidade?',
      'options': [
        'Conjunto de espécies diferentes que vivem em um ecossistema',
        'Áreas urbanas bem planejadas',
        'Plantas exóticas de jardim',
        'Cultivo de uma única espécie'
      ],
      'correct': 0,
    },
    {
      'question': 'Qual das ações abaixo é um exemplo de reutilização?',
      'options': [
        'Separar papel para reciclagem',
        'Usar um pote de sorvete como recipiente para guardar alimentos',
        'Jogar pilhas usadas no lixo comum',
        'Compostar folhas secas'
      ],
      'correct': 1,
    },
    {
      'question': 'A que se refere o pilar social da sustentabilidade?',
      'options': [
        'À preservação da fauna',
        'Ao equilíbrio das contas públicas',
        'Ao bem-estar das pessoas e comunidades',
        'À reciclagem de materiais orgânicos'
      ],
      'correct': 2,
    },
    {
      'question': 'Como a energia eólica é gerada?',
      'options': [
        'Através da queima de carvão',
        'Pela movimentação das águas dos rios',
        'Pelo calor do sol',
        'Pelo movimento do vento em turbinas'
      ],
      'correct': 3,
    },
    {
      'question': 'O que é coleta seletiva?',
      'options': [
        'Separar o lixo em reciclável e orgânico',
        'Coletar o lixo em dias alternados',
        'Recolher apenas restos de comida',
        'Queimar o lixo para reaproveitamento'
      ],
      'correct': 0,
    },
    {
      'question': 'Qual é a cor da lixeira destinada ao papel?',
      'options': [
        'Azul',
        'Verde',
        'Amarela',
        'Vermelha'
      ],
      'correct': 0,
    },
    {
      'question': 'Qual o principal gás responsável pelo efeito estufa?',
      'options': [
        'Oxigênio',
        'Gás carbônico (CO2)',
        'Hidrogênio',
        'Gás hélio'
      ],
      'correct': 1,
    },
    {
      'question': 'Qual desses hábitos ajuda a economizar água?',
      'options': [
        'Lavar calçadas com mangueira',
        'Tomar banhos longos',
        'Usar vassoura ao invés de água para limpeza externa',
        'Deixar a torneira aberta ao escovar os dentes'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual dessas fontes de energia é renovável?',
      'options': [
        'Carvão mineral',
        'Petróleo',
        'Energia solar',
        'Gás natural'
      ],
      'correct': 2,
    },
    {
      'question': 'O que significa consumo consciente?',
      'options': [
        'Comprar sempre o mais barato',
        'Evitar promoções',
        'Avaliar os impactos sociais e ambientais antes de comprar',
        'Não comprar produtos reciclados'
      ],
      'correct': 2,
    },
    {
      'question': 'A compostagem transforma resíduos orgânicos em:',
      'options': [
        'Energia elétrica',
        'Adubo natural',
        'Gás carbônico',
        'Plástico reciclado'
      ],
      'correct': 1,
    },
    {
      'question': 'O que é pegada ecológica?',
      'options': [
        'Marca de um animal no solo',
        'Consumo de recursos naturais por uma pessoa ou população',
        'Pegada deixada em trilhas de ecoturismo',
        'Tamanho de áreas protegidas em um país'
      ],
      'correct': 1,
    },
    {
      'question': 'Qual dessas ações ajuda na preservação das florestas?',
      'options': [
        'Queimadas controladas',
        'Desmatamento seletivo',
        'Reflorestamento com espécies nativas',
        'Construção de grandes barragens'
      ],
      'correct': 2,
    },
    {
      'question': 'O que são os 3 R’s da sustentabilidade?',
      'options': [
        'Reduzir, Reciclar e Reutilizar',
        'Recuperar, Renovar e Recarregar',
        'Respeitar, Redefinir e Reaproveitar',
        'Resfriar, Reciclar e Reduzir'
      ],
      'correct': 0,
    },
    {
      'question': 'Qual a importância da biodiversidade para o planeta?',
      'options': [
        'Gera lucros para empresas farmacêuticas',
        'Aumenta a beleza natural dos parques',
        'Mantém o equilíbrio dos ecossistemas',
        'Reduz a necessidade de reciclagem'
      ],
      'correct': 2,
    },
    {
      'question': 'O que são ecopontos?',
      'options': [
        'Locais de lazer ecológicos',
        'Áreas de proteção ambiental',
        'Pontos de coleta de resíduos recicláveis e especiais',
        'Espaços para plantio comunitário'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual desses hábitos reduz a produção de lixo?',
      'options': [
        'Usar produtos descartáveis',
        'Evitar o uso de sacolas plásticas',
        'Comprar itens com muitas embalagens',
        'Trocar itens em bom estado por novos'
      ],
      'correct': 1,
    },
    {
      'question': 'Por que é importante economizar energia elétrica?',
      'options': [
        'Para reduzir a conta de luz apenas',
        'Para evitar o aquecimento da água',
        'Para diminuir o impacto ambiental e preservar recursos',
        'Para não sobrecarregar a rede de TV'
      ],
      'correct': 2,
    },
    {
      'question': 'O que significa “desenvolvimento sustentável”?',
      'options': [
        'Aumentar a produção industrial sem limites',
        'Reduzir a população mundial',
        'Desenvolver-se respeitando os limites dos recursos naturais',
        'Usar somente energia elétrica'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual é uma prática sustentável na agricultura?',
      'options': [
        'Uso intensivo de agrotóxicos',
        'Monocultura extensiva',
        'Rotação de culturas',
        'Queimada de pasto'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual o impacto do plástico nos oceanos?',
      'options': [
        'Ajuda a alimentar os peixes',
        'Forma recifes artificiais úteis',
        'Polui a água e prejudica a vida marinha',
        'Ajuda na oxigenação da água'
      ],
      'correct': 2,
    },
    {
      'question': 'Qual dessas atitudes ajuda na mobilidade sustentável?',
      'options': [
        'Usar carro individual para tudo',
        'Incentivar o transporte coletivo e o uso de bicicletas',
        'Proibir ciclovias',
        'Construir mais estacionamentos'
      ],
      'correct': 1,
    },
    {
      'question': 'Por que devemos evitar o desperdício de alimentos?',
      'options': [
        'Porque ocupa espaço na geladeira',
        'Para economizar e respeitar os recursos naturais',
        'Para reduzir o peso do lixo',
        'Porque estraga o sabor dos pratos'
      ],
      'correct': 1,
    },
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

  late List<Map<String, dynamic>> questions;

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
        title: Text('Quiz Sustentável', style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
