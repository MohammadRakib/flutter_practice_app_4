import 'package:flutter/material.dart';
import 'qoute.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<qoute> qoute_list = [qoute(text: 'Hello, I am Rakib', author: 'Rakib'),
    qoute(text: 'People have dream', author: 'random'),
    qoute(text: 'Water has no color', author: 'random')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Home',
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[900],
      ),
      body: Column(
        children: qoute_list.map((qoute) => Text('${qoute.text} - ${qoute.author}')).toList(),
      ),
    );
  }
}
