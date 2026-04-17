import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(title: 'Teste de flutter'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

//
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
    return Container(
      child: GestureDetector(
        child: Text('Contador: $counter'),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
