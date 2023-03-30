import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  const BmiCard({super.key, required this.icon, required this.descricao});
  final IconData icon;
  final String descricao;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 100),
            Text(descricao, style: const TextStyle(fontSize: 32)),
          ],
        ),
      ),
    );
  }
}