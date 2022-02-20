import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'qoute.dart';

class qoute_card extends StatelessWidget {

  final qoute qt;
  final Function() delete;

  qoute_card({required this.qt,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(qt.text),
            const SizedBox(height: 5.0,),
            Text(qt.author),
            TextButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete,color: Colors.red[900],),
              label: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
