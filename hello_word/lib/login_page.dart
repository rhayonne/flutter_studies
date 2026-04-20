import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Para que o teclado na tela nao corte o botao, devemos usar o SingleChildScrollView, se nao for possivel usar o listview. ## importante, usar o Scaffold
      // como é nesse caso que nao é uma lista mas sim uma simples pagina de login
      body: SingleChildScrollView(
        child: SizedBox(
          // quando usamos o SingleChildScrollView, nao podemos usar double.infinity no width entao, usamos o context
          width: MediaQuery.of(
            context,
          ).size.width, //ele esta buscando no contexto o tamanho da tela
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'a@a.com' && password == '123') {
                      print('Correto');
                    } else {
                      print('Login ou senha errados');
                    }
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
