import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/images/startIcon.png',
                  color: Colors.red,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.face,
                    size: 50,
                    color: const Color.fromARGB(255, 0, 255, 191),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Image.network(
              //   'https://images.unsplash.com/photo-1680355466468-bd0a68b11fa0?q=80&w=2630&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              //   width: 50,
              //   height: 50,
              // ),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email, color: Colors.green),
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
                  prefixIcon: Icon(Icons.password, color: Colors.green),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (email == 'a@a.com' && password == '123') {
                    // Rotas automaticas - Depois de nomea-las no app_widget
                    Navigator.of(context).pushReplacementNamed('/home');

                    // Rotas manuais
                    // Navegar e remplacer a tela nao, tera botao voltar
                    /* Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );*/

                    // se eu quero abrir uma nova pagina com o botao voltar
                    /* Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) => HomePage()),
                       );*/
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // O stack é uma forma de pilha que vai empilhar em ordem os componentes de cima para baixo onde o ultimo sera posto por cima de tudo
      body: Stack(
        children: [
          // Container(color: const Color.fromARGB(255, 80, 61, 60)),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          _body(),
        ],
      ),
    );
  }
}
