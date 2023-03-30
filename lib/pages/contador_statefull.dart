import 'package:f290_dsm_widgets_playground/pages/bmi_card_widget.dart';
import 'package:flutter/material.dart';

class ContadorStatefull extends StatefulWidget {
  final String title;

  const ContadorStatefull({required this.title});

  @override
  State<StatefulWidget> createState() => _ContadorStatefullState();
}

class _ContadorStatefullState extends State<ContadorStatefull> {
  int _counter = 0;

  _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
            ),
            Text('Voce incrementou $_counter vezes o contador.'),
            const BmiCard(
              icon: Icons.favorite,
              descricao: 'Favoritar',
            ),
            const BmiCard(
              icon: Icons.adb,
              descricao: 'Android',
            ),
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
