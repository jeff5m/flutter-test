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
      theme: ThemeData(
          primaryColor: Colors.purpleAccent,
          scaffoldBackgroundColor: Colors.purple,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.purpleAccent
          )
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Counting: $count",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++count;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
