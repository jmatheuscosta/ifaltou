import 'package:flutter/material.dart';
import 'package:ifaltou/src/views/register_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
                  Image.asset('assets/images/login_logo.png'),
                ],
              ),
            ),
            // Parte direita da tela
             Expanded(
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(0, 26, 80, 1),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'CPF',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite seu CPF',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'SENHA',
                          labelStyle: TextStyle(fontWeight: FontWeight.w900),
                          hintText: 'Digite sua senha',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                            settings: const RouteSettings(name: '/cadastro'),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.green), // Cor da borda e sombra
                      ),
                      child: const Text('cadastre-se', style: TextStyle(color: Color.fromARGB(255,0,0,0), fontSize: 15)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Fazer login
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      child: const Text('Entrar', style: TextStyle(color: Color.fromARGB(255,255,255,255), fontSize: 35)),
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
