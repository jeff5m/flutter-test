import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Meu primeiro texto",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ));
  }
}
