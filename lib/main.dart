import 'package:flutter/material.dart';
import 'package:journal/views/home_view.dart';

void main() {
  runApp(const Jornal());
}

class Jornal extends StatelessWidget {
  const Jornal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeView(),
    );
  }
}
