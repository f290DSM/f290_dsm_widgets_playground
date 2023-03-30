import 'package:flutter/material.dart';

class ContadorStateless extends StatelessWidget {
  final String title;
  int _counter = 0;

  ContadorStateless({required this.title});

  _increment() {
    _counter++;
    print('Valor atual do contador $_counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          children: [
            Text(
              '$_counter',
            ),
            Text('Voce incrementou $_counter vezes o contador.'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
