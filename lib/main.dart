import 'package:flutter/material.dart';
import 'package:workshop3_122/screen/addfrom.dart';
import 'package:workshop3_122/screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Item(),
        '/add': (context) => const Addfrom(),
      },
    );
  }
}