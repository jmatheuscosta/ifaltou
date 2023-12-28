import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ifaltou?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(77,167,104, 1)),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ifaltou?', style: TextStyle(color: Color.fromRGBO(77,167,104, 1), fontSize: 45, fontWeight: FontWeight.bold,)),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'Home',
            iconSize: 40,
            onPressed: () {},
          ),
          const SizedBox(width: 30),
          IconButton(
            icon: Text("Salas Abertas", style: TextStyle(color: const Color.fromARGB(255, 0, 0,0), fontSize: 25)),
            //icon: const Icon(Icons.door_back_door_outlined ),
            tooltip: 'Salas Abertas',
            iconSize: 40,
            onPressed: () {},
          ),
          const SizedBox(width: 30),
          IconButton(
            icon: Text("Perfil", style: TextStyle(color: const Color.fromARGB(255, 0, 0,0), fontSize: 25)),
            //icon: const Icon(Icons.account_circle_outlined),
            tooltip: 'Perfil',
            iconSize: 40,
            onPressed: () {},
          ),
          const SizedBox(width: 30),
          Padding(
            padding: const EdgeInsets.only(right: 50), // ajuste o valor de acordo com suas necessidades
            child: Ink(
              decoration: ShapeDecoration(
                color: const Color.fromRGBO(77,167,104, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: FittedBox(
                child: IconButton(
                  tooltip: 'Login',
                  //icon: const Icon(Icons.login),                
                  color: const Color.fromARGB(255,255,255,255),
                  icon: Text("Login", style: TextStyle(color: const Color.fromARGB(255,255,255,255), fontSize: 25)),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 100), // Espaço adicionado à esquerda
                    child: Text(
                      'IFaltou?',
                      style: TextStyle(fontSize: 128),
                    ),
                  ),
                ),
                Container(
                  width: 700, // Largura da imagem
                  height: 600,
                  padding: const EdgeInsets.only(right: 100),
                  child: Image.asset('assets/images/logo.png'),
                ),
              ],
            ),
            const SizedBox(height: 30), // Espaço adicionado
            const Padding(
              padding: EdgeInsets.only(left: 30), // Espaço adicionado à esquerda
              child: Text(
                'O IFaltou? é um sistema projetado para simplificar o controle de presença e frequência de alunos em instituições de ensino. Seu objetivo principal é tornar o acompanhamento da presença mais eficiente e acessível tanto para alunos quanto para professores.',
                style: TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(height: 30), // Espaço adicionado
            const Padding(
              padding: EdgeInsets.only(left: 30), // Espaço adicionado à esquerda
              child: Text(
                'Com o IFaltou?, alunos e professores podem registrar e monitorar facilmente a presença em suas aulas, tornando simples para os estudantes acompanharem sua própria frequência e para os professores gerenciarem a presença em suas turmas.',
                style: TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(height: 30), // Espaço adicionado
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 30), // Espaço adicionado à esquerda
              child: Text(
                'Este sistema oferece uma maneira conveniente e eficaz de manter o controle de presença, resultando em um ambiente educacional mais organizado. Os alunos podem acompanhar seu desempenho de forma transparente, enquanto os professores podem manter registros precisos.',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      )  
    );
  }
}
