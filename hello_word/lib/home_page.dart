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
      appBar: AppBar(title: Text('Home  Page')),

      body: Center(
        child: GestureDetector(
          child: Text('Contador: $counter', style: TextStyle(fontSize: 20)),
          onTap: () {
            setState(() {
              counter++;
            });
          },
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
