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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home  Page'),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changTheme();
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
