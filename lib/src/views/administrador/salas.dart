import 'package:flutter/material.dart';
import 'package:ifaltou/src/views/administrador/main.dart';

void main() {
  runApp(const Salas());
}

class Salas extends StatelessWidget {
  const Salas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ifaltou?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(77, 167, 104, 1)),
      ),
      home: const SalasPage(),
    );
  }
}

class SalasPage extends StatefulWidget {
  const SalasPage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SalasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ifaltou?',
              style: TextStyle(
                color: Color.fromRGBO(77, 167, 104, 1),
                fontSize: 45,
                fontWeight: FontWeight.bold,
              )),
          actions: [
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Home',
              iconSize: 40,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyAppADM()));
              },
            ),
            const SizedBox(width: 30),
            IconButton(
              icon: const Text("Salas",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 25)),
              //icon: const Icon(Icons.door_back_door_outlined ),
              tooltip: 'Salas',
              iconSize: 40,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Salas()));
              },
            ),
            const SizedBox(width: 30),
            IconButton(
              icon: const Text("Turmas",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 25)),
              //icon: const Icon(Icons.account_circle_outlined),
              tooltip: 'Turmas',
              iconSize: 40,
              onPressed: () {},
            ),
            const SizedBox(width: 30),
            IconButton(
              icon: const Text("Professores",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 25)),
              //icon: const Icon(Icons.account_circle_outlined),
              tooltip: 'Professores',
              iconSize: 40,
              onPressed: () {},
            ),
            const SizedBox(width: 30),
            IconButton(
              icon: const Text("Alunos",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 25)),
              //icon: const Icon(Icons.account_circle_outlined),
              tooltip: 'Alunos',
              iconSize: 40,
              onPressed: () {},
            ),
            const SizedBox(width: 30),
            Padding(
              padding: const EdgeInsets.only(
                  right: 50), // ajuste o valor de acordo com suas necessidades
              child: Ink(
                decoration: ShapeDecoration(
                  color: const Color.fromRGBO(77, 167, 104, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: FittedBox(
                  child: IconButton(
                    tooltip: 'Loggout',
                    //icon: const Icon(Icons.login),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    icon: const Text("Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25)),
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
              const SizedBox(height: 60),
              Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 100), // Espaço adicionado à esquerda
                      child: Text(
                        'Salas Cadastradas',
                        style: TextStyle(fontSize: 45),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () {
                        print('Botão pressionado!');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(77, 167, 104, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Cadastrar sala',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                ],
              ),
              const Divider(),
              const SizedBox(height: 30), // Espaço adicionado

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200, // Largura máxima
                          maxHeight: 240, // Altura máxima
                        ),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.3), // Cor e opacidade da sombra
                              spreadRadius:
                                  2, // Quão distante a sombra se espalha
                              blurRadius: 5, // Quão desfocada a sombra é
                              offset: const Offset(0,3), // Deslocamento da sombra (horizontal, vertical)
                            ),
                          ],
                          color: const Color.fromARGB(255, 188, 227, 200),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        //padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Borda arredondada para a imagem
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Lab 1',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a primeira ação
                                      print('Ação 1');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(77, 167, 104, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Editar',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a segunda ação
                                      print('Ação 2');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 242, 32, 32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Excluir',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200, // Largura máxima
                          maxHeight: 240, // Altura máxima
                        ),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 188, 227, 200),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        //padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Borda arredondada para a imagem
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Lab 1',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a primeira ação
                                      print('Ação 1');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(77, 167, 104, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Editar',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a segunda ação
                                      print('Ação 2');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 242, 32, 32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Excluir',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200, // Largura máxima
                          maxHeight: 240, // Altura máxima
                        ),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 188, 227, 200),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        //padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Borda arredondada para a imagem
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Lab 1',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a primeira ação
                                      print('Ação 1');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(77, 167, 104, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Editar',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a segunda ação
                                      print('Ação 2');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 242, 32, 32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Excluir',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200, // Largura máxima
                          maxHeight: 240, // Altura máxima
                        ),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 188, 227, 200),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        //padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Borda arredondada para a imagem
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Lab 1',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a primeira ação
                                      print('Ação 1');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(77, 167, 104, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Editar',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a segunda ação
                                      print('Ação 2');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 242, 32, 32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Excluir',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200, // Largura máxima
                          maxHeight: 240, // Altura máxima
                        ),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 188, 227, 200),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        //padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Borda arredondada para a imagem
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Lab 1',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a primeira ação
                                      print('Ação 1');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(77, 167, 104, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Editar',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a segunda ação
                                      print('Ação 2');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 242, 32, 32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Excluir',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200, // Largura máxima
                          maxHeight: 240, // Altura máxima
                        ),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 188, 227, 200),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        //padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Borda arredondada para a imagem
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                'Lab 1',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a primeira ação
                                      print('Ação 1');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(77, 167, 104, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Editar',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  TextButton(
                                    onPressed: () {
                                      // Lógica para a segunda ação
                                      print('Ação 2');
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 242, 32, 32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      'Excluir',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //C1

                  // Adicione mais itens abaixo conforme necessário
                ],
              ),
            ],
          ),
        ));
  }
}
