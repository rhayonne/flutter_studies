import 'package:flutter/material.dart';

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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home  Page'),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        // quando se single render,deve se inserir o alinhamento para renderizar o quadrado dentro do outro se nao ele vai sobrepor um sobre o outro
        child: Center(
          child: Container(height: 50, width: 50, color: Colors.amber),
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
