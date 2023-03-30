import 'package:f290_dsm_widgets_playground/pages/contador_statefull.dart';
import 'package:f290_dsm_widgets_playground/pages/contador_stateless.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContadorStatefull(title: 'Flutter Demo Home Page'),
    );
  }
}
