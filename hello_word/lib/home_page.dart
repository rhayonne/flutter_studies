import 'package:flutter/material.dart';
import 'package:hello_word/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage> {
  @override
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final String emailLogin =
        (ModalRoute.of(context)?.settings.arguments as String?) ?? 'Email';
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              //para colocar como oval, so precisamos usar o ClipOval, nesse caso usamos o ClipRRect para demonstrar que se pode usar essa widget em outros lugares também.
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40), //arredondar
                child: Image.network(
                  'https://plus.unsplash.com/premium_vector-1719858611039-66c134efa74d?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
              accountName: Text('Rhay'),
              accountEmail: Text(emailLogin),
            ),
            ListTile(
              title: Text('Inicio'),
              subtitle: Text('Tela de inicio'),
              leading: Icon(Icons.home),
              onTap: () => {print('home')},
            ),
            ListTile(
              title: Text('Logout'),
              subtitle: Text('Sair'),
              leading: Icon(Icons.logout),
              onTap: () => {Navigator.of(context).pushReplacementNamed('/')},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home  Page'),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        actions: [CustomSwitcher()],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Container(height: 10),
            CustomSwitcher(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changTheme();
      },
    );
  }
}
