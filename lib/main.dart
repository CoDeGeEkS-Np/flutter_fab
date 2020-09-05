import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          FloatingActionButton(
            backgroundColor: const Color(0xff03dac6),
            foregroundColor: Colors.black,
            onPressed: () {
              // Respond to button press
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 50,
          ),
          FloatingActionButton(
            backgroundColor: const Color(0xff03dac6),
            foregroundColor: Colors.black,
            mini: true,
            onPressed: () {
              // Respond to button press
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 50,
          ),
          FloatingActionButton.extended(
            backgroundColor: const Color(0xff03dac6),
            foregroundColor: Colors.black,
            onPressed: () {
              // Respond to button press
            },
            icon: Icon(Icons.add),
            label: Text('EXTENDED'),
          ),
        ],
      ),
    );
  }
}
