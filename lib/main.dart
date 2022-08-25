import 'package:flutter/material.dart';
import 'package:frases_do_dia/views/home_page.dart';

void main() {
  runApp(const FrasesDoDia());
}

class FrasesDoDia extends StatelessWidget {
  const FrasesDoDia({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return const MaterialApp(
      title: "Frases do dia",
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
