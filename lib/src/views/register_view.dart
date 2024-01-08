import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Parte esquerda da tela
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'IFALTOU?',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(0, 26, 80, 1),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Image.asset('assets/images/register_logo.png'),
                ],
              ),
            ),
            // Parte direita da tela
             Expanded(
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      'Cadastro',
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(0, 26, 80, 1),
                      ),
                    ),
                    const TextField(
                        decoration: InputDecoration(
                          labelText: 'NOME:',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite seu nome completo',
                        ),
                      ),
                    const SizedBox(height: 16.0),
                    const TextField(
                        decoration: InputDecoration(
                          labelText: 'CPF:',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite seu CPF',
                        ),
                      ),
                    const SizedBox(height: 16.0),
                    const TextField(
                        decoration: InputDecoration(
                          labelText: 'MATRICULA:',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite sua matricula',
                        ),
                      ),
                    const SizedBox(height: 16.0),
                    const TextField(
                        decoration: InputDecoration(
                          labelText: 'EMAIL:',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite seu email',
                        ),
                      ),
                    const SizedBox(height: 16.0),
                    const TextField(
                        decoration: InputDecoration(
                          labelText: 'TELEFONE:',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite seu telefone',
                        ),
                      ),
                    const SizedBox(height: 16.0),
                    const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'SENHA',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite sua senha',
                        ),
                    ),  
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Fazer register
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      child: const Text('Cadastrar', style: TextStyle(color: Color.fromARGB(255,255,255,255), fontSize: 35)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
